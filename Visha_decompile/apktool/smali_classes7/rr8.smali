.class public Lrr8;
.super Lvec;
.source "SourceFile"


# static fields
.field public static c:Ljava/util/List;


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lrr8;->c:Ljava/util/List;

    const-class v1, Llw5;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lrr8;->c:Ljava/util/List;

    const-class v1, Lzz4;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lrr8;->c:Ljava/util/List;

    const-class v1, Llz6;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lrr8;->c:Ljava/util/List;

    const-class v1, Lec2;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lvec;-><init>()V

    const-string v0, "RegionInfoTask"

    iput-object v0, p0, Lrr8;->b:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic h(Lrr8;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lrr8;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic i(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lrr8;->m(Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic j(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lrr8;->n(Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic k(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lrr8;->o(Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic create(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lrr8;->l(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public dependencies()Ljava/util/List;
    .locals 0

    sget-object p0, Lrr8;->c:Ljava/util/List;

    return-object p0
.end method

.method public l(Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0, p1}, Lrr8;->p(Landroid/content/Context;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final m(Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V
    .locals 6

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/CountryInfoBean;->getRegionId()I

    move-result p0

    int-to-long v0, p0

    invoke-static {}, Lpp3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lga2;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lpp3;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper;->getCacheDataVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppGlobalConfigHelper;->getAppGlobalConfig(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-static {}, Lpy2;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lpy2;->d(Lzf1;Ljava/lang/String;)V

    invoke-static {}, Lw;->h()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p2}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AIConfigHelper;->requestAISubtitleConfig(Landroid/content/Context;)V

    :cond_1
    invoke-static {p2}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/PlayerConfigHelper;->requestPlayCompleteRecommend(Landroid/content/Context;)V

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/SmartEditConfigHelper;->requestSmartEditApiKeys()V

    sget-object p0, Lkm6;->a:Lkm6$a;

    invoke-virtual {p0}, Lkm6$a;->a()Lkm6;

    move-result-object p0

    invoke-virtual {p0}, Lkm6;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final n(Lcom/transsion/dbdata/beans/CountryInfoBean;Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->getInstance()Lcom/transsion/playercommon/vishaapis/gslb/GslbService;

    move-result-object v0

    new-instance v1, Lrr8$b;

    invoke-direct {v1, p0, p1}, Lrr8$b;-><init>(Lrr8;Lcom/transsion/dbdata/beans/CountryInfoBean;)V

    invoke-virtual {v0, p2, v1}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->init(Landroid/content/Context;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    return-void
.end method

.method public final o(Lcom/transsion/dbdata/beans/CountryInfoBean;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/CountryInfoBean;->getRegionId()I

    move-result p1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getInstance()Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getCacheDataVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/transsion/playercommon/vishaapis/appconfig/helper/AppLayoutConfigHelper;->getAppLayoutConfig(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lrr8;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initLayoutConfig failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final p(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lrr8$a;

    invoke-direct {v0, p0, p1}, Lrr8$a;-><init>(Lrr8;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->p(Lcom/transsion/playercommon/utils/CountryInfoUtil$c;)V

    invoke-static {p1}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->j(Landroid/content/Context;)V

    return-void
.end method
