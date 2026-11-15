.class public Lcom/transsion/widgetslib/blur/DynamicBlur;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/blur/DynamicBlur$c;
    }
.end annotation


# static fields
.field public static final w:Ljava/lang/String; = "DynamicBlur"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/graphics/Rect;

.field public final c:Landroid/graphics/Rect;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field public g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public h:Landroid/graphics/Canvas;

.field public i:Landroid/graphics/Bitmap;

.field public j:Landroid/graphics/drawable/BitmapDrawable;

.field public k:I

.field public l:I

.field public m:I

.field public n:Z

.field public o:Landroid/graphics/Bitmap;

.field public final p:Landroid/renderscript/RenderScript;

.field public final q:Landroid/renderscript/ScriptIntrinsicBlur;

.field public r:Landroid/renderscript/Allocation;

.field public s:Landroid/renderscript/Allocation;

.field public t:Landroid/graphics/Bitmap;

.field public u:Z

.field public final v:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->c:Landroid/graphics/Rect;

    const/16 v0, 0x19

    iput v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->k:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->l:I

    const-string v0, "#F7F7F7"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->m:I

    new-instance v0, Lcom/transsion/widgetslib/blur/DynamicBlur$1;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur$1;-><init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->v:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->p:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->q:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/widgetslib/blur/DynamicBlur;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    sget-object v2, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    const-string v3, "copy src form buffer fail!"

    invoke-static {v2, v3, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_2
    :goto_0
    return v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_4
    throw p0
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->r:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->s:Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->q:Landroid/renderscript/ScriptIntrinsicBlur;

    iget v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->k:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->r:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->q:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->r:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->q:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->s:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->s:Landroid/renderscript/Allocation;

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final f()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "computeVerticalScrollRange"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    const-string v2, "reflect invoke computeVerticalScrollRange() fail!"

    invoke-static {v1, v2, p0}, Lbq5;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public final g(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->k()V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->p:Landroid/renderscript/RenderScript;

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->r:Landroid/renderscript/Allocation;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->p:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->s:Landroid/renderscript/Allocation;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->t:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final h()Z
    .locals 6

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->c:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->a:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-boolean v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->u:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->c:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v1

    :goto_0
    sget-object v2, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RectBlurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", RectBlur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", RectIntersect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", paddingBottom: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lbq5;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final i(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 10

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v5, 0x0

    aget v6, v4, v5

    const/4 v7, 0x1

    aget v4, v4, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    if-ne p1, v9, :cond_0

    iget-boolean v9, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->n:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->f()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    iput v6, p2, Landroid/graphics/Rect;->left:I

    iput v4, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v6

    iput v8, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, v4

    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v6, :cond_1

    if-ne v1, v4, :cond_1

    if-ne v2, v8, :cond_1

    if-eq v3, p0, :cond_2

    :cond_1
    move v5, v7

    :cond_2
    return v5
.end method

.method public final j()Landroid/graphics/Bitmap;
    .locals 14

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->a:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->i(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/transsion/widgetslib/blur/DynamicBlur;->i(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    const-string v0, "Hasn\'t intersect region between two views!"

    invoke-static {p0, v0}, Lbq5;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    iget-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->c:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->c:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    iget v7, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->l:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    int-to-float v7, v4

    mul-float/2addr v7, v6

    iget v8, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->l:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    if-lez v5, :cond_f

    if-gtz v7, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v8, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->c:Landroid/graphics/Rect;

    iget v11, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v11

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v10

    iget v10, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->l:I

    int-to-float v10, v10

    div-float v10, v6, v10

    sget-object v11, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "width: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", height: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", dx: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", dy: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", ViewBlurredLocChange: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", ViewBlurLocChange: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", bitmapWidth: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", bitmapHeight: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->l()V

    :cond_3
    iget-boolean v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->n:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iget v6, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->l:I

    int-to-float v6, v6

    div-float/2addr v0, v6

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    if-nez v0, :cond_4

    return-object v3

    :cond_4
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->m:I

    invoke-virtual {v0, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v5, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScrollY()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scrollY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", blurred view height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->b:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    neg-int v6, v9

    iget v7, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->l:I

    div-int/2addr v6, v7

    sub-int/2addr v5, v8

    div-int/2addr v5, v7

    div-int/2addr v2, v7

    div-int/2addr v4, v7

    if-ltz v6, :cond_b

    if-ltz v5, :cond_b

    if-lez v2, :cond_b

    if-gtz v4, :cond_6

    goto :goto_3

    :cond_6
    add-int v7, v6, v2

    iget-object v8, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v7, v8, :cond_a

    add-int v7, v5, v4

    iget-object v8, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_7

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    invoke-static {v7, v6, v5, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    if-nez v4, :cond_8

    iput-object v2, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_8
    invoke-static {v4, v2, v1}, Lcom/transsion/widgetslib/blur/DynamicBlur;->e(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)Z

    move-result v1

    if-nez v1, :cond_9

    return-object v3

    :cond_9
    :goto_1
    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->g(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_a
    :goto_2
    const-string p0, "need dst bitmap dimen over source bitmap"

    invoke-static {v11, p0}, Lbq5;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_b
    :goto_3
    const-string p0, "pivot or dimen out source bitmap"

    invoke-static {v11, p0}, Lbq5;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->h:Landroid/graphics/Canvas;

    invoke-virtual {v0, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->h:Landroid/graphics/Canvas;

    int-to-float v1, v9

    int-to-float v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->g(Landroid/graphics/Bitmap;)V

    :cond_d
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->h:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :cond_e
    :goto_4
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    return-object p0

    :cond_f
    :goto_5
    return-object v3
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->r:Landroid/renderscript/Allocation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->r:Landroid/renderscript/Allocation;

    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->s:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    iput-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->s:Landroid/renderscript/Allocation;

    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->t:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->t:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    iput-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->t:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method public final l()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->j:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    const-string v2, "recycleViewBlurBg, ViewBlurBitmap"

    invoke-static {v1, v2}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->i:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    sget-object v1, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    const-string v2, "recycleViewBlurBg, ScrollViewBitmap"

    invoke-static {v1, v2}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->o:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->k()V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->l()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->j()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->d()V

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->t:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->o(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final o(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->j:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->j:Landroid/graphics/drawable/BitmapDrawable;

    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p1, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBlurViewBackground, 11111: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->j:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    const-string p1, "updateBlurViewBackground, 22222"

    invoke-static {p0, p1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBlurView(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlurView, viewBlur: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->d:Landroid/view/View;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->d:Landroid/view/View;

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBlurredView(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/widgetslib/blur/DynamicBlur;->m()V

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    instance-of v0, p1, Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->n:Z

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->u:Z

    sget-object v0, Lcom/transsion/widgetslib/blur/DynamicBlur;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlurredView, blurredView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", clipToPadding: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->u:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", paddingBottom: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lbq5;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez p1, :cond_4

    new-instance p1, Lcom/transsion/widgetslib/blur/DynamicBlur$a;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur$a;-><init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->g:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->v:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->v:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-nez p1, :cond_5

    new-instance p1, Lcom/transsion/widgetslib/blur/DynamicBlur$b;

    invoke-direct {p1, p0}, Lcom/transsion/widgetslib/blur/DynamicBlur$b;-><init>(Lcom/transsion/widgetslib/blur/DynamicBlur;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iget-object p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_5
    return-void
.end method

.method public setCallback(Lcom/transsion/widgetslib/blur/DynamicBlur$c;)V
    .locals 0

    return-void
.end method

.method public setEraseColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->m:I

    :cond_0
    return-void
.end method

.method public setRadius(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
            to = 0x19L
        .end annotation
    .end param

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x19

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->k:I

    :cond_0
    return-void
.end method

.method public setScaleFactor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iput p1, p0, Lcom/transsion/widgetslib/blur/DynamicBlur;->l:I

    :cond_0
    return-void
.end method
