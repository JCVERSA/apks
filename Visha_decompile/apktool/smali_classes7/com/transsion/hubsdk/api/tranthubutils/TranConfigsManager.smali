.class public Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranConfigsManager"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospConfigs;

.field private mThubService:Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;


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
.method public getAsset(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getAsset(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getAsset(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getConfigs(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getConfigs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getConfigsList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getConfigsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getConfigsList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getMedia(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getMedia(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->getNativeLibrary(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->mThubService:Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->mThubService:Lcom/transsion/hubsdk/core/tranthubutils/TranThubConfigs;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->TAG:Ljava/lang/String;

    const-string v0, "TranConfigsManager"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->mAospService:Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospConfigs;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospConfigs;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospConfigs;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->mAospService:Lcom/transsion/hubsdk/aosp/tranthubutils/TranAospConfigs;

    :cond_2
    return-object p1
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33391:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/tranthubutils/TranConfigsManager;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/tranthubutils/ITranConfigsAdapter;->initialize(Ljava/lang/String;)V

    return-void
.end method
