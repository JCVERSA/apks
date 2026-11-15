.class public Lcom/transsion/hubsdk/common/init/TranHubSdkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranHubSdkManager"

.field private static sContext:Landroid/content/Context;

.field private static sInstance:Lcom/transsion/hubsdk/common/init/TranHubSdkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/transsion/hubsdk/common/init/TranHubSdkManager;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/common/init/TranHubSdkManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;

    invoke-direct {v0}, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;-><init>()V

    sput-object v0, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/common/init/TranHubSdkManager;

    :cond_0
    sget-object v0, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->sInstance:Lcom/transsion/hubsdk/common/init/TranHubSdkManager;

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/transsion/hubsdk/common/init/TranHubSdkManager;->sContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/transsion/hubsdk/common/verifykey/TranVerifyKeyManager;->verify(Landroid/content/Context;)I

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->setLogLevel(I)I

    return-void
.end method
