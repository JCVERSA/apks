.class public Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;
    }
.end annotation


# static fields
.field private static final GRAVITY:I = 0x77

.field public static final LOOP_FOREVER:I = -0x1

.field public static final LOOP_INTRINSIC:I


# instance fields
.field private animationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/b;",
            ">;"
        }
    .end annotation
.end field

.field private applyGravity:Z

.field private destRect:Landroid/graphics/Rect;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private paint:Landroid/graphics/Paint;

.field private final state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/Transformation;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    new-instance v8, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 2
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p5

    move v5, p6

    move-object v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/integration/webp/decoder/WebpDecoder;IILcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    move-object v1, p3

    invoke-direct {v0, p3, v8}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V

    move-object v1, p0

    .line 3
    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isVisible:Z

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    iput-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Paint;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;-><init>(Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;)V

    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private findCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method

.method private getDestRect()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->destRect:Landroid/graphics/Rect;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->destRect:Landroid/graphics/Rect;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->destRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    return-object v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->paint:Landroid/graphics/Paint;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->paint:Landroid/graphics/Paint;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->paint:Landroid/graphics/Paint;

    .line 14
    .line 15
    return-object v0
.end method

.method private notifyAnimationEndToListeners()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->animationCallbacks:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->animationCallbacks:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroidx/vectordrawable/graphics/drawable/b;

    .line 19
    .line 20
    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/b;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private resetLoopCount()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->loopCount:I

    .line 3
    .line 4
    return-void
.end method

.method private startRunning()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    .line 6
    .line 7
    invoke-static {v0, v2}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameCount()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->subscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method private stopRunning()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->unsubscribe(Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader$FrameCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->animationCallbacks:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->applyGravity:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getIntrinsicWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getIntrinsicHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getDestRect()Landroid/graphics/Rect;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/16 v4, 0x77

    .line 29
    .line 30
    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->applyGravity:Z

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getDestRect()Landroid/graphics/Rect;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getPaint()Landroid/graphics/Paint;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getBuffer()Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFirstFrame()Landroid/graphics/Bitmap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getFrameIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getCurrentIndex()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getFrameTransformation()Lcom/bumptech/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getFrameTransformation()Lcom/bumptech/glide/load/Transformation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getIntrinsicLoopCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getLoopCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpacity()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 v0, -0x2

    .line 2
    return v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method isRecycled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->applyGravity:Z

    .line 6
    .line 7
    return-void
.end method

.method public onFrameReady()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->findCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stop()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getFrameIndex()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getFrameCount()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 26
    .line 27
    if-ne v0, v1, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->loopCount:I

    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->loopCount:I

    .line 34
    .line 35
    :cond_1
    iget v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    iget v1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->loopCount:I

    .line 41
    .line 42
    if-lt v1, v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stop()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->notifyAnimationEndToListeners()V

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/b;)V
    .locals 1
    .param p1    # Landroidx/vectordrawable/graphics/drawable/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->animationCallbacks:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->animationCallbacks:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->animationCallbacks:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->getPaint()Landroid/graphics/Paint;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->setFrameTransformation(Lcom/bumptech/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method setIsRunning(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-gtz p1, :cond_1

    .line 3
    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Loop count must be greater than 0, or equal to LOOP_FOREVER, or equal to LOOP_INTRINSIC"

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1

    .line 17
    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 18
    .line 19
    iget-object p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->getLoopCount()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move v0, p1

    .line 31
    :goto_1
    iput v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_3
    iput p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->maxLoopCount:I

    .line 35
    .line 36
    :goto_2
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRecycled:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isVisible:Z

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stopRunning()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isStarted:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->startRunning()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public start()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isStarted:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->resetLoopCount()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isVisible:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->startRunning()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public startFromFirstFrame()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isRunning:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    const-string v1, "You cannot restart a currently running animation."

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->state:Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable$WebpState;->frameLoader:Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/webp/decoder/WebpFrameLoader;->setNextStartFromFirstFrame()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->start()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->isStarted:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->stopRunning()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/b;)Z
    .locals 1
    .param p1    # Landroidx/vectordrawable/graphics/drawable/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;->animationCallbacks:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 14
    return p1
.end method
