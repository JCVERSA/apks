.class public Lcom/yandex/div/core/widget/LoadableImageView;
.super Lcom/yandex/div/internal/widget/AspectImageView;
.source "SourceFile"

# interfaces
.implements Lkn5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/widget/LoadableImageView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001kB%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\r\u001a\u00020\u000c*\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0017J\u0019\u0010\u001b\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00152\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010 J\u0019\u0010!\u001a\u00020\u00152\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u0008!\u0010 J\u0019\u0010!\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008!\u0010\u001cJ\u001b\u0010$\u001a\u00020\u00152\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030\"H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0015\u0010&\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\"H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010(\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0017J\u0019\u0010)\u001a\u00020\u00152\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000cH\u0017\u00a2\u0006\u0004\u0008)\u0010\u001cJ\u0019\u0010+\u001a\u00020\u00152\u0008\u0010*\u001a\u0004\u0018\u00010\u001eH\u0017\u00a2\u0006\u0004\u0008+\u0010 J\u0017\u0010-\u001a\u00020\u00152\u0006\u0010,\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008-\u0010\u001cJ\u0019\u0010/\u001a\u00020\u00152\u0008\u0010.\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008/\u0010\u001cJ\u001f\u00103\u001a\u00020\u00152\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u00083\u00104J\u000f\u00105\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u00085\u0010\u0017J\u000f\u00106\u001a\u00020\u0015H\u0014\u00a2\u0006\u0004\u00086\u0010\u0017J\u0017\u00108\u001a\u00020\u00152\u0006\u00107\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u00088\u00109J\u001f\u0010<\u001a\u00020\u00152\u0010\u0008\u0002\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010:\u00a2\u0006\u0004\u0008<\u0010=R*\u0010C\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0013\u0010>\u0012\u0004\u0008B\u0010\u0017\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010 R$\u0010K\u001a\u0004\u0018\u00010D8\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0016\u0010U\u001a\u00020R8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008S\u0010TR4\u0010\\\u001a\u0004\u0018\u00010\u000c2\u0008\u0010V\u001a\u0004\u0018\u00010\u000c8\u0006@FX\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008W\u0010P\u0012\u0004\u0008[\u0010\u0017\u001a\u0004\u0008X\u0010Y\"\u0004\u0008Z\u0010\u001cR(\u0010a\u001a\u0004\u0018\u00010R2\u0008\u0010V\u001a\u0004\u0018\u00010R8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008]\u0010^\"\u0004\u0008_\u0010`R$\u0010c\u001a\u0004\u0018\u00010b8\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008c\u0010d\u001a\u0004\u0008e\u0010f\"\u0004\u0008g\u0010hR\u0014\u0010i\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008i\u0010\u0011R\u0014\u0010j\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008j\u0010\u0011\u00a8\u0006l"
    }
    d2 = {
        "Lcom/yandex/div/core/widget/LoadableImageView;",
        "Lcom/yandex/div/internal/widget/AspectImageView;",
        "Lkn5;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroid/graphics/drawable/Drawable;",
        "f",
        "(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;",
        "",
        "g",
        "()Z",
        "size",
        "h",
        "(I)Z",
        "Lzfb;",
        "imageLoaded",
        "()V",
        "previewLoaded",
        "resetImageLoaded",
        "drawable",
        "setPlaceholder",
        "(Landroid/graphics/drawable/Drawable;)V",
        "setPreview",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "(Landroid/graphics/Bitmap;)V",
        "setImage",
        "Ljava/util/concurrent/Future;",
        "task",
        "saveLoadingTask",
        "(Ljava/util/concurrent/Future;)V",
        "getLoadingTask",
        "()Ljava/util/concurrent/Future;",
        "cleanLoadingTask",
        "setImageDrawable",
        "bm",
        "setImageBitmap",
        "dr",
        "invalidateDrawable",
        "who",
        "unscheduleDrawable",
        "Landroid/view/View;",
        "changedView",
        "visibility",
        "onVisibilityChanged",
        "(Landroid/view/View;I)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "autoScale",
        "buildDrawingCache",
        "(Z)V",
        "Lkotlin/Function0;",
        "callback",
        "setImageChangeCallback",
        "(Lc74;)V",
        "Landroid/graphics/Bitmap;",
        "getCurrentBitmapWithoutFilters$div_release",
        "()Landroid/graphics/Bitmap;",
        "setCurrentBitmapWithoutFilters$div_release",
        "getCurrentBitmapWithoutFilters$div_release$annotations",
        "currentBitmapWithoutFilters",
        "Ljn5;",
        "i",
        "Ljn5;",
        "getLoadReference$div_release",
        "()Ljn5;",
        "setLoadReference$div_release",
        "(Ljn5;)V",
        "loadReference",
        "j",
        "Lc74;",
        "imageChangeCallback",
        "k",
        "Landroid/graphics/drawable/Drawable;",
        "sourceDrawable",
        "Lcom/yandex/div/core/widget/LoadableImageView$a;",
        "l",
        "Lcom/yandex/div/core/widget/LoadableImageView$a;",
        "_imageTransformer",
        "value",
        "m",
        "getExternalImage",
        "()Landroid/graphics/drawable/Drawable;",
        "setExternalImage",
        "getExternalImage$annotations",
        "externalImage",
        "getImageTransformer",
        "()Lcom/yandex/div/core/widget/LoadableImageView$a;",
        "setImageTransformer",
        "(Lcom/yandex/div/core/widget/LoadableImageView$a;)V",
        "imageTransformer",
        "Lrv2;",
        "delegate",
        "Lrv2;",
        "getDelegate",
        "()Lrv2;",
        "setDelegate",
        "(Lrv2;)V",
        "isImageLoaded",
        "isImagePreview",
        "a",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public h:Landroid/graphics/Bitmap;

.field public i:Ljn5;

.field public j:Lc74;

.field public k:Landroid/graphics/drawable/Drawable;

.field public l:Lcom/yandex/div/core/widget/LoadableImageView$a;

.field public m:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/internal/widget/AspectImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p1, Lcom/yandex/div/core/widget/LoadableImageView$a$a;->a:Lcom/yandex/div/core/widget/LoadableImageView$a$a;

    iput-object p1, p0, Lcom/yandex/div/core/widget/LoadableImageView;->l:Lcom/yandex/div/core/widget/LoadableImageView$a;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/div/core/widget/LoadableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic getCurrentBitmapWithoutFilters$div_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExternalImage$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic setImageChangeCallback$default(Lcom/yandex/div/core/widget/LoadableImageView;Lc74;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageChangeCallback(Lc74;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setImageChangeCallback"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public buildDrawingCache(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->getDelegate()Lrv2;

    invoke-super {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    return-void
.end method

.method public cleanLoadingTask()V
    .locals 2

    sget v0, Lcom/yandex/div/R$id;->bitmap_load_references_tag:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Lp19;

    invoke-direct {v0, p1, p0}, Lp19;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object p1, v0

    :cond_3
    :goto_1
    return-object p1
.end method

.method public final g()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/widget/LoadableImageView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/widget/LoadableImageView;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/AspectImageView;->getImageScale()Lcom/yandex/div/internal/widget/AspectImageView$Scale;

    move-result-object p0

    sget-object v0, Lcom/yandex/div/internal/widget/AspectImageView$Scale;->NO_SCALE:Lcom/yandex/div/internal/widget/AspectImageView$Scale;

    if-ne p0, v0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getCurrentBitmapWithoutFilters$div_release()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->h:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDelegate()Lrv2;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExternalImage()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->m:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getImageTransformer()Lcom/yandex/div/core/widget/LoadableImageView$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->l:Lcom/yandex/div/core/widget/LoadableImageView$a;

    return-object p0
.end method

.method public final getLoadReference$div_release()Ljn5;
    .locals 0

    iget-object p0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->i:Ljn5;

    return-object p0
.end method

.method public getLoadingTask()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    sget v0, Lcom/yandex/div/R$id;->bitmap_load_references_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final h(I)Z
    .locals 0

    const/4 p0, -0x3

    if-eq p1, p0, :cond_0

    const/4 p0, -0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public imageLoaded()V
    .locals 2

    sget v0, Lcom/yandex/div/R$id;->image_loaded_flag:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "dr"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->getDelegate()Lrv2;

    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public isImageLoaded()Z
    .locals 1

    sget v0, Lcom/yandex/div/R$id;->image_loaded_flag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isImagePreview()Z
    .locals 1

    sget v0, Lcom/yandex/div/R$id;->image_loaded_flag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->getDelegate()Lrv2;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->getDelegate()Lrv2;

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    const-string p2, "changedView"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->getDelegate()Lrv2;

    return-void
.end method

.method public previewLoaded()V
    .locals 2

    sget v0, Lcom/yandex/div/R$id;->image_loaded_flag:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public resetImageLoaded()V
    .locals 2

    sget v0, Lcom/yandex/div/R$id;->image_loaded_flag:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public saveLoadingTask(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/div/R$id;->bitmap_load_references_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final setCurrentBitmapWithoutFilters$div_release(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/widget/LoadableImageView;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDelegate(Lrv2;)V
    .locals 0

    return-void
.end method

.method public final setExternalImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/yandex/div/core/widget/LoadableImageView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/yandex/div/internal/widget/AspectImageView;->invalidate()V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->m:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_0

    .line 5
    check-cast p1, Landroid/graphics/drawable/Animatable;

    invoke-interface {p1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setImageChangeCallback(Lc74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc74;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/widget/LoadableImageView;->j:Lc74;

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput-object p1, p0, Lcom/yandex/div/core/widget/LoadableImageView;->k:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->m:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->j:Lc74;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->l:Lcom/yandex/div/core/widget/LoadableImageView$a;

    invoke-interface {v0, p1}, Lcom/yandex/div/core/widget/LoadableImageView$a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/yandex/div/core/widget/LoadableImageView;->j:Lc74;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public final setImageTransformer(Lcom/yandex/div/core/widget/LoadableImageView$a;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/yandex/div/core/widget/LoadableImageView$a$a;->a:Lcom/yandex/div/core/widget/LoadableImageView$a$a;

    :cond_0
    iput-object p1, p0, Lcom/yandex/div/core/widget/LoadableImageView;->l:Lcom/yandex/div/core/widget/LoadableImageView$a;

    iget-object p1, p0, Lcom/yandex/div/core/widget/LoadableImageView;->k:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final setLoadReference$div_release(Ljn5;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/widget/LoadableImageView;->i:Ljn5;

    return-void
.end method

.method public setPlaceholder(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPreview(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/yandex/div/core/widget/LoadableImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/widget/LoadableImageView;->getDelegate()Lrv2;

    invoke-super {p0, p1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
