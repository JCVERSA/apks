.class public Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceControlViewHostAdapter;


# instance fields
.field private mSurfaceControlViewHost:Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranSurfaceControlViewHost()Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;->mSurfaceControlViewHost:Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;->mSurfaceControlViewHost:Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;->mSurfaceControlViewHost:Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;

    return-object p0
.end method


# virtual methods
.method public relayout(Landroid/view/SurfaceControlViewHost;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;->getTranSurfaceControlViewHost()Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;->relayout(Landroid/view/SurfaceControlViewHost;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setView(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurfaceControlViewHost;->getTranSurfaceControlViewHost()Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/view/TranSurfaceControlViewHost;->setView(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
