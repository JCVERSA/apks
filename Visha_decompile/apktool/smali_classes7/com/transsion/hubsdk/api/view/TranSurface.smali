.class public Lcom/transsion/hubsdk/api/view/TranSurface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSurface"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurface;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurface;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranSurface;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSurface"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurface;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurface;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubSurface;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubSurface;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurface;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurface;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranSurface;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSurface"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurface;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurface;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospSurface;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospSurface;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurface;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurface;

    :cond_2
    return-object p1
.end method

.method public setBuffersFormatOverride(Landroid/view/Surface;I)I
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33471:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurface;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceAdapter;->setBuffersFormatOverride(Landroid/view/Surface;I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "surface cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
