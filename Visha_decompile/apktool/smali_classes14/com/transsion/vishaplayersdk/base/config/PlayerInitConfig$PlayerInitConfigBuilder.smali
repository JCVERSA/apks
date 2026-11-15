.class public final Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlayerInitConfigBuilder"
.end annotation


# instance fields
.field private context:Landroid/app/Application;

.field private mClientIP:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private mGAID:Ljava/lang/String;

.field private mIsLogin:Z

.field private mLanguageCode:Ljava/lang/String;

.field private mOpenid:Ljava/lang/String;

.field private mPalmToken:Ljava/lang/String;

.field private mPlayerActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mTokenType:Ljava/lang/String;

.field private mUserToken:Ljava/lang/String;

.field private mVAID:Ljava/lang/String;

.field private mbVIP:Z

.field private playerExtras:Ljava/lang/Object;

.field private playerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aPlayerInitConfig()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 1

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;
    .locals 2

    new-instance v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;

    invoke-direct {v0}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;-><init>()V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->playerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->playerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->context:Landroid/app/Application;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->context:Landroid/app/Application;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->playerExtras:Ljava/lang/Object;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->playerExtras:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mIsLogin:Z

    iput-boolean v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mIsLogin:Z

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mOpenid:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mOpenid:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mUserToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mUserToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mPlayerActivity:Ljava/lang/ref/WeakReference;

    invoke-static {v0, v1}, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->a(Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;Ljava/lang/ref/WeakReference;)V

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mPalmToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mPalmToken:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mCountryCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mCountryCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mLanguageCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mLanguageCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mClientIP:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mClientIP:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mGAID:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mGAID:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mVAID:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mVAID:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mTokenType:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mTokenType:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mbVIP:Z

    iput-boolean p0, v0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig;->mbVIP:Z

    return-object v0
.end method

.method public whitTokenType(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mTokenType:Ljava/lang/String;

    return-object p0
.end method

.method public whitVIP(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mbVIP:Z

    return-object p0
.end method

.method public withClientIP(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mClientIP:Ljava/lang/String;

    return-object p0
.end method

.method public withContext(Landroid/app/Application;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->context:Landroid/app/Application;

    return-object p0
.end method

.method public withCountryCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method public withGAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mGAID:Ljava/lang/String;

    return-object p0
.end method

.method public withLanguageCode(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method public withLoginState(Z)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mIsLogin:Z

    return-object p0
.end method

.method public withPalmToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mPalmToken:Ljava/lang/String;

    return-object p0
.end method

.method public withPlayerActivity(Landroid/app/Activity;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mPlayerActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public withPlayerExtras(Ljava/lang/Object;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->playerExtras:Ljava/lang/Object;

    return-object p0
.end method

.method public withPlayerType(Lcom/transsion/vishaplayersdk/base/config/PlayerType;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->playerType:Lcom/transsion/vishaplayersdk/base/config/PlayerType;

    return-object p0
.end method

.method public withUserOpenID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mOpenid:Ljava/lang/String;

    return-object p0
.end method

.method public withUserToken(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mUserToken:Ljava/lang/String;

    return-object p0
.end method

.method public withVAID(Ljava/lang/String;)Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/base/config/PlayerInitConfig$PlayerInitConfigBuilder;->mVAID:Ljava/lang/String;

    return-object p0
.end method
