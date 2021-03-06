/*    ==Parâmetros de Script==

    Versão do Servidor de Origem : SQL Server 2016 (13.0.4224)
    Edição do Mecanismo de Banco de Dados de Origem : Microsoft SQL Server Express Edition
    Tipo do Mecanismo de Banco de Dados de Origem : SQL Server Autônomo

    Versão do Servidor de Destino : SQL Server 2017
    Edição de Mecanismo de Banco de Dados de Destino : Microsoft SQL Server Standard Edition
    Tipo de Mecanismo de Banco de Dados de Destino : SQL Server Autônomo
*/
USE [InteracoesMedicamentosas]
GO
/****** Object:  Table [dbo].[Interacoes]    Script Date: 04/07/2019 22:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Interacoes](
	[interacaoId] [int] IDENTITY(1,1) NOT NULL,
	[medicamento1Id] [int] NOT NULL,
	[medicamento2Id] [int] NOT NULL,
	[reacao] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Interacoes] PRIMARY KEY CLUSTERED 
(
	[interacaoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Medicamentos]    Script Date: 04/07/2019 22:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Medicamentos](
	[medicamentoId] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](30) NOT NULL,
	[descricao] [varchar](250) NULL,
 CONSTRAINT [PK_Medicamentos] PRIMARY KEY CLUSTERED 
(
	[medicamentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Interacoes] ON 

INSERT [dbo].[Interacoes] ([interacaoId], [medicamento1Id], [medicamento2Id], [reacao]) VALUES (1, 1, 2, N'O ácido acetilsalicílico pode diminuir a ação anti-hipertensiva do captopril')
INSERT [dbo].[Interacoes] ([interacaoId], [medicamento1Id], [medicamento2Id], [reacao]) VALUES (2, 1, 3, N'O AAS pode aumentar a ação hipoglicemiante da insulina')
INSERT [dbo].[Interacoes] ([interacaoId], [medicamento1Id], [medicamento2Id], [reacao]) VALUES (3, 4, 5, N'O inibidores da monoamina oxidase (tratamento da depressão) associada à tiramina (tyros = queijo) pode promover crises hipertensivas e hemorragia intracraniana')
INSERT [dbo].[Interacoes] ([interacaoId], [medicamento1Id], [medicamento2Id], [reacao]) VALUES (4, 6, 7, N'O omeprazol usado com fenobarbital (anticonvulsivante) pode potencializar a ação do barbitúrico')
INSERT [dbo].[Interacoes] ([interacaoId], [medicamento1Id], [medicamento2Id], [reacao]) VALUES (5, 8, 9, N'A amoxicilina associada ao ácido clavulânico aumenta o tempo de sangramento e de protrombina (elemento proteico da coagulação sanguínea) quando usada com AAS')
SET IDENTITY_INSERT [dbo].[Interacoes] OFF
SET IDENTITY_INSERT [dbo].[Medicamentos] ON 

INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (1, N'Ácido Acetilsalicílico', N'Popularmente conhecido como aspirina, é utilizado tratar dor, febre e inflamação')
INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (2, N'Captopril', N'Inibidor da enzima conversora da angiotensina I, é utilizado para tratar hipertensão arterial e alguns casos de insuficiência cardíaca')
INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (3, N'Insulina', N'Hormona responsável pela redução da glicémia, ao promover a entrada de glicose nas células')
INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (4, N'Inibidores de MAO', N'A Monoamina oxidase (MAO) é uma enzima presente em animais cuja função é degradar monoaminas, evitando o acúmulo de monoaminas endógenas ou monoaminas exógenas')
INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (5, N'Tiramina', N'Monoamina derivada da Tirosina, que tem como função liberar as catecolaminas – um grupo de neurotransmissores que, tem como função o controle da pressão arterial.')
INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (6, N'Omeprazol', N'Protótipo da classe dos inibidores da bomba de protões (ou prótons), diminuem a secreção gástrica')
INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (7, N'Fenobarbital', N'Substância barbitúrica usada como medicamento anticonvulsivante, hipnótico e sedativo')
INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (8, N'Amoxiclina', N'É uma Penicilina semi sintética de espectro moderado utilizado no tratamento de infeções bacterianas causadas por microorganismos susceptíveis')
INSERT [dbo].[Medicamentos] ([medicamentoId], [nome], [descricao]) VALUES (9, N'Ácido clavulânico', N'É um fármaco que age inibindo a ação das beta-lactamases, que são enzimas responsáveis pela perda de ação de algumas classes de antibióticos')
SET IDENTITY_INSERT [dbo].[Medicamentos] OFF
