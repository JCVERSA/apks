.class public Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig$API;
    }
.end annotation


# static fields
.field public static final APP_SECRET_ONLINE:Ljava/lang/String; = "kkLCdl3*p9mQPkZtOy"

.field public static final APP_SECRET_TEST:Ljava/lang/String; = "oN*ix&ASD#z&jsTFZ%(YFy("

.field public static final BASE_HOST:Ljava/lang/String;

.field public static final BASE_HOST_ONLINE:Ljava/lang/String; = "https://api.vishavideo.com"

.field public static final BASE_HOST_TEST:Ljava/lang/String; = "https://test-visha.transsion-os.com"

.field public static bTestMode:Z = false

.field public static mClientIP:Ljava/lang/String;

.field public static mCountryCode:Ljava/lang/String;

.field public static mGAID:Ljava/lang/String;

.field public static mLanguageCode:Ljava/lang/String;

.field public static mOpenid:Ljava/lang/String;

.field public static mTokenType:Ljava/lang/String;

.field public static mUserToken:Ljava/lang/String;

.field public static mVAID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://api.vishavideo.com"

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->BASE_HOST:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mUserToken:Ljava/lang/String;

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mTokenType:Ljava/lang/String;

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mCountryCode:Ljava/lang/String;

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mLanguageCode:Ljava/lang/String;

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mClientIP:Ljava/lang/String;

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mGAID:Ljava/lang/String;

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mOpenid:Ljava/lang/String;

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mVAID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReferer()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/transsion/utils/deviceinfo/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    move-object v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/ga/AthenaAnalytics;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mOpenid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "visha "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->bTestMode:Z

    if-eqz v1, :cond_0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initConfigParameter(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getUserToken()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mUserToken:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getClientIP()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mClientIP:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getGAID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mGAID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getOpenid()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mOpenid:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getVAID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mVAID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->getTokenType()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/transsion/vishaplayersdk/netservices/PlayerServiceConfig;->mTokenType:Ljava/lang/String;

    :cond_0
    return-void
.end method
