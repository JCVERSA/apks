.class public Lvxc;
.super Lorg/schabi/newpipe/extractor/StreamingService;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/List;

.field public static final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 110

    const-string v0, "en-GB"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/Localization;->listFrom([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lvxc;->c:Ljava/util/List;

    const-string v108, "YE"

    const-string v109, "ZW"

    const-string v1, "DZ"

    const-string v2, "AR"

    const-string v3, "AU"

    const-string v4, "AT"

    const-string v5, "AZ"

    const-string v6, "BH"

    const-string v7, "BD"

    const-string v8, "BY"

    const-string v9, "BE"

    const-string v10, "BO"

    const-string v11, "BA"

    const-string v12, "BR"

    const-string v13, "BG"

    const-string v14, "KH"

    const-string v15, "CA"

    const-string v16, "CL"

    const-string v17, "CO"

    const-string v18, "CR"

    const-string v19, "HR"

    const-string v20, "CY"

    const-string v21, "CZ"

    const-string v22, "DK"

    const-string v23, "DO"

    const-string v24, "EC"

    const-string v25, "EG"

    const-string v26, "SV"

    const-string v27, "EE"

    const-string v28, "FI"

    const-string v29, "FR"

    const-string v30, "GE"

    const-string v31, "DE"

    const-string v32, "GH"

    const-string v33, "GR"

    const-string v34, "GT"

    const-string v35, "HN"

    const-string v36, "HK"

    const-string v37, "HU"

    const-string v38, "IS"

    const-string v39, "IN"

    const-string v40, "ID"

    const-string v41, "IQ"

    const-string v42, "IE"

    const-string v43, "IL"

    const-string v44, "IT"

    const-string v45, "JM"

    const-string v46, "JP"

    const-string v47, "JO"

    const-string v48, "KZ"

    const-string v49, "KE"

    const-string v50, "KW"

    const-string v51, "LA"

    const-string v52, "LV"

    const-string v53, "LB"

    const-string v54, "LY"

    const-string v55, "LI"

    const-string v56, "LT"

    const-string v57, "LU"

    const-string v58, "MY"

    const-string v59, "MT"

    const-string v60, "MX"

    const-string v61, "ME"

    const-string v62, "MA"

    const-string v63, "NP"

    const-string v64, "NL"

    const-string v65, "NZ"

    const-string v66, "NI"

    const-string v67, "NG"

    const-string v68, "MK"

    const-string v69, "NO"

    const-string v70, "OM"

    const-string v71, "PK"

    const-string v72, "PA"

    const-string v73, "PG"

    const-string v74, "PY"

    const-string v75, "PE"

    const-string v76, "PH"

    const-string v77, "PL"

    const-string v78, "PT"

    const-string v79, "PR"

    const-string v80, "QA"

    const-string v81, "RO"

    const-string v82, "RU"

    const-string v83, "SA"

    const-string v84, "SN"

    const-string v85, "RS"

    const-string v86, "SG"

    const-string v87, "SK"

    const-string v88, "SI"

    const-string v89, "ZA"

    const-string v90, "KR"

    const-string v91, "ES"

    const-string v92, "LK"

    const-string v93, "SE"

    const-string v94, "CH"

    const-string v95, "TW"

    const-string v96, "TZ"

    const-string v97, "TH"

    const-string v98, "TN"

    const-string v99, "TR"

    const-string v100, "UG"

    const-string v101, "UA"

    const-string v102, "AE"

    const-string v103, "GB"

    const-string v104, "US"

    const-string v105, "UY"

    const-string v106, "VE"

    const-string v107, "VN"

    filled-new-array/range {v1 .. v109}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/localization/ContentCountry;->listFrom([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lvxc;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->LIVE:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    sget-object v3, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    filled-new-array {v0, v1, v2, v3}, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "YouTube"

    invoke-direct {p0, p1, v1, v0}, Lorg/schabi/newpipe/extractor/StreamingService;-><init>(ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic y(Lvxc;Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lvxc;->z(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;

    move-result-object p0

    return-object p0
.end method

.method private synthetic z(Lem5;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;Ljava/lang/String;)Lig5;
    .locals 0

    new-instance p2, Ltzc;

    invoke-virtual {p1, p3}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {p2, p0, p1, p4}, Ltzc;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    return-object p2
.end method


# virtual methods
.method public b(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lus0;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/a;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public c()Lem5;
    .locals 0

    invoke-static {}, Lrtc;->r()Lrtc;

    move-result-object p0

    return-object p0
.end method

.method public d(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lfu0;
    .locals 1

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;

    invoke-virtual {p1, p0}, Lorg/schabi/newpipe/extractor/linkhandler/ReadyChannelTabListLinkHandler;->getChannelTabExtractor(Lorg/schabi/newpipe/extractor/StreamingService;)Lfu0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeChannelTabExtractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public f(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lea1;
    .locals 1

    new-instance v0, Louc;

    invoke-direct {v0, p0, p1}, Louc;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public g()Lem5;
    .locals 0

    invoke-static {}, Lquc;->r()Lquc;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lrp3;
    .locals 2

    new-instance v0, Lcvc;

    invoke-virtual {p0}, Lvxc;->c()Lem5;

    move-result-object v1

    invoke-virtual {v1, p1}, Lem5;->n(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcvc;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public j()Ljg5;
    .locals 4

    const-string v0, "Trending"

    new-instance v1, Ljg5;

    invoke-direct {v1, p0}, Ljg5;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;)V

    invoke-static {}, Luzc;->r()Luzc;

    move-result-object v2

    :try_start_0
    new-instance v3, Luxc;

    invoke-direct {v3, p0, v2}, Luxc;-><init>(Lvxc;Lem5;)V

    invoke-virtual {v1, v3, v2, v0}, Ljg5;->a(Ljg5$b;Lem5;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljg5;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public n(Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)Lorg/schabi/newpipe/extractor/playlist/a;
    .locals 1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcxc;->h0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lxvc;

    invoke-direct {v0, p0, p1}, Lxvc;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0

    :cond_0
    new-instance v0, Loxc;

    invoke-direct {v0, p0, p1}, Loxc;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;)V

    return-object v0
.end method

.method public o()Lem5;
    .locals 0

    invoke-static {}, Lqxc;->r()Lqxc;

    move-result-object p0

    return-object p0
.end method

.method public p(Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)Lorg/schabi/newpipe/extractor/search/SearchExtractor;
    .locals 2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;->getContentFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "music_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lgwc;

    invoke-direct {v0, p0, p1}, Lgwc;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v0

    :cond_0
    new-instance v0, Lsxc;

    invoke-direct {v0, p0, p1}, Lsxc;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/SearchQueryHandler;)V

    return-object v0
.end method

.method public t(Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
    .locals 1

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;

    invoke-direct {v0, p0, p1}, Lorg/schabi/newpipe/extractor/services/youtube/extractors/f;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-object v0
.end method

.method public u()Lil5;
    .locals 0

    invoke-static {}, Ldzc;->m()Ldzc;

    move-result-object p0

    return-object p0
.end method

.method public v()Ljava/util/List;
    .locals 0

    sget-object p0, Lvxc;->d:Ljava/util/List;

    return-object p0
.end method

.method public w()Ljava/util/List;
    .locals 0

    sget-object p0, Lvxc;->c:Ljava/util/List;

    return-object p0
.end method
