.class public Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranAppPropertiesManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;

.field private mThubService:Lcom/transsion/hubsdk/core/tranthubutils/TranThubAppProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;->mThubService:Lcom/transsion/hubsdk/core/tranthubutils/TranThubAppProperties;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/tranthubutils/TranThubAppProperties;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/tranthubutils/TranThubAppProperties;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;->mThubService:Lcom/transsion/hubsdk/core/tranthubutils/TranThubAppProperties;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;->TAG:Ljava/lang/String;

    const-string v0, "TranAospAppProperties"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;->mAospService:Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;->mAospService:Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospAppProperties;

    :cond_2
    return-object p1
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranAppPropertiesManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranAppPropertiesAdapter;->initialize(Ljava/lang/String;)V

    return-void
.end method
