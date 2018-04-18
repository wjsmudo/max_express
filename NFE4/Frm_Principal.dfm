object frm_Nfe4: Tfrm_Nfe4
  Left = 0
  Top = 0
  Caption = 'NFE 4.0'
  ClientHeight = 549
  ClientWidth = 1004
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Calibri semilight'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object p_geral: TPanel
    Left = 0
    Top = 0
    Width = 1004
    Height = 549
    Align = alClient
    Caption = 'p_geral'
    TabOrder = 0
    object p_emissao: TPanel
      Left = 186
      Top = 1
      Width = 817
      Height = 547
      Align = alClient
      TabOrder = 0
      object p_grid: TPanel
        Left = 1
        Top = 98
        Width = 815
        Height = 351
        Align = alClient
        TabOrder = 0
        object XDBG_NF: TRxDBGrid
          Left = 1
          Top = 1
          Width = 813
          Height = 349
          Align = alClient
          DataSource = DsNF
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -13
          TitleFont.Name = 'Calibri semilight'
          TitleFont.Style = []
          FixedCols = 2
          RowColor2 = 16776176
          TitleButtons = True
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERONF'
              Title.Caption = 'N'#250'mero NF'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri semilight'
              Title.Font.Style = [fsBold]
              Width = 132
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SERIENF'
              Title.Alignment = taCenter
              Title.Caption = 'S'#233'rie NF'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri semilight'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGOEMPRESA'
              Title.Alignment = taCenter
              Title.Caption = 'Empresa'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri semilight'
              Title.Font.Style = [fsBold]
              Width = 140
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTRADASAIDANF'
              Title.Alignment = taCenter
              Title.Caption = 'E/S'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri semilight'
              Title.Font.Style = [fsBold]
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATAEMISSAONF'
              Title.Alignment = taCenter
              Title.Caption = 'Data Emiss'#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri semilight'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALORTOTALNF'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Total'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri semilight'
              Title.Font.Style = [fsBold]
              Width = 172
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUSNF'
              Title.Alignment = taCenter
              Title.Caption = 'Status'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -13
              Title.Font.Name = 'Calibri semilight'
              Title.Font.Style = [fsBold]
              Width = 193
              Visible = True
            end>
        end
      end
      object p_rodape: TPanel
        Left = 1
        Top = 449
        Width = 815
        Height = 97
        Align = alBottom
        TabOrder = 1
      end
      object p_topo: TPanel
        Left = 1
        Top = 1
        Width = 815
        Height = 97
        Align = alTop
        TabOrder = 2
        object FlowPanel1: TFlowPanel
          Left = 1
          Top = 1
          Width = 813
          Height = 95
          Align = alClient
          TabOrder = 0
          object AdvMetroButton1: TAdvMetroButton
            Left = 1
            Top = 1
            Width = 112
            Height = 90
            Appearance.PictureColor = 10053171
            Caption = 'Enviar NF-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE0000000473424954080808087C086488000000097048597300001BAF00001B
              AF015E1A911C0000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A0000028849444154789CED9B416B13411480BF17A5
              07FF81FE0A25C92F107113A1C5B3765BDBDED4537BF0D4620511040FF16C6DB2
              C543BD79D8A4F4A6C74DAABF42EF5251A4ECF3D2C21A5BCA929D7D1B3BDFF191
              9D79F3F166326F61C1E3F1783C1717C9FB40A315AA8B444EE137A22BC3388A5C
              4E527339F884CCA0D26DB4E71FBA9CA4CA02000495D72E25545D00389630F119
              30ECF7728F9167FC0CA9A82E278368BBC8F9A6A1024EA8A9C856D195300D02B2
              1521A8749AC1FC625183575E80A82E016926546825545E403288B6457599BF25
              147630565E00B895301502E05882C80A054B981A010049DC7D5BB484CBC5A4E6
              8EF17B81EAA9D70441A5530FC2C3D1A0D7CD33FE5455C039D4447893FB211799
              187229EF03FF9B80DC54EE0CC8DB5B4CFA7EE2C2578017609D8035E6029AEDC5
              EB96F39B0A68B4C247AAE941BD15BEB4CAC14C40BD153E063A8008AC59493011
              70E3D6D2358117645EC909AC355BF3EB65E76222E0F3FED6D7344D03E0301B57
              E469D99560B6050EF6763E89C81DE047365EF676303D0493B8FB1149EF023FB3
              F1322598FF0D0EE39D7D249D037E65E3654970D60BE4BAA39FF1CB6309DF47FD
              DEB382D2FA07F30A380F81CD7A103E71357EE5050088B8CBB372EDF0380AEBA3
              7EEFB9ABF19D09C8D3D73783859B2AFA01B8928D0BBA31EC47CEF63F54A0021A
              C1C2AC8ABE0766B27115568771F4CAF5FCB6CD50B030CB198B1FC53DE78B0743
              018D763867BD78301250BF7DFF2ACA3BC6162FE846998B072301A3BD9D6F22F2
              00383A89A9B09AF4A3CDB27331DB0249DCDD15917BC051D9659FC5BA19DA15A9
              35AD160F15B80926F1F617CBF9CD0558E3055827608D17609D80355E807502D6
              4CDC0E97F8FD80132E7C057801D609783C1E8FC763C71F20DCD58855CFE02700
              00000049454E44AE426082}
            ParentFont = False
            ParentShowHint = False
            ShowCircle = True
            ShowHint = False
            TabOrder = 0
            Version = '1.1.1.0'
          end
          object AdvMetroButton2: TAdvMetroButton
            Left = 113
            Top = 1
            Width = 112
            Height = 90
            Appearance.PictureColor = 10053171
            Caption = 'Cancelar NF-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE0000000473424954080808087C086488000000097048597300000384000003
              84010305B9E10000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A0000052949444154789CEDDB698C9D531807F0DF3B
              CC686B4B6C1F5488A43E489B4CC3341542A4A1ADDA234850446B49C456041189
              061584CA105B155D28625FDAB1B4DA58A36D0821248D882F88B5DA6811737D38
              F79AF79EFBDE7B7BDB7BE7BEC3FC93C9E4FD9FF739E73CFFF39CE72CEF0CC318
              C63086318CFF2F92460D7A8E39BBD08A8E64E04F4961E69AA58B16B5B2918E56
              56BE8DE8524816F44C9B7E712B1BC9B300902824F7B45284BC0B408B45D8E61C
              B066D9C286EB68A4FE14FA934261C6EABE458F35B3BDA1100125741492E49166
              47C25010201D118942D23B61EAF4739B5579EE05480A85F3D09FA29A1A09B917
              6075DFA2C79242618672119A9618732F00AD156148084051842499A9C9220C19
              0160F5D2058F365B84ED9BD3B5D621DE17140A99DB844421E93D78EAD91BD7F6
              2D5CD048FD432A02EAA02349CC6FD8A8153D6923B66BD4E0BF2640C3C85D0E68
              F46CB1ADF713FFFB081816A0DD1D68378605687707DA8D6101DADD816622E1B6
              466DFE3B022466AF5EB6F0DA46CDF22E40278EABFB5662F69AA50B6F8CD80E9C
              58CF34CF028CC04B7819D7547DABBAF38FE005DC59AB91BC0A3002CF636AF1F9
              56649EF7AB383F0FE7149F67E1AE6A0DE5518011C2C84D4D7109EEC145756C13
              3C80F322FE0A5544C89B0025E7A7649425B80FE7D7B09F5BA33C53843C093012
              2FCA76BE8404F7E3CC8CB23B71599D36AE1044FA177911A00B4F6272C4FF865E
              E51F47B61312DCF129EE5A61AEA7B15970B63FE22FC79CD2431EEE03460A611F
              3BFF338EC247F8040F1918B02E3C8B53310E3747B61B710CDEC17B58A2DCD7EB
              8AEDCE6AB7005D784AA5F31B7082E03CCCC78EB8DBC007DD4E3C5DFC9DC6269C
              22380FCF60A7621DE988BF1C9BDB3D05F6C64119FC57F82CE27A854EA7A74397
              F22FDC9B70125E8F6CDF15222AC686760BF0350EC5BA88EFC64AEC11F1BD4296
              8FE73521EC27AB747E9C100D715D57624EBB05806F70383E8FF86EBCA9B2E3F3
              71817211D2733E8D71588EBD22FE46C525310F02C07798844F237E4B44D8A031
              E76FC1ECD243BB93601ADF0B7B80E53830C57763A910DEBFA6F8F94226FF52A5
              F307A04FA5F3F7E2863491970828E15B1C860F237E82EC9C702FDE88B8D29C1F
              1DF177E012E549347702C02FC2687F10F1D5A6431AD5C2FE3E554E94791400D6
              639A9020D3E8C673B2FFB86B57D961BF1C978A46BE84BC0A4018B17D236E23AE
              97EDCC7A21B9C54BE411C2A62A137915E0769521BB51888AB76BD8CD138ECC69
              113A85DDE6C959067914600EAE8EB8CDC2BE3F767E7F21F4D39887AB22AE5338
              0F4C8B1BCB93001D785038A8A451DAE1F545FC582151AEC4EE51D95C959BA51D
              8443575924E445800EE1B47741C4570BFBB1582124BCF1C2EA108B300F17AA33
              1DF220C0F6781C33227E4B9C2FA19A080FAB23C220FEBF4072F79A650B6629CF
              E09D588CD3A2971B713E8D8F853B849F227EA630BDD203FE174E1FAC08F8BDBF
              A3FF2195CBD77E383AE3FD2FB036E2C6C85EE7D3188F575526C63EFC18719D38
              6BB00418D5D19FACEA3976FAB8885F2708F04BC4F708DF0346159FC7E02DEC13
              BDF704DE8FB88978CD8008A38BB6B170AFE08CC1CC017B26FDC9F20953CE191B
              F16B71A4CA119A249CED0F112E3462E71763BA10F22BA2B289C2EA3041B8121B
              13952F112E4EFE68D48956A247888442F4F37706F7A2F2ABB05D0491B6C4F625
              E1262997E8C60F2A3B5DCBF9124609FBFE5AB68FDB8A3FA51B6CD412E115B547
              AF960843C2F912BA859C907660857001520F59222C36849C2F61BC0111561958
              11B604691186A4F3254C149CDF6D2B6C77C64DEA24BC7F00816272F3F8D1FF9C
              0000000049454E44AE426082}
            ParentFont = False
            ShowCircle = True
            TabOrder = 1
            Version = '1.1.1.0'
          end
          object AdvMetroButton3: TAdvMetroButton
            Left = 225
            Top = 1
            Width = 136
            Height = 90
            Appearance.PictureColor = 10053171
            Caption = 'Inutiliza Numera'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE0000000473424954080808087C086488000000097048597300000384000003
              84010305B9E10000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A000001D549444154789CED9BC14EC2401086FF4123
              78D36701DF017C0788114E7AF3A28FA0076382893715DA77A0BC43E15D343111
              3D305E34A90D916C76B7B375E73B6E3A3B932F339B6D0980A2288A122F641AD0
              E90DD847211BF804F168314B539F491A3E37B7640F4CD3CE71FFDC6792900500
              0081E9DEA784D005009E25589F018B2C31DEC364FF026B621EE6F374E2325F1D
              3AE08706133DB9EE843A0828760481697CD4ED9FB8DA3C7801C47C0A605D5872
              DA09C10BC8E7E9849887F82DC1D9C118BC00C0AF845A0800BE25108DE058426D
              0400403E9B3EBB96B0EBA6347F94EF05CC1BAF0904A671BB3B785BCE93A9C9FE
              B5EA802D3488F0681CE4A31241764C03FE9B0063823B034CDF2D6CBF4F44DF01
              2A40BA006954807401D2A800E902A45101D20548A302A40B90267A01C1BD0C99
              42C08D4D7CED05E4597265131FFD08442F407A049A00BCFEFE5F6205E0A1B820
              2D601FC06D85F95E511210FD08442F407A04CA7CA0D4A29634019CFDF5406802
              56002E1CEE77802D02A21F81E8058436024DB81D81D6B6074213D042B5F7021D
              81E805488FC00AC05D85F9DECB0B21087079E81913FD0854FD7F819745961C5A
              C43BA7EA1168B57B834B9F09965962F48DB07201045C7BCE612420FA33405114
              4589992FAF4E730B0FBBDDFD0000000049454E44AE426082}
            ParentFont = False
            ShowCircle = True
            TabOrder = 2
            Version = '1.1.1.0'
          end
          object AdvMetroButton4: TAdvMetroButton
            Left = 361
            Top = 1
            Width = 136
            Height = 90
            Appearance.PictureColor = 10053171
            Caption = 'Pesquisa NF-e'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE0000000473424954080808087C086488000000097048597300000384000003
              84010305B9E10000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A000003FA49444154789CEDDB4D8855651CC7F1CF33
              530E134A1AA115514692854594BAA985F48A4E52440EB4514CA516E52628A245
              1412B5E8858C5E084C676611614886CD0C89E5A28470A4A41782A42C262AB05A
              A4589AF3B4383371E678EE9D39CEBD33E736F70777F13CFCFFFFE779BEF7793F
              E7D054534D35D5D4F45528EAB064C59A588F8AE4E88410370CF4F6F4D4B39096
              7A069FA06688A16B49C7EA07EB594899014010C3CBF584507600D419C284E780
              81BEEEC2318AC44F6928C4B87E7F7FCFB65A96D7083D60442D3184376BDD131A
              0140BA4704316C5EBA7CF5DA5A052F3D8010E33A0CA5B26ADA134A0F607F7FCF
              B610E37AA321D46C622C3D00EA0BA12100300C21840D6A0CA16100C0FEDEAEAD
              B58670566DAA563F65F70531E66E138218362F5EBEE6E881FEEEAE22F11BAA07
              8CA196106C29EC548F9A4CA15A8B3AFCDF001456E9E680A2678B89DE4F4CFB1E
              D00430D515986A4D7B00A59B048B2BBE0141981939BFA877C30318E8EB796022
              FED37E0834014C7505A65A8D3807B4621956E262CCC19F18C407D88DBFC71BAC
              9100B4E17E3C868B2AD86CC4EF78112F49C05455A30C81F918C066951B3FA2F3
              B0095FE2DAB10237028085F8145717F4BB041FE3C66A4665073007EF616E26FF
              101EC1525C8EEBF1103ECFD8CDC40E098C5C951DC033B822958EC3798BF09C64
              587C87CFF00A16E3619C4CF9CCC5AB950A2833802BB13E93F7281EC7890A3E43
              9209707526FF0EDC94E75066006B8C5EA5F6E0F971FABE8DECE5E8BA3CC33203
              B82B937ECAE8E78463E9C98CFD4A39CB7E5901B44A66FF111DC12705631CC6C1
              547AB69C25B4AC00E6197DC37BD8E88721E3D5A14CBA6100641B7BF619C6C9FA
              9D36799615C06FF827959EEFCC202CCCA47FCE1A9415C049C91A3FA273717BC1
              18D74896D2110DE297AC515901C0BB99F426E3EF0501CFE6C43B6D152933802D
              38964A5F27D9D18DE7C1C913E848A54FE1F53CC332033882A733791BB01D1756
              F0998DD7247B80B47AF0559E4399EF03DA70434EFE3D58213924EDC18F1220CB
              70B704425ADF4ACE07B92A2B8036BC23D9BDE5E91CDC3BFCABA641DC893F2A19
              947108546AFC0F05E37C8825F8A69A51D900546AFC2EC99A7EABA461D5CE045F
              60156EC1AF631558A62150ADF1AB24179D7B867F97E266C9BDC02CA32F45BF2E
              52E8A47F2F10D935EB784BE7DEBDDBFE4A65B763276ECB98BF2539DB9F9A4899
              D534F94320D879A68D5FB06263DBD28EB517D4B63A0555832F468662B42EF536
              D765D88774C3DE972C77FFDDEF2FEAEC9CD17EAC7D87A8030705BB630CDF87E8
              272DA78E87D83A7728C479077ABB5F285299A9FA64668870DF405F57F7707A01
              3E923CE838ED9F5FD4D939A3FD68FB76C9925655B57E7D7F327515B64A26C3A6
              9A6AAAA9A62643FF02558FFDF1883D40E50000000049454E44AE426082}
            ParentFont = False
            ShowCircle = True
            TabOrder = 3
            Version = '1.1.1.0'
          end
          object AdvMetroButton5: TAdvMetroButton
            Left = 497
            Top = 1
            Width = 136
            Height = 90
            Appearance.PictureColor = 10053171
            Caption = 'Imprime DANFE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE0000000473424954080808087C086488000000097048597300001BAF00001B
              AF015E1A911C0000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A000001EF49444154789CED99DF2A445114C6BF35E7
              4C5212176E4851AEB89039933740137903D410221E86227231064F30CCE009D0
              9C277041F2A7DC70A930CB1531C53E8E7D6639CDFADDEDD35EABEF7CADFD1F50
              14455114A55E215B89D29949B6952B08E552DE8AF6848D2471460D9016208D1B
              55625B63F49DA8E698BAAF0035405A80346A80B40069D4006901D2A801D202A4
              09BC5BF3BCD924B53D65413C4DA01E065AA314F65B087860C239316F55EE1B73
              BEBFF91C30CECCC050B6DD715F0B00A7FE26B36694B95219F78F76EF4C1D8D43
              A027B3D49048BE1463F4F30090A684B3EF79B3495347A3012DF438438C7E3BBA
              6A09A7A8ED296BEA15E034489355ED82CBB47C7298BB0CA92C12068727BA5F1D
              5A2160ECE323610AC0C64F71E65580D1FBB9E9E065E1BFFD3C009C1DEF5CC0C5
              62D5E73E535C90FB80A6CF8DD3D2DE3500782353A3E4F02A98198CA5F2E14E31
              B8DC68F00BF9AB74E64BC1369B62425F885082D7C1E8040820AC01E80A9B4B92
              D01B21FE1A1BDB0D5578E1159A0370CBC00D98E7ED49AA2DA187807FB47D00A0
              C3A21611625BBAB65003A4054863ED5D40DF06638A1A202D401A7D1B8C22699C
              5003A40548F3EB39A0D6EBFD77D8D251F715A006480B90C63807045DCFF52C10
              53D4006901D2447616F82FFB0513755F016A80B40045511445511429DE00E846
              736E2A0FA7A50000000049454E44AE426082}
            ParentFont = False
            ShowCircle = True
            TabOrder = 4
            Version = '1.1.1.0'
          end
          object AdvMetroButton6: TAdvMetroButton
            Left = 633
            Top = 1
            Width = 136
            Height = 90
            Appearance.PictureColor = 10053171
            Caption = 'Importa XML'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
              DE0000000473424954080808087C086488000000097048597300001BAF00001B
              AF015E1A911C0000001974455874536F667477617265007777772E696E6B7363
              6170652E6F72679BEE3C1A000004CC49444154789CED9A5D6C145514C77F6766
              5BB67CC887D00852032D31C10713EC173C28AB86D6AD898D1FF8825D29449EF4
              C104E501882B51A306E383D107F4A1D98648520D010C6B08C186444243374612
              E581F021600DC4A068D7DDB63B7B7CC035B3C3B6DD6DB79D219D5FD2A4F79CB9
              E79EFBEF993BF7CE147C7C7C7C7C7C7C7C7C662632DE050DE1884E472253457F
              3C36E61C8DE94AC4ABF802B89D80DB044AED30DE3DE536A5AE5933BE027C01DC
              4EC06D7C01DC4EC06D7C01DC4EC06D4ADE0738713E779DFB84A93E4B4C765F32
              E32BC017C0ED04DC66D26BC078F7A0D7CF0E33BE027C01DC4EC06DFC7D40B912
              B95B997405B84D63387253D13F402E81264AED7FD70BA0B0106421500BF264A9
              FD4BFE2E305DCFF55068733019B476AAC81BC0AC090712DED6EBC17713897D23
              85DC9E5C039A5A3A560E56654FA9C82E26337900E52DA91E3ABD66C3966585DC
              9E13A0B1A5B3C632E504B0A6807B00954F156955CB58AD8191251A18599235F4
              21455A55F80CF8EDCE6EFA8819C89C6A6A8B3CE8F478EA1658B361CB32339039
              09D4D9ED0AE751DD99585BF735D16876CC20D1A8517FFAC2F322F21EB0CAE11D
              D000EB124762577286490B300DFB80AF862DDD7CF65877B2944E0FB774CCA90C
              480CE53987AB4F6F041FCDAD099EBB05EC28ECED8FC75E2C75F200678F7527FB
              8FC65E40F46387AB99EAA15DB986670550389888C7DEBCFDEB9D3484236AFF19
              2D4C7F53DD76E0B0DD28E88EC696CE1AF0AE00D7D2A9548451265F12D168D6C4
              EA00066CD6596A6477800716C1FAFA6D15529DBE012CC8D944B5F3CCB7DD5DE5
              CCABE1A98EAD887C6133DD9A9B32EE73BD028CC5E9F5D826AF70F9CCDABA58B9
              C759392FDD055CB599E62783569BEB02A8C1330ED3A1711F7513A0A7A7C7020E
              E5190DD6BB2E0042B3BDA9AAF1291CED68FE58D2E8FE6148A9B5372B02E6457B
              BBD87DC468D7D9D706B58C4B62E615578DFB1500F3ED8DC1C16481AD6C790806
              8D5F1DA67BBD2040DE9FC4AC0C4EE77FA5191E1040FEB4B7AA2ACD82A7B67230
              343C9C175BE056C96B40F9DFF1E5871BC958B5C0F95C7BB4E7FB84F62762D43A
              2C173D5001F98848780AC3B7D91B2AFCE839018076A2D1B2E7B571E3461368B7
              DB0439E13901045634F65DD85AEEB81793C157801A9BE9EFAC39EB1B4F7CB76B
              08473E015EB599AEA552A9D53FF5F60C8ED1A7E835A039BCE91E0BF31CF0FF22
              A8F079221EDBE6890AA830791F48DB4CCB835555318A38AC8D4B346A5898DDD8
              260F0C837C4059062813F5E1C86E813D769BC2DEB1DE09148134B4757C84CAEB
              F966FDB03FDE5DDC7178BA08854281C1D90F7C8FD2E47095F59598C0E93929E3
              F1DEDEAEF47F6DEFD0D8D2599335AD93022B1CAEAB2AEC99F7CF95AEDEDEDECC
              5831EAEBB75518D5439D8AEE06963BDC57CC8A91A6BEC35F5ECF193C2500407D
              F8E53A41BF237FC5CE3180CA41150E9B56F6FC4D73C100C04223797F366BAD42
              B45D946781A5CE8E0A9703584FF7C5F7FF6CB77B4E008075AD5B178D189903A0
              1BCA13518E98645EEA8BEFFFCBE931CB334079B976E187D4D2F9CD078CB9560A
              580B544E30544AD077F446F0B53327BB52852EF06405D8690E6F5A9EC1DC2ED0
              012C2AB25B1A91FD6AEA1EFB479042785E801CA1D0E6E0E0EC6CABA04FA8CA63
              204B4117DFF6CAEF88FE22CA3994E3D94CF048E2F8BE5BC5C4FD1745D6B6AEB8
              02FA120000000049454E44AE426082}
            ParentFont = False
            ShowCircle = True
            TabOrder = 5
            Version = '1.1.1.0'
          end
        end
      end
    end
    object p_menu: TPanel
      Left = 1
      Top = 1
      Width = 185
      Height = 547
      Align = alLeft
      TabOrder = 1
      object menu_lateral: TAdvPolyMenu
        Left = 1
        Top = 1
        Width = 183
        Height = 545
        HorzScrollBar.Visible = False
        VertScrollBar.Visible = False
        List.Appearance.Normal.Color = 16250613
        List.Appearance.Normal.ColorTo = clNone
        List.Appearance.Normal.ColorMirror = clNone
        List.Appearance.Normal.ColorMirrorTo = clNone
        List.Appearance.Normal.GradientType = gtVertical
        List.Appearance.Normal.GradientMirrorType = gtVertical
        List.Appearance.Normal.BorderColor = clNone
        List.Appearance.Normal.Rounding = 2
        List.Appearance.Normal.RoundingType = rtNone
        List.Appearance.Normal.ShadowOffset = 0
        List.Appearance.Normal.Glow = gmNone
        List.Appearance.ButtonNormal.Color = 16250613
        List.Appearance.ButtonNormal.ColorTo = clNone
        List.Appearance.ButtonNormal.ColorMirror = clNone
        List.Appearance.ButtonNormal.ColorMirrorTo = clNone
        List.Appearance.ButtonNormal.GradientType = gtVertical
        List.Appearance.ButtonNormal.GradientMirrorType = gtVertical
        List.Appearance.ButtonNormal.BorderColor = clNone
        List.Appearance.ButtonNormal.Rounding = 2
        List.Appearance.ButtonNormal.RoundingType = rtNone
        List.Appearance.ButtonNormal.ShadowOffset = 0
        List.Appearance.ButtonNormal.Glow = gmNone
        List.Appearance.Down.Color = 16244937
        List.Appearance.Down.ColorTo = clNone
        List.Appearance.Down.ColorMirror = clNone
        List.Appearance.Down.ColorMirrorTo = clNone
        List.Appearance.Down.GradientType = gtVertical
        List.Appearance.Down.GradientMirrorType = gtVertical
        List.Appearance.Down.BorderColor = 14983778
        List.Appearance.Down.Rounding = 2
        List.Appearance.Down.RoundingType = rtNone
        List.Appearance.Down.ShadowOffset = 0
        List.Appearance.Down.Glow = gmNone
        List.Appearance.ButtonDown.Color = 16244937
        List.Appearance.ButtonDown.ColorTo = clNone
        List.Appearance.ButtonDown.ColorMirror = clNone
        List.Appearance.ButtonDown.ColorMirrorTo = clNone
        List.Appearance.ButtonDown.GradientType = gtVertical
        List.Appearance.ButtonDown.GradientMirrorType = gtVertical
        List.Appearance.ButtonDown.BorderColor = 14983778
        List.Appearance.ButtonDown.Rounding = 2
        List.Appearance.ButtonDown.RoundingType = rtNone
        List.Appearance.ButtonDown.ShadowOffset = 0
        List.Appearance.ButtonDown.Glow = gmNone
        List.Appearance.Disabled.Color = 16250871
        List.Appearance.Disabled.ColorTo = clNone
        List.Appearance.Disabled.ColorMirror = clNone
        List.Appearance.Disabled.ColorMirrorTo = clNone
        List.Appearance.Disabled.GradientType = gtVertical
        List.Appearance.Disabled.GradientMirrorType = gtVertical
        List.Appearance.Disabled.BorderColor = 14606046
        List.Appearance.Disabled.Rounding = 2
        List.Appearance.Disabled.RoundingType = rtNone
        List.Appearance.Disabled.ShadowOffset = 0
        List.Appearance.Disabled.Glow = gmNone
        List.Appearance.ButtonDisabled.Color = 16250871
        List.Appearance.ButtonDisabled.ColorTo = clNone
        List.Appearance.ButtonDisabled.ColorMirror = clNone
        List.Appearance.ButtonDisabled.ColorMirrorTo = clNone
        List.Appearance.ButtonDisabled.GradientType = gtVertical
        List.Appearance.ButtonDisabled.GradientMirrorType = gtVertical
        List.Appearance.ButtonDisabled.BorderColor = 14606046
        List.Appearance.ButtonDisabled.Rounding = 2
        List.Appearance.ButtonDisabled.RoundingType = rtNone
        List.Appearance.ButtonDisabled.ShadowOffset = 0
        List.Appearance.ButtonDisabled.Glow = gmNone
        List.Appearance.Hovered.Color = 16248808
        List.Appearance.Hovered.ColorTo = clNone
        List.Appearance.Hovered.ColorMirror = clNone
        List.Appearance.Hovered.ColorMirrorTo = clNone
        List.Appearance.Hovered.GradientType = gtVertical
        List.Appearance.Hovered.GradientMirrorType = gtVertical
        List.Appearance.Hovered.BorderColor = 16371364
        List.Appearance.Hovered.Rounding = 2
        List.Appearance.Hovered.RoundingType = rtNone
        List.Appearance.Hovered.ShadowOffset = 0
        List.Appearance.Hovered.Glow = gmNone
        List.Appearance.ButtonHovered.Color = 16248808
        List.Appearance.ButtonHovered.ColorTo = clNone
        List.Appearance.ButtonHovered.ColorMirror = clNone
        List.Appearance.ButtonHovered.ColorMirrorTo = clNone
        List.Appearance.ButtonHovered.GradientType = gtVertical
        List.Appearance.ButtonHovered.GradientMirrorType = gtVertical
        List.Appearance.ButtonHovered.BorderColor = 16371364
        List.Appearance.ButtonHovered.Rounding = 2
        List.Appearance.ButtonHovered.RoundingType = rtNone
        List.Appearance.ButtonHovered.ShadowOffset = 0
        List.Appearance.ButtonHovered.Glow = gmNone
        List.Appearance.Selected.Color = 14327846
        List.Appearance.Selected.ColorTo = clNone
        List.Appearance.Selected.ColorMirror = clNone
        List.Appearance.Selected.ColorMirrorTo = clNone
        List.Appearance.Selected.GradientType = gtVertical
        List.Appearance.Selected.GradientMirrorType = gtVertical
        List.Appearance.Selected.BorderColor = 14327846
        List.Appearance.Selected.Rounding = 2
        List.Appearance.Selected.RoundingType = rtNone
        List.Appearance.Selected.ShadowOffset = 0
        List.Appearance.Selected.Glow = gmNone
        List.Appearance.ButtonSelected.Color = 14327846
        List.Appearance.ButtonSelected.ColorTo = clNone
        List.Appearance.ButtonSelected.ColorMirror = clNone
        List.Appearance.ButtonSelected.ColorMirrorTo = clNone
        List.Appearance.ButtonSelected.GradientType = gtVertical
        List.Appearance.ButtonSelected.GradientMirrorType = gtVertical
        List.Appearance.ButtonSelected.BorderColor = 14327846
        List.Appearance.ButtonSelected.Rounding = 2
        List.Appearance.ButtonSelected.RoundingType = rtNone
        List.Appearance.ButtonSelected.ShadowOffset = 0
        List.Appearance.ButtonSelected.Glow = gmNone
        List.Appearance.NormalFont.Charset = DEFAULT_CHARSET
        List.Appearance.NormalFont.Color = clBlack
        List.Appearance.NormalFont.Height = -11
        List.Appearance.NormalFont.Name = 'Tahoma'
        List.Appearance.NormalFont.Style = []
        List.Appearance.DownFont.Charset = DEFAULT_CHARSET
        List.Appearance.DownFont.Color = clBlack
        List.Appearance.DownFont.Height = -11
        List.Appearance.DownFont.Name = 'Tahoma'
        List.Appearance.DownFont.Style = []
        List.Appearance.DisabledFont.Charset = DEFAULT_CHARSET
        List.Appearance.DisabledFont.Color = clWhite
        List.Appearance.DisabledFont.Height = -11
        List.Appearance.DisabledFont.Name = 'Tahoma'
        List.Appearance.DisabledFont.Style = []
        List.Appearance.HoveredFont.Charset = DEFAULT_CHARSET
        List.Appearance.HoveredFont.Color = clBlack
        List.Appearance.HoveredFont.Height = -11
        List.Appearance.HoveredFont.Name = 'Tahoma'
        List.Appearance.HoveredFont.Style = []
        List.Appearance.SelectedFont.Charset = DEFAULT_CHARSET
        List.Appearance.SelectedFont.Color = clWhite
        List.Appearance.SelectedFont.Height = -11
        List.Appearance.SelectedFont.Name = 'Tahoma'
        List.Appearance.SelectedFont.Style = []
        Fill.Color = clWhite
        Fill.ColorTo = clNone
        Fill.ColorMirror = clNone
        Fill.ColorMirrorTo = clNone
        Fill.GradientType = gtVertical
        Fill.GradientMirrorType = gtSolid
        Fill.BorderColor = 15000546
        Fill.Rounding = 0
        Fill.ShadowOffset = 0
        Fill.Glow = gmNone
        BorderMode = bmTransition
        Align = alClient
        TabOrder = 0
        DoubleBuffered = True
        IsMainMenu = True
        TMSStyle = 20
        object ImageTextItem1: TImageTextItem
          Tag = 0
          X = 3
          Y = 3
          Width = 176
          Level = 0
          Index = 0
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Emiss'#227'o de NF-e'
          DescriptionMargin.Top = 0
          Image.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            870000000473424954080808087C086488000000097048597300000DD700000D
            D70142289B780000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A00000983494441546881ED986B70D3551AC67FE79F
            A6699AB649DAA64D6881A50B7291025214DA9422A56315458A2C88BAEEEA8E3A
            7B7174DD71A5DFC4712F652FC8CEEC8E33C8AE37D64519B42EC2AE2B6D512872
            4710CBA5146CA1256913D2F4963697FFD90FA581B609AD16987186E75372CEFB
            3EEFFBE49CF79C37076EE2266EE23B0D712D48366FDF99A5D128CB906299827C
            F9FE42FB87C3F19BF34AFE9DC07283125A28215D08B419DA1EB930D5E5FF419A
            E3A806653D05DDFF1002F98D0434377758156DE8024048C8F1E926535D4B4BA7
            4DC4049B1038524D46DB95365722100CAA3B0F9EB42CBF3BEFE2C0B9F7AB76E5
            2B087BD991953BA42A5E31C4042D0F5A9C7ABBD1DB1AAF51FF95A6E9DCF2B3D3
            D3C7D675EA5EC88CEBF6BE3BF59805E467625ECFAFA3095022AA8A516FEFFBBC
            73FFD1D3A57F79EDA8B7CBBB08C0E9F2184BD7AE9755870EBC1FC9F79CA35939
            74A2C65DBAF6B55701CA2BAB657955F54A00550DADAA3ABFAD4CAFC46F7B7E4C
            BD7BFBB443A1A7AC4D8F4D5DE89E9A55ECF96D4291FFE8DB3FDDBFA527C157D8
            D01337A6F8E8B4DF0325B24A9F1F4D40C41568F17857097811A0E14233EFFDEF
            531E58904F56A68D2327EBF864CF21EE9D3B9BC959633872EA0C9F7C7E701047
            56A68DB46453F87B47A09DF2FA0D1863CD3C9919EB9CADFDEB87187A9E13B3E8
            8A9443EE9AFC8725ACF87CD6FE6D48992FE6F97F18C92E268AAA9CBECF19E9A9
            E862B5C4C7E90038DFEC0620D56C04A0D1E902207BC2380CFAB84874B4FA2FF2
            5EDDDFC9B1D879D0D2E0B955F3B75251D0F34644E34B5063623E13C1E05A90A5
            08F17C34BB885B08E46D008D2D6EA95114C6DAD23026187A05389A5114813121
            1E808573EFE0F91F2FA3386F16B3B3270D626A0BB4B2B16E1D05B6BB5961A9F7
            DE2AD63D220ABAAF9A3CC0DE67769C07523E76C439906444B31BB4022D2D9DA3
            2098A1AAAAE770CD2973C6BC5C664EBE25A88FD3C5F4F8FDB477F948379B89D5
            6A07919D7334B3E7E871D2934D8CCBB4D113EAE6BDBAD79967BD8749A66C6A65
            B6B1563EB40DEC02A0BCAA7A25522C43C84DA190BA6969D1DC3343091B52009A
            500E405B4757D39946875955A59A999E1A03E0707B00C8B0A602E0705D64C3D6
            8A411486783D211962F3D937996CCE66B2793A69C92632D32D58CC46FC818004
            F0078234BB3D1C3FDB9083A4ACBCAABA14A064BE7D75EE9ADC6429F016A7F813
            1138872F40C81C80F3CD2D017F2088DBDBA65806EC779B251900E7C55E415919
            36D2524CFD683EAA7F9724AD89E2AC45CC9C341E7352E2A050DA9818C665DA08
            84421CAB3D8B46A3290328AFAC2EBBD0758E7FD76F74B56A27DD6692C74F4713
            30A806FA0AB8BEA9D90870D1DB1E9E73B85B014835F50A3A7F49508241DF8FE3
            78EB17B8BA9D3C7CEB6314CCCC8E98FC95186DB570A6D1D16FCCE96B22D33036
            B53AF0E70DA7D587FDD17C239D423900E79CAED14228B2BDAB2B7CD43ADD9EDE
            024EEC2DE0730E178A22D0EB62C3CE6D81562A1A3FE2F1294F9337632ADA98DE
            102155E5504D2D07BE3A85A7AD9D787D1CCF3CB204450862B55ABCED9DFD92A8
            6D3B4EB67926411167F84A3E714F79E51352A0E42F2ECCADBEAA8054B371D40B
            6BD6DFA128EC35E8E382DD3DFE985D878F71A1C54DA7CF4742BC9E7D5F9EA4A3
            CB4747571709F17A84E8D528916C6DD8C49CB479CC9F3607DDA542EFF475B361
            6B05F54D4E2CC946C68C4A275EAF0B5F421D9D3E42AA1ACE2120FD9CEF38CBFD
            6357F4CB4D227F03CC1F6A05F8C3AF9ED8575EB9FB6E90DBFAC66C96146C9694
            B04D42BC9E39D326F7F33BD17A84A01A60E1A4FBB0A5F6D6892A25EF6CABA4D1
            D9C294AC31241A7A572F3DC51C16EEF6B6A1D56AC23CF5ED7558F519E89481F7
            8ABC7360AE110500A8D0AD207D200CD16CAE444886D8D1F45F968C7B945BC68C
            0E8F2B42F0E4D28557F5AD6D68244E7B791B1E6CD9CD8C94D9C3091BED228307
            0AF33E5551EE05D919CDE64A7CE1DE8B559FC1F894F1A498928615BC0FC7CF34
            604C4C00E0624F0BAE6E27134D53071B4A560F1C8A2A007A459414E6279414DA
            2FF74C92D525857671E558500DB0B77907766B5178EB0C17F5179C38DD1ECC49
            BD028EB8F6939D92832234FD0D25AB4B16D84B07FA47DD4203D14FC4001CF31C
            225D9F499ADE16EE91003EA8A866DFB113437227C6C7131FA7A32BD8C151CF01
            7E32F1D9FEB94B5E5AB2C0BE2A92EFB0054484643582955FB8F792975E0410EE
            9900CE365E202BD34A5AB2795874BB1CDB99963C8B44EDE51F01C9EA68C9C310
            5B6828942CB097D6779C5EDFE6F7303E692200BAD8CB3D92B7A38B44C36541E3
            32AC2C9E9FC7E2F9792C9A378784F8CB17A0CBE7A0D65B43BEB568508CABE530
            220100EFD4AD3BE90B76AD5BA2B9EB65038D8D3D814078AED83E0B439C0E5DAC
            9629DF1F4BF684ACF05C79D56E2AF71EC6D7D303C0678E8FC94D9F8F56891D14
            E36A18D9160204CA5C55F2168A7CDA2A77AD7579E6FF3123ADB7D9CB9B3E25A2
            CFEE2335EC3F7692AC0C1B7A9D8E1ACF115AFD9E611F9D5762C42B8094335445
            1E468AE95379FD8D8CB4D419C1502814C934100CB16DE73EB6ECF81C6B8A99B4
            14136D7E2F954D5BB86FCC721431289D214F8011AF006029CC6872834CE0CE76
            B710C2B5E7CB138F252725BC393ADDA2288A82CBE3E5C4D70D1CF8AA166F4707
            6347A5614B4D212443947FFD36B7A7CD254D3F6A10B1406EBA1102A4DEAF4820
            DCCCCCC99EB4E1AD0F3F79EE7DD7AE99ED5D3E902A713A1DA6C444BE372A1D5D
            AC1689E43FE73693ACB330DB322F32B1AA6EBC11029CDBDD56D38BA31B3AD881
            116805484A8C9F9974A96B8D848AC6AD7404DA5896F578140BF94E495141CD50
            C1475C0352722A142207A845139733947D500DB2A561230EDF39968EFB119A81
            372E00A2461FE87C6A38F1472C4011F22355B20CC916A45C169E88D0B75CEC69
            E19FA75F056045D693D18E4C9F5095878A8B8B87D5838DF86931A7ACC8181BDB
            7D7C6292EFE7AF4F38F62A425D2C0A02FBFAE63FA8AC2EEF09FA161F745773D8
            B5877CEB5DCC48B96330D125C15288334B0AF3D60D37FE35791B9DBD26EF2E81
            F2566E52EBE697B3CE2C959255A575132A4F741BA6C50ADDA3DDAA76D144D354
            61B716F56F13C02325CF2E59607FFBDBC6BE26020072FF943B492A9ADF29B050
            11AAD616EB679CBE5B662774B48C37DEDEE8D4FEB27F7D0836F935A15F2C2F28
            681949DC6B266028945756F77B61BE5A77FB4D30F29B7818E87BDCBD1EB8EE02
            3EA8A85E85A4EC7AF15F8B8B2C2A7A9F0E7B5FB9FB21C211FB6D717D574065F0
            3F99287F0DBF2DAEAB809205F6522979A9EFBB94BC742D93BF6128AFA82E1B78
            0A7DE7505E517DDD0AF9266EE226BEC3F83F70D19C3986D9959C000000004945
            4E44AE426082}
        end
        object ImageTextItem2: TImageTextItem
          Tag = 0
          X = 3
          Y = 38
          Width = 176
          Level = 0
          Index = 1
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Consultas'
          DescriptionMargin.Top = 0
          Image.Data = {
            89504E470D0A1A0A0000000D49484452000000300000003008060000005702F9
            870000000473424954080808087C0864880000000970485973000002A3000002
            A30164DC5F890000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A00000B90494441546881ED996B5094579AC77FE76D
            FA4637D25C9A4B001D1011A39804BC025E40778CCEC46066305933B39BB132D9
            DDDA54A6369519F9B05BC354667775B6C6C96ECDA5CA646526496532B192602E
            66660C62346844214A50919B01049A4BD35C9BBE9FFDD07623D008B368A65295
            FFA7B7CF796EFF7E9E73CEF39E17BEC257F80A5F6A883B61E4CD0F4FA7A9544A
            3152142BC8E77716E61D9D8BDEBA5FE46F06761B14EF0E09F142A04E523BE58E
            D87ED7B7E32C752A9497D8E8382C04F22F22D0DB3B9AA0A8BDDD005E21D3E34D
            A696BEBEB14411E6E9426089354526DE2A732BDC1E8FEF74CD35F3EE077307A6
            CEBD55F971BE82C8DB7F69DF49E913BF308479CC8F9A7BF479914383E12ADFEF
            E35463EFFE53F37D8B5AC6B43F4AD63986FEB0A2DE0CF294D8E4FCE14C049490
            ACC27CAB03CFA7CFD73597FCF78B7543F6A187007AFA6D91252FBC242B6B2FBC
            154AB7C3D2ABD4365CB196BCF0E26F00CA4F54C9F2CAAA7D003E9FB7B4F2C6B1
            FD7A25FCD8730BDBAC1FAEACF53E95D0F5C48A1DD61569DB6CFF6EDCEAAA7BE5
            1FCFBFEB348E17B63B750BB7D5ADFC4FA04856EAF367221032037DB6A152013F
            0668EFEEE58D3F7FC4235BF2494B4EE4D2B5168E7F52CB3736AC6559DA422E35
            B672FC6CCD341B69C989C4459B82BF47DD2394B7BD4AA4268AEF276B7AD6AA7F
            791483F35FC42AECA162587F307F8F84C7CEAE3A7F0C29F3C526D77742C985CD
            C02A27F09C141F8B56A3265CA705E046AF1580D8A848003A7BFA01C85A928A41
            AF0B658E41D7006FB4FC2F39E63C1E35B7DB96AB7E5522363A7F1B52F8267C61
            61A784C7F302C81284786E26B9902504F20180CE3EAB54290A8B12E388341AFC
            042CBD288A20D2180EC08E0D6B78EEEF8BD996BB8AB55999D32C0DBB0779BDE5
            101B131FE43173DBD07271E871B1D171DBE001CE3D73F20610F3278BCE822469
            26B96919E8EB1BBB073C493E9FCFF6E995C6A8A44DEBC95E96E1D1EBB4614E97
            8B11FB38F1515168D4EA69C63A2CBD7C527795F86813A9C98938BD0EDE682963
            53C276324D5934C9ACC826F9B7C7204F00945756ED438A62843CE2F5FA8E7C6B
            EB86D6D988CD4A009537076078D4DED5DA6989F2F9A42F393E360CC062B50190
            94100B80A57F8057DFAF9866C210AEC72BBDBC79FD772C8BCA6259D47DC4459B
            488E37638E8AC4E5764B0097DB43AFD5C6D5EBED3948F697575695001415E41D
            587F707DB4140C6D8B714520E8993B012173006EF4F6B95D6E0FD6A161C53CA5
            DE13CDD100F40CF809A525251217639A64E6BDB63FB0406D625BDA436467A613
            B520629A2B755818A9C989B8BD5EEA9BAEA352A9F603949FA8DADF6DEFE09DB6
            D7FB07D5990F98E4D5E699084C5B038105DCD6D51B09303034129CB358070188
            35F909DDB849C868D04FB27175F022FD8E1EF62C7F828DD9592183BF15290966
            5A3B2D93C67AC6BB48362C8AAD72FFFCD566DF1ED74CBAA176A11C808E9EFE14
            21143962B707B7DA1EABCDBF8023FC0BB8C3D28FA208F45A4D5079D83D4845E7
            7B7CEFDEA7C9BD7F05EA30BF0BAFCF47ED95262E5C6EC4363C42B85EC7338FEF
            4211028D5ACDD0C8D8A4209A86AF9215958D47E80C97E593DBCB4F3C29054AFE
            C385EBAB6E4B20362AF29E1F1D7C698DA270CEA0D7791C4E57D8C79FD6D3DD67
            656C7C1C63B89EEACFAE316A1F67D46EC718AE47083F4789E4FDF623AC8BDB44
            C1CA75686F2EF4B17107AFBE5F415B570FE6E84816DE134FB85E1B3C8446C7C6
            F1FA7CC118DCD2C58DD1EBEC5CF4D8A4D824F2A740C16C19E067CF3E595D7EE2
            CC83208F05C612CD31249A638232C6703DEB562E9BA4D73078098FCFCD8ECC6F
            9218EB5F273E2979EDD8093A7BFAB8376D2111067FF6E263A282C4AD43C3A8D5
            AAA09DB6911612F4496895A9E78ADC3C35D69004007CE05090E3200C33C9DC0A
            AFF472B2EB8FEC4AFD2E190B5382E38A107CFF5B3B6EABDBD4DE894E3D518635
            7D67B83F66ED5CDCCE7490C12385B91FF950BE01726C26995B71D17A8E047D12
            E931E9C49816CCC97900575BDB898C300230E0ECA3DFD1C352D38AE982920353
            876624007E124585F9C6A2C2BC899E4972A0A8304FDC3AE6F1B939D77B92BC84
            ADC1D2992BDABA7BE8B1DA885AE02770A9FF3C593139284235595072A0684B5E
            C954FD194B682A269198827A5B2DF1FA64E2F489C11E09E0ED8A2AAAEB1B66B5
            1D111E4EB84E8BDD334A9DED027B97FE6072EC929FECDA92571A4A77CE044242
            7200C1BE8BD673E4C66F0508F64C00D73BBB494B4E202E3A6A4EE63EB67CC8CA
            E85544A827FE042407660A1E6629A1D950B425AFA46DB4F9A561978DF4054B01
            D06A267AA4A1513B11860942A949093C5C90CBC305B93CB4691DC6F08903B07F
            DC42D3D015F213B64EF371BB18E64500E0B59643D7C63DF643BB545F7FDE4067
            A7D3ED0ECE6DCB5B8541A745AB5173EFE245642D490BCE95579EE1C4B94F1977
            3A013865F913EBE30B502B9A693E6E87F99510205036F8242FA3C8A713E4C72F
            F4DB0AFE2B29CEDFECE5DE776F489D3397AE70BEFE1A694989E8B55AAED82E31
            E8B2CD79EB9CEC7F9E587730BFCD2B28A8CEBE70019F3A83CDC3491EAFB7264C
            A5524D95757BBC1C3F5BC3E9DACF30471A9163837476B4D26FB3A0133AC2C234
            18221690909CC2A2F44CD41A4D435161DEB2507E03987706007361529715A491
            CD23562144FF279F353C11BDC0F8BB9478B3A2280AFDB6211A3E6FE7C2E52686
            464789106E1AAB3FC2E570DC0C428507371E971B877D0C6B4F374DF575A42E59
            3AEB1676273230F6609C25F1C7291DBD6C74EA0357202F1F3D5ED3D56FCD1EB1
            8F83F4A1D36A31454430D67783C64B35482931A7A4B3744D2109A9CBD0E80DB8
            C6C7E869BB46E3F94A7A3EBF1670F1D3B2B2B27FBB9B045AC3546C3E7D7F752D
            3E57BA286010FCB71153653BDB5AA9395D094290FD37BB59BAA69030058C1A81
            4A8057C2985BE2F64273ED692E7CF01A3E9F17604F5959D9EF43F99FF72E2425
            8D5E2F3940132A5DCE4C721EB79BBAEA33482983C147EB048BA314128C02B341
            906014A4991462F482F4EC0DACDEF17840FD7F9E7AEAA9C85076E74D4011F23D
            9FA418C9BB48593CC16C72DF72E3F3165C0E0731F77C8D8CD50518D410671488
            29352004980D02A306163F904FDCA20C8058B7DB3DB9B7BE53045C2EFD2B8A60
            F3F79AB3AE000FCB53EA35E03F808A0AF38484A30ECF38575BFC774719AB0B82
            6D74004E8F64605CE2F04E545D40246375B0FDDF1ECAFFBC77A19A920F87D61E
            CC7DA26158FFF2B34D4BDE7C3EADF59D910A756949CB92130D0EC3CA4397FF55
            387C6A993A9222006253D201187343F7880F2104434E899420EC10A1914860C4
            7FBE1177531E581CCAFFBC330070EED9337F163EEFE6B3C3A6C4AF5FCC366DAF
            BBFF57BD6EF5D51CE3F0EB7BE2AFAFF98FCCC85AB5F4B7185AFD446B31E48441
            873F78002961D839113C8026DC18780CD9A3DF89730080B3CF9D6D001E093DFB
            394F3FF303E9723A71DA47D1E8C2E76CD7313A0C80947230D4FC1DC9C06C28AF
            ACDAB720EAE655CCC4FE3E27F4B637061E3F0B357FD709BC5D51558A647F42F2
            22009A6B4F11AC995920A5A4E9C247819F21BF39DC5502E59555FB84F0DF7227
            A72E466F3032D0DDC6E5AA0FE6A47FADBA82BE8E6680068D46531E4AE6EE66C0
            47F04D46511456AEC9059075278F527FEABD9933212557AAFE48EDF1238191FA
            43870E794289DE914F4CB7C3DB1555A5812C48C94F8EBEF2A24D087110504C71
            4964AC2E243E3513AD2E1C9763FC662F74029BA56372A042BC78F8F0E17F80C9
            9F9BEE3A0180F28AAAFD08F605DEABF7EEDDBB5D4AF96BE06BB751EB054E02BB
            03032EAFF795CEB4B4BD274B4B83D9F84276A1A22D7925B7B616870F1FFE404A
            B90CD80BBC053408216C402BF08E94F29F5D2ED792B2B2B247851007005C1E2F
            6DFD23DF1535F58DC5C5C5C1D7B62F2403F3C5E3DFF9BB9F75D8467FE8F47801
            88D069AE473DB03CF34869A9EB4B4100105B76169F1B75BA821F1FC3B5611D8B
            A22332BE9012BA039015D9CBD719B4EACB8101BBD393D231305AFD65C94000A2
            70E7B7CF8F39DD39023068D5CFFFB503FAFF40D9B2B3F8E2B65DBB7F09F07F98
            768E659D6BCA920000000049454E44AE426082}
        end
        object ImageTextItem3: TImageTextItem
          Tag = 0
          X = 3
          Y = 73
          Width = 176
          Level = 0
          Index = 2
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Importa'#231#227'o'
          DescriptionMargin.Top = 0
          Image.Data = {
            89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
            DE0000000473424954080808087C086488000000097048597300001BAF00001B
            AF015E1A911C0000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A0000022249444154789CED9ACF6ED34010C6BF71B9
            0342BC08590BAEA80875FD0EDE70822BA4D08A4BF92795A294728423383C83D3
            1EB8702C8E10E23168C51374A7872A5265AAB6969319A3CCEFE6B1ECF9E6F37A
            77C7096018866118C6A2424D2F703EF03C84CC8A6A5C34AA29999790FF053340
            5B803657DADEA0E93B376BDACE490B3F02CC006D01DA9801DA02B43103B40568
            6306680BD0A63306A459FF79CF8775E9BC9D30C0F9FC1D336F12B095FAB02599
            5BDD80D4E71B00AD4D8F1958EF65612095BF7533D486D4F7B719BC5A0B1F2C1D
            C56F521AD40C702BE13D83EB4FFA2089F1DEFEDED75F97BD4FDB6E54C30072BE
            BF03F0E35ABC71F1B340DA007259F808E647B5F8A146F180EC2448CEE79FC0F8
            A778A244A578407004B895B00DE0E119A76E30C79FCE87B9E4BD688E10190169
            16DE8220B6B43541C480C8BACBED798818301917CF40FC41225753C49E4C558E
            062ECB01A627B5537F9892E549F9F9B79496D3886E85AB723420E04D2D7C9338
            7EEF65F96D492D53C47B811FE3628341AF6BE16BC4B477CB3FB823AD47A5199A
            8CBFBC38C384AB09E2AEB409AD7F1D6EB317EFF93024E0694DD05F22BEBF5F8E
            2A093DAAEDF0C9EA80E1E91803D763A4BB521AD4BF075465B106C2ABE9311356
            ABDD6278DE35B3A4131B94AA2C5EBA2C80194793B2D891CCDD090380131334F2
            AABF02DA9801DA02B43103B405686306680BD0C60CD016A04DEB9D60D7FF3B7C
            110B3F02CC006D018661188661185A1C033B889E442D4D16D40000000049454E
            44AE426082}
        end
        object ImageTextItem4: TImageTextItem
          Tag = 0
          X = 3
          Y = 108
          Width = 176
          Level = 0
          Index = 3
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Gera'#231#227'o de Arquivos'
          DescriptionMargin.Top = 0
          Image.Data = {
            89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
            DE0000000473424954080808087C086488000000097048597300001BAF00001B
            AF015E1A911C0000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A000004DA49444154789CED9BD14F5B551CC7BFBFDB
            B2F6B29AB9992CC87C10A368428622B0D9440D1BA3D08189463B14A512587C31
            BEF907F027E87C5B2203CAD8B489639B6B192512973D88A563812DD145E78389
            0FF8201846B1B7F7FE7C80E2EDEDA572E5D67BDBF59BF4A1E7FCEE39E7F3EDEF
            9EFE7A6E0A945556596595F5F08A8C5ED0E40F722116A2A314884FCF4542A142
            4E221472F05D6A0F98469A4EF67E58C849EC6C000010983E2BA40976370028B0
            09BBDE03E6A2A386C73032BE4A0A310FC42743C366CE570C199091C044436667
            423118A0CE0802D399E68EDE3EB306B7BD01C4DC0F405135999A09B637203E19
            1A26E601649B60DAC6687B0380C29A501406009B26109D86C926148D0100108F
            8C9C33DB04A7394B2B9CB47501B36E9940603AD3D8115C4D4C8E8E1819BFA832
            E05F2410E173C31715622516CA61F4825233C0B06CB70718FD6DB1DBF389873E
            03CA0658BD00AB5536C0EA0558ADB201562FC06A950DB07A0156CB7695A0691A
            1C149A677F7987C14100F59BAD0B041A8D1FADB980C1410528D10C78E1F5BE47
            9B67EFC7183C06C007A06AF3E563F058D3ECFDA9C6131FEC034AD080C39D3DFB
            9D7F2931068EE7096BA58AF57100547206B815670C40D30E424F36F9836F969C
            010C34AADF1370DD512155392AA42A0037B2A32958BA9B2000062EF192BB3B9E
            189500C0DB15EC9164FC8AAD47824A5D091B4013587275271267A53C314A51DF
            02873B7BF6EB76302E273D6B59F0DE404094D20821EB8130DD29DA0CF0B60F1C
            9094742CFBD12100E04AF291E4A9BBE1706A2B361010A55571028463599184B1
            A234C0DB3E704012A469000D9AAE2B494F32A0866F69E973AFAE2A13D8A807D4
            8ACC4546BE2ABA5BE0486BF0317D78BAAA0B2F2A979103CF7196DC3D00B8A80C
            686C7FEF71C5859BD0C2132ED478D6DE50C3D7B5043CABA21243EE27FF6D4AC6
            B1C4F4D915A0882AC186B6FE6A128419309ECBEEA18B357B93BDE17058CEB4D4
            B5043CA2284601BCAC19E6464AE6CE85A9D0834C4351EC010D6DFDD50E67FA1B
            00CFAADB19B8842557301C1DC982AFACAC8C3073163C01DF09905F5B983AFF40
            DD6E7B03B683D7FB9E57C1BFA219665680DC3E1B3DFFA7767C5BDF029BF033D0
            81E725D7A99DC2B3E4D685076C6C800ABE36BBC7003CE17B96DCED990D4F4FB6
            34C0DB153CA40BAF53E1E5854FB97DF9E0011B1AE0ED0A1E4AC9D087D75478DB
            A73DC777020FD8CC800C3C01CF68BA72CADB7CF069976347F0808D0C38EA7FF7
            896DE135155E9E0D6F2EED72F86E4F0C2FEF745E5B1850EFEB3D28C33195034F
            98AEF024DF56C33FEDFFC8258AE2973AF0775332771A81DF98C2A0FEBFFF0BD0
            D5A467ED2DED272F8AE23500AF66450209C9259C300A0FD8B41062E0EB7503F0
            EB42BA6D7162DC303C60530388958F73D21E2B5F40030FC20F80D0B5786DFC8F
            FF3A971D0D589E9B1CBB977953EFEBDDBB072B1168E18145991DADF3D173BFEF
            6632C30698FDFF80667FB09B818BFFB4F06D6C1CF350A3FFFDA788F853700EFC
            8F72DAD9311F1BDA153C608F0CD01E6C5437F97B67006A00785FEE8917EEC969
            E7F1F9D8D06F664C6EB9010C7A5173AE570B50ED36E1775232B72EC48696CC9A
            DFF23A80C0CFEF30F4A70A073A16A642A6C1031667C04B1D7D4FA6A11CCC13B2
            4CC02D262464C9F9C95CD49CB457CB520364818FA8B27F0B961809595112B7AE
            8FFD0C9D736F33F53792932D679405E3390000000049454E44AE426082}
        end
        object ImageTextItem5: TImageTextItem
          Tag = 0
          X = 3
          Y = 143
          Width = 176
          Level = 0
          Index = 4
          Status.Caption = '0'
          Status.Appearance.Fill.Color = clRed
          Status.Appearance.Fill.ColorMirror = clNone
          Status.Appearance.Fill.ColorMirrorTo = clNone
          Status.Appearance.Fill.GradientType = gtSolid
          Status.Appearance.Fill.GradientMirrorType = gtSolid
          Status.Appearance.Fill.BorderColor = clGray
          Status.Appearance.Fill.Rounding = 0
          Status.Appearance.Fill.ShadowOffset = 0
          Status.Appearance.Fill.Glow = gmNone
          Status.Appearance.Font.Charset = DEFAULT_CHARSET
          Status.Appearance.Font.Color = clWhite
          Status.Appearance.Font.Height = -11
          Status.Appearance.Font.Name = 'Tahoma'
          Status.Appearance.Font.Style = []
          Status.Hint = 'Status Hint'
          Caption = 'Relat'#243'rios'
          DescriptionMargin.Top = 0
          Image.Data = {
            89504E470D0A1A0A0000000D4948445200000040000000400806000000AA6971
            DE0000000473424954080808087C086488000000097048597300001BAF00001B
            AF015E1A911C0000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A000000CA49444154789CEDD9C10D40401445514449
            9AD084E234A1093DB1B2239918DC1FFF9E3D795E3E99194D234992B26AE900A5
            8671DA6AAE5F97F9F459BB9A9BFE8105D001683D1DE0AEAB77FA50FACD483F01
            164007A059001D8066017400DAE53AE0ADB57734E927C002E800B4E2BDC0536B
            EF68D24F8005D00168164007A059001D80F6FA9960F43D45FA09B0003A00EDF3
            FF02D1F614E927C002E800340BA003D02C800E40B3003A00CD02E800340BA003
            D02C800E402B3E0F786A9F1EED3EE927C002E800922449941D35B61DFA3FD217
            BC0000000049454E44AE426082}
        end
      end
    end
  end
  object QryNF: TZQuery
    Connection = DataModule1.Con_TheInfinity
    SQL.Strings = (
      'SELECT * FROM NOTA_FISCAL')
    Params = <>
    Left = 8
    Top = 504
  end
  object DsNF: TDataSource
    DataSet = QryNF
    Left = 8
    Top = 456
  end
end
