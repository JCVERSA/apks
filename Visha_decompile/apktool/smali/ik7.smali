.class public Lik7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 81

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "yahoo.com"

    const-string v3, "outlook.com"

    const-string v4, "gmail.com"

    const-string v5, "hotmail.com"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lik7;->a:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const-string v79, "be-local.com"

    const-string v80, "infoclub.com.np"

    const-string v2, "msn.com"

    const-string v3, "aol.com"

    const-string v4, "ask.com"

    const-string v5, "live.com"

    const-string v6, "qq.com"

    const-string v7, "0355.net"

    const-string v8, "yeah.net"

    const-string v9, "mail.com"

    const-string v10, "walla.com"

    const-string v11, "inbox.com"

    const-string v12, "163.com"

    const-string v13, "163.net"

    const-string v14, "263.net"

    const-string v15, "3721.net"

    const-string v16, "126.com"

    const-string v17, "sina.com"

    const-string v18, "21cn.com"

    const-string v19, "sohu.com"

    const-string v20, "tom.com"

    const-string v21, "etang.com"

    const-string v22, "eyou.com"

    const-string v23, "56.com"

    const-string v24, "x.cn"

    const-string v25, "chinaren.com"

    const-string v26, "sogou.com"

    const-string v27, "citiz.com"

    const-string v28, "cyber.net.pk"

    const-string v29, "omantel.net.om"

    const-string v30, "libero.it"

    const-string v31, "webmail.co.za"

    const-string v32, "xtra.co.nz"

    const-string v33, "pacific.net.sg"

    const-string v34, "FASTMAIL.FM"

    const-string v35, "emirates.net.ae"

    const-string v36, "eim.ae"

    const-string v37, "net.sy"

    const-string v38, "scs-net.org"

    const-string v39, "mail.sy"

    const-string v40, "ttnet.net.tr"

    const-string v41, "superonline.com"

    const-string v42, "yemen.net.ye"

    const-string v43, "y.net.ye"

    const-string v44, "cytanet.com.cy"

    const-string v45, "cyber.net.pk"

    const-string v46, "vsnl.com"

    const-string v47, "wilnetonline.net"

    const-string v48, "cal3.vsnl.net.in"

    const-string v49, "rediffmail.com"

    const-string v50, "sancharnet.in"

    const-string v51, "NDF.VSNL.NET.IN"

    const-string v52, "DEL3.VSNL.NET.IN"

    const-string v53, "yandex.ru"

    const-string v54, "MAIL.RU"

    const-string v55, "ADSL.LOXINFO.COM"

    const-string v56, "SCS-NET.ORG"

    const-string v57, "EMIRATES.NET.AE"

    const-string v58, "QUALITYNET.NET"

    const-string v59, "hn.vnn.vn"

    const-string v60, "hcm.fpt.vn"

    const-string v61, "hcm.vnn.vn"

    const-string v62, "zamnet.zm"

    const-string v63, "amet.com.ar"

    const-string v64, "infovia.com.ar"

    const-string v65, "mt.net.mk"

    const-string v66, "sotelgui.net.gn"

    const-string v67, "prodigy.net.mx"

    const-string v68, "citechco.net"

    const-string v69, "africaonline.co.zw"

    const-string v70, "samara.co.zw"

    const-string v71, "zol.co.zw"

    const-string v72, "mweb.co.zw"

    const-string v73, "aviso.ci"

    const-string v74, "africaonline.co.ci"

    const-string v75, "afnet.net"

    const-string v76, "mti.gov.na"

    const-string v77, "namibnet.com"

    const-string v78, "iway.na"

    filled-new-array/range {v2 .. v80}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lik7;->b:Ljava/util/ArrayList;

    return-void
.end method
