.class public Lcom/transsion/hubsdk/core/graphics/TranThubGraphicBuffer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/graphics/ITranGraphicBufferAdapter;


# instance fields
.field private mService:Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;

    invoke-direct {v0}, Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;-><init>()V

    iput-object v0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubGraphicBuffer;->mService:Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;

    return-void
.end method


# virtual methods
.method public createFromHardwareBuffer(Landroid/view/Display;II)Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/hubsdk/core/graphics/TranThubGraphicBuffer;->mService:Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;->createFromHardwareBuffer(Landroid/view/Display;II)Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;

    invoke-direct {p1}, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->setWidth(I)V

    .line 5
    invoke-virtual {p0}, Lcom/transsion/hubsdk/graphics/TranGraphicBuffer;->getHeight()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;->setHeight(I)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public createFromHardwareBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;
    .locals 0

    .line 6
    new-instance p0, Lcom/transsion/hubsdk/aosp/graphics/TranAospGraphicBuffer;

    invoke-direct {p0}, Lcom/transsion/hubsdk/aosp/graphics/TranAospGraphicBuffer;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/transsion/hubsdk/aosp/graphics/TranAospGraphicBuffer;->createFromHardwareBuffer(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Lcom/transsion/hubsdk/api/graphics/TranGraphicBuffer;

    move-result-object p0

    return-object p0
.end method
