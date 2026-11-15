.class Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$DrawRoundedCornerFn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;FFFF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bottomLeft:F

.field final synthetic val$bottomRight:F

.field final synthetic val$topLeft:F

.field final synthetic val$topRight:F


# direct methods
.method constructor <init>(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$topLeft:F

    .line 2
    .line 3
    iput p2, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$topRight:F

    .line 4
    .line 5
    iput p3, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomRight:F

    .line 6
    .line 7
    iput p4, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomLeft:F

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public drawRoundedCorners(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$topLeft:F

    .line 7
    .line 8
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$topRight:F

    .line 9
    .line 10
    iget v3, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomRight:F

    .line 11
    .line 12
    iget v4, p0, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils$2;->val$bottomLeft:F

    .line 13
    .line 14
    const/16 v5, 0x8

    .line 15
    .line 16
    new-array v5, v5, [F

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aput v1, v5, v6

    .line 20
    .line 21
    const/4 v6, 0x1

    .line 22
    aput v1, v5, v6

    .line 23
    .line 24
    const/4 v1, 0x2

    .line 25
    aput v2, v5, v1

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    aput v2, v5, v1

    .line 29
    .line 30
    const/4 v1, 0x4

    .line 31
    aput v3, v5, v1

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    aput v3, v5, v1

    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    aput v4, v5, v1

    .line 38
    .line 39
    const/4 v1, 0x7

    .line 40
    aput v4, v5, v1

    .line 41
    .line 42
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 43
    .line 44
    invoke-virtual {v0, p3, v5, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
