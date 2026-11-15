.class public final Lnf9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf9$a;
    }
.end annotation


# static fields
.field public static final a:Lnf9;

.field public static final b:Landroid/graphics/Paint;

.field public static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnf9;

    invoke-direct {v0}, Lnf9;-><init>()V

    sput-object v0, Lnf9;->a:Lnf9;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lnf9;->b:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lnf9;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap;F)V
    .locals 0

    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p0

    invoke-static {p0}, Landroid/renderscript/Element;->A_8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p2

    invoke-static {p0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    invoke-static {p0, p3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p0

    invoke-virtual {p2, p4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {p2, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {p2, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {p0, p3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {p2}, Landroid/renderscript/BaseObj;->destroy()V

    return-void
.end method

.method public final b(Landroid/content/Context;[FF)Landroid/graphics/NinePatch;
    .locals 14

    move-object v7, p0

    move/from16 v0, p3

    const/4 v8, 0x1

    aget v1, p2, v8

    const/4 v2, 0x2

    aget v3, p2, v2

    add-float/2addr v1, v3

    const/4 v3, 0x5

    aget v3, p2, v3

    const/4 v4, 0x6

    aget v4, p2, v4

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float v3, v0, v1

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v4, 0x7

    aget v4, p2, v4

    add-float/2addr v1, v4

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x4

    aget v5, p2, v5

    add-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float v4, v0, v1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v1, 0x41c80000    # 25.0f

    invoke-static {v0, v9, v1}, Lwn8;->j(FFF)F

    move-result v10

    cmpg-float v5, v0, v1

    if-gtz v5, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    div-float/2addr v1, v0

    move v11, v1

    :goto_0
    int-to-float v1, v2

    mul-float/2addr v0, v1

    add-float v1, v3, v0

    mul-float/2addr v1, v11

    float-to-int v1, v1

    add-float/2addr v0, v4

    mul-float/2addr v0, v11

    float-to-int v0, v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    const-string v5, "createBitmap(\n          \u2026.Config.ALPHA_8\n        )"

    invoke-static {v12, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {v13, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, v12

    move v2, v3

    move v3, v4

    move-object/from16 v4, p2

    move v5, v10

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lnf9;->d(Landroid/graphics/Bitmap;FF[FFF)V

    move-object v0, p1

    invoke-virtual {p0, v12, p1, v13, v10}, Lnf9;->a(Landroid/graphics/Bitmap;Landroid/content/Context;Landroid/graphics/Bitmap;F)V

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    cmpg-float v0, v11, v9

    if-gez v0, :cond_1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v11

    float-to-int v0, v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    float-to-int v1, v1

    invoke-static {v13, v0, v1, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    move-object v13, v0

    :cond_1
    invoke-virtual {p0, v13}, Lnf9;->f(Landroid/graphics/Bitmap;)Landroid/graphics/NinePatch;

    move-result-object v0

    return-object v0
.end method

.method public final c(II)[B
    .locals 5

    const/4 p0, 0x2

    div-int/2addr p2, p0

    add-int/lit8 v0, p2, -0x1

    div-int/2addr p1, p0

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x1

    add-int/2addr p2, v2

    add-int/2addr p1, v2

    const/16 v3, 0x54

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 p0, 0x9

    int-to-byte v4, p0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_0
    if-ge v4, p0, :cond_0

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    const-string p1, "buffer.array()"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Landroid/graphics/Bitmap;FF[FFF)V
    .locals 1

    new-instance p0, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v0, 0x0

    invoke-direct {p0, p4, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result p1

    invoke-virtual {p2, p5, p5}, Landroid/graphics/Canvas;->translate(FF)V

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p6, p6, p4, p4}, Landroid/graphics/Canvas;->scale(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p4, Lnf9;->b:Landroid/graphics/Paint;

    invoke-virtual {p0, p2, p4}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    invoke-virtual {p2, p3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw p0
.end method

.method public final e(Landroid/content/Context;[FF)Landroid/graphics/NinePatch;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "radii"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lnf9;->c:Ljava/util/Map;

    new-instance v0, Lnf9$a;

    invoke-direct {v0, p2, p3}, Lnf9$a;-><init>([FF)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lnf9;->a:Lnf9;

    invoke-virtual {v1, p1, p2, p3}, Lnf9;->b(Landroid/content/Context;[FF)Landroid/graphics/NinePatch;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v1, Landroid/graphics/NinePatch;

    return-object v1
.end method

.method public final f(Landroid/graphics/Bitmap;)Landroid/graphics/NinePatch;
    .locals 3

    new-instance v0, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lnf9;->c(II)[B

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    return-object v0
.end method
