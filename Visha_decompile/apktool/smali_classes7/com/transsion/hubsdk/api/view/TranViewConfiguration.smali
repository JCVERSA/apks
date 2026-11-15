.class public Lcom/transsion/hubsdk/api/view/TranViewConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranViewConfiguration"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;


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
.method public getHoverTapSlop()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;->getHoverTapSlop()I

    move-result p0

    return p0
.end method

.method public getHoverTapTimeout()I
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;->getHoverTapTimeout()I

    move-result p0

    return p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranViewConfigurationAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->TAG:Ljava/lang/String;

    const-string v0, "TranThubViewConfiguration"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubViewConfiguration;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->TAG:Ljava/lang/String;

    const-string v0, "TranAospViewConfiguration"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranViewConfiguration;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospViewConfiguration;

    :cond_2
    return-object p1
.end method
