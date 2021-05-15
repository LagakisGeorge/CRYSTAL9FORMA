
/****** Object:  View [dbo].[TIMOLOGIA]    Script Date: 15/5/2021 11:15:20 μμ ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[TIMOLOGIA]
AS
SELECT        dbo.PEL.EIDOS, dbo.PEL.EPO, dbo.PEL.ONO, dbo.PEL.DIE, dbo.PEL.POL, dbo.PEL.THL, dbo.PEL.EPA, dbo.PEL.AFM, dbo.PEL.PEK, dbo.PEL.AEG, dbo.PEL.AYP, dbo.PEL.TYP, dbo.PEL.XRESYN, dbo.PEL.KOD, dbo.PEL.SHM1, 
                         dbo.PEL.SHM2, dbo.PEL.KART, dbo.PEL.XREMHN, dbo.PEL.PISMHN, dbo.PEL.XRE, dbo.PEL.PIS, dbo.PEL.PMXRE, dbo.PEL.PMPIS, dbo.PEL.LASTUPDT, dbo.PEL.PISSYN, dbo.PEL.ARTIM, dbo.PEL.SUMTIM, dbo.PEL.KODGAL, 
                         dbo.PEL.PLAISIO, dbo.PEL.ARPARAG, dbo.PEL.HMELHJ, dbo.PEL.HME_LHJ, dbo.PEL.TYPOS, dbo.PEL.XRVMA, dbo.PEL.DOY, dbo.PEL.PLAFON, dbo.PEL.HMERESAPOP, dbo.PEL.MEMO, dbo.PEL.HM1, dbo.PEL.HM2, 
                         dbo.PEL.HM3, dbo.PEL.HM4, dbo.PEL.HM5, dbo.PEL.HM6, dbo.PEL.CH1, dbo.PEL.CH2, dbo.PEL.CH3, dbo.PEL.CH4, dbo.PEL.CH5, dbo.PEL.CH6, dbo.PEL.ENERGOS, dbo.PEL.NUM1, dbo.PEL.NUM2, dbo.PEL.NUM3, 
                         dbo.PEL.NUM4, dbo.PEL.NUM5, dbo.PEL.NUM6, dbo.PEL.NUM7, dbo.PEL.NUM8, dbo.PEL.PVLHTHS, dbo.PEL.EMAIL, dbo.PEL.ID, dbo.PEL.KINHTO, dbo.PEL.COMB1, dbo.PEL.COMB2, dbo.PEL.COMB3, dbo.PEL.COMB4, 
                         dbo.PEL.COMB5, dbo.PEL.ADT, dbo.PEL.HM7, dbo.PEL.HM8, dbo.PEL.HM9, dbo.PEL.HM10, dbo.PEL.HM11, dbo.PEL.CH7, dbo.PEL.NUMER3, dbo.PEL.NUMER4, dbo.PEL.NUMER5, 
                         dbo.PEL.NUMER6, dbo.PEL.NUMER7, dbo.PEL.NUMER8, dbo.PEL.COUNTRY, dbo.PARASTAT.TITLOS, 
						 
						 dbo.TIM.HME AS TIMHME, dbo.TIM.TRP, dbo.TIM.ATIM AS TIMATIM, dbo.TIM.AJI, dbo.TIM.METAF, dbo.TIM.EIDPAR, 
                         
						 
						 dbo.TIM.FPA1, dbo.TIM.FPA2, dbo.TIM.FPA3, dbo.TIM.FPA4, dbo.TIM.FPA6, dbo.TIM.FPA7, dbo.TIM.FPA8, dbo.TIM.FPA9, dbo.TIM.TYP AS TIMTYP, dbo.TIM.AJ1, dbo.TIM.AJ2, dbo.TIM.AJ3, dbo.TIM.AJ4, dbo.TIM.AJ5, dbo.TIM.AJ6, 
                         dbo.TIM.AJ8, dbo.TIM.AJ7, dbo.TIM.AJ9, dbo.TIM.EKPT1, dbo.TIM.EKPT2 AS TIMEKPT2, dbo.TIM.EKPT3, dbo.TIM.EKPT4, dbo.TIM.EKPT5, dbo.TIM.SKOPOS, dbo.TIM.SXETIKO, dbo.TIM.PARAT, dbo.TIM.FORTOSH, dbo.TIM.SYNPOS, 
                         dbo.TIM.SKOPOS2, dbo.TIM.PROOR, dbo.TIM.AYTOK, dbo.TIM.KR1, dbo.TIM.KR2, dbo.TIM.PARAKRATISI, dbo.TIM.ORA, dbo.TIM.C1, dbo.TIM.C2, dbo.TIM.NUM1 AS TIMNUM1, dbo.TIM.C3, dbo.TIM.NUM3 AS TIMNUM3, 
                         dbo.TIM.NUM2 AS TIMNUM2, dbo.TIM.C12, dbo.TIM.C13, dbo.TIM.NUM11, dbo.PEL.EPO AS PELEPO, dbo.PEL.DIE AS PELDIE, dbo.PEL.POL AS PELPOL, dbo.PEL.THL AS PELTHL, dbo.PEL.EPA AS PELEPA, dbo.PEL.AFM AS PELAFM, 
                         dbo.PEL.PEK AS PELPEK, dbo.PEL.AEG AS PELAEG, 
						 
						 dbo.PEL.TYP AS PELTYP, dbo.EGGTIM.POSO, dbo.EGGTIM.MONA, dbo.EGGTIM.TIMM, dbo.EGGTIM.KODE, dbo.EGGTIM.FPA AS EGGTIMFPA, dbo.EGGTIM.EKPT, 
                         dbo.EGGTIM.KAU_AJIA, dbo.EGGTIM.MIK_AJIA, dbo.EGGTIM.ONOMA, dbo.EGGTIM.KOLA, dbo.EGGTIM.MIKTA, dbo.EGGTIM.PELKOD, dbo.EGGTIM.PROELEYSH, dbo.EID.ONO AS EIDONO, dbo.EID.ERG, dbo.EID.XTI, dbo.EID.LTI, 
                         dbo.EID.LTI5
FROM            dbo.EGGTIM INNER JOIN
                         dbo.TIM ON dbo.EGGTIM.ID_NUM = dbo.TIM.ID_NUM INNER JOIN
                         dbo.PARASTAT ON LEFT(dbo.TIM.ATIM, 1) = dbo.PARASTAT.EIDOS INNER JOIN
                         dbo.PEL ON dbo.TIM.EIDOS = dbo.PEL.EIDOS AND dbo.TIM.KPE = dbo.PEL.KOD INNER JOIN
                         dbo.EID ON dbo.EGGTIM.KODE = dbo.EID.KOD

GO