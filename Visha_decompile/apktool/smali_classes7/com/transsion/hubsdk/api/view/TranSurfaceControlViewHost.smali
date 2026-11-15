.class public Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranSurfaceControlViewHost"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;


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
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->TAG:Ljava/lang/String;

    const-string v0, "TranThubSurfaceControlViewHost"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->TAG:Ljava/lang/String;

    const-string v0, "TranAospSurfaceControlViewHost"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospSurfaceControlViewHost;

    :cond_2
    return-object p1
.end method

.method public relayout(Landroid/view/SurfaceControlViewHost;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;->relayout(Landroid/view/SurfaceControlViewHost;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name or parent should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setView(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33441:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranSurfaceControlViewHost;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;->setView(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "name or parent should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
