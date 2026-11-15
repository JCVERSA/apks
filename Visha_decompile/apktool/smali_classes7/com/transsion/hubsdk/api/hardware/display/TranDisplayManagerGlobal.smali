.class public Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManagerGlobal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranDisplayManagerGlobal"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManagerGlobalAdapter;

.field private mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManagerGlobalAdapter;


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
.method public getRealDisplay(I)Landroid/view/Display;
    .locals 1

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33311:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManagerGlobal;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerGlobalAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerGlobalAdapter;->getRealDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/hardware/display/ITranDisplayManagerGlobalAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManagerGlobal;->TAG:Ljava/lang/String;

    const-string v0, "TranThubDisplayManagerGlobalAdapter"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManagerGlobal;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManagerGlobalAdapter;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManagerGlobalAdapter;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManagerGlobalAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManagerGlobal;->mThubService:Lcom/transsion/hubsdk/core/hardware/display/TranThubDisplayManagerGlobalAdapter;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManagerGlobal;->TAG:Ljava/lang/String;

    const-string v0, "TranAospDisplayManagerGlobalAdapter"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManagerGlobal;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManagerGlobalAdapter;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManagerGlobalAdapter;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManagerGlobalAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/hardware/display/TranDisplayManagerGlobal;->mAospService:Lcom/transsion/hubsdk/aosp/hardware/display/TranAospDisplayManagerGlobalAdapter;

    :cond_2
    return-object p1
.end method
