.class public Lcom/transsion/playercommon/vishaapis/gslb/GslbService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/vishaapis/gslb/GslbService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final CLOUD_HOST:Ljava/lang/String; = "https://oscloud.palm.tech"

.field private static final CLOUD_HOST_TEST:Ljava/lang/String; = "https://test-oscloud.transsion-os.com"

.field private static final TAG:Ljava/lang/String; = "GslbService"

.field private static final VISHA_DEFAULT_HOST_DOMAIN:Ljava/lang/String; = "https://api.vishavideo.com"

.field private static final VISHA_DEFAULT_HOST_DOMAIN_TEST:Ljava/lang/String; = "https://test-visha.transsion-os.com"

.field private static final VISHA_EE1_COUNTRY_CODE:I = 0xb2

.field private static final VISHA_EE1_HOST_DOMAIN:Ljava/lang/String; = "https://rus-api.vishavideo.com"


# instance fields
.field private final GSLB_VISHA_DOMAINS:[Ljava/lang/String;

.field private mIsInit:Z


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "https://oscloud.palm.tech"

    const-string v1, "https://test-oscloud.transsion-os.com"

    const-string v2, "https://api.vishavideo.com"

    const-string v3, "https://rus-api.vishavideo.com"

    const-string v4, "https://test-visha.transsion-os.com"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->GSLB_VISHA_DOMAINS:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->mIsInit:Z

    return-void
.end method

.method public synthetic constructor <init>(Lzj4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/playercommon/vishaapis/gslb/GslbService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->mIsInit:Z

    return-void
.end method

.method private getDefaultHost()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lge;->e()Z

    move-result p0

    const-string v0, "https://api.vishavideo.com"

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v1, "environment_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const-string v0, "https://test-visha.transsion-os.com"

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/transsion/playercommon/vishaapis/gslb/GslbService;
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$InstanceHolder;->a()Lcom/transsion/playercommon/vishaapis/gslb/GslbService;

    move-result-object v0

    return-object v0
.end method

.method private isTestModeClose()Z
    .locals 2

    invoke-static {}, Lge;->e()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v1, "gslb_mode"

    invoke-static {p0, v1, v0}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public IsSupportGslb()Z
    .locals 1

    sget-boolean v0, Lpp3;->b:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->isTestModeClose()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDomainByApi(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->mIsInit:Z

    const-string v1, "GslbService"

    if-eqz v0, :cond_1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/transsion/gslb/GslbSdk;->getDomain(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gslb init success,get real domain(apiName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gslb not init yet,return main host(apiName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEE1Host()Ljava/lang/String;
    .locals 0

    const-string p0, "https://rus-api.vishavideo.com"

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->GSLB_VISHA_DOMAINS:[Ljava/lang/String;

    new-instance v1, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;

    invoke-direct {v1, p0, p2}, Lcom/transsion/playercommon/vishaapis/gslb/GslbService$1;-><init>(Lcom/transsion/playercommon/vishaapis/gslb/GslbService;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    invoke-static {p1, v0, v1}, Lcom/transsion/gslb/GslbSdk;->init(Landroid/content/Context;[Ljava/lang/String;Lcom/transsion/gslb/GslbSdk$GslbInitListener;)V

    :cond_0
    return-void
.end method

.method public isEE1Country()Z
    .locals 1

    invoke-static {}, Lcom/transsion/playercommon/utils/CountryInfoUtil;->m()I

    move-result p0

    const/16 v0, 0xb2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInit()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/playercommon/vishaapis/gslb/GslbService;->mIsInit:Z

    return p0
.end method

.method public isTestDevHostMode()Z
    .locals 2

    invoke-static {}, Lge;->e()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p0

    const-string v1, "environment_mode"

    invoke-static {p0, v1, v0}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method
