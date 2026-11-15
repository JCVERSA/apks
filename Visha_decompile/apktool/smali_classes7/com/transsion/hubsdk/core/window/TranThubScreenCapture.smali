.class public Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/window/ITranScreenCaptureAdapter;


# instance fields
.field private mScreenCapture:Lcom/transsion/hubsdk/window/TranScreenCapture;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/window/TranScreenCapture;

    invoke-direct {v0}, Lcom/transsion/hubsdk/window/TranScreenCapture;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;->mScreenCapture:Lcom/transsion/hubsdk/window/TranScreenCapture;

    return-void
.end method


# virtual methods
.method public containsSecureLayers(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;->mScreenCapture:Lcom/transsion/hubsdk/window/TranScreenCapture;

    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/window/TranScreenCapture;->containsSecureLayers(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getCaptureArgs(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/transsion/hubsdk/core/window/TranThubScreenCapture;->mScreenCapture:Lcom/transsion/hubsdk/window/TranScreenCapture;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/window/TranScreenCapture;->getCaptureArgs(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
