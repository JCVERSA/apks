.class public Lcom/transsion/hubsdk/core/view/TranThubSurface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/view/ITranSurfaceAdapter;


# instance fields
.field private mTranSurface:Lcom/transsion/hubsdk/view/TranSurface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTranSurfaceImpl()Lcom/transsion/hubsdk/view/TranSurface;
    .locals 1

    iget-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurface;->mTranSurface:Lcom/transsion/hubsdk/view/TranSurface;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/hubsdk/view/TranSurface;

    invoke-direct {v0}, Lcom/transsion/hubsdk/view/TranSurface;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurface;->mTranSurface:Lcom/transsion/hubsdk/view/TranSurface;

    :cond_0
    iget-object p0, p0, Lcom/transsion/hubsdk/core/view/TranThubSurface;->mTranSurface:Lcom/transsion/hubsdk/view/TranSurface;

    return-object p0
.end method


# virtual methods
.method public setBuffersFormatOverride(Landroid/view/Surface;I)I
    .locals 0

    invoke-direct {p0}, Lcom/transsion/hubsdk/core/view/TranThubSurface;->getTranSurfaceImpl()Lcom/transsion/hubsdk/view/TranSurface;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/view/TranSurface;->setBuffersFormatOverride(Landroid/view/Surface;I)I

    move-result p0

    return p0
.end method
