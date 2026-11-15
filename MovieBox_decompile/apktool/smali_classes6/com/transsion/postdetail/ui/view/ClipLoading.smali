.class public final Lcom/transsion/postdetail/ui/view/ClipLoading;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\nB\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\r\u0010\u0010\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0010\u0010\u000eJ\u000f\u0010\u0011\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u000eJ\u0017\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0014\u0010\u001a\u001a\u00020\u00068\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u0017R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010(\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010\u0017\u00a8\u0006)"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/view/ClipLoading;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "(Landroid/content/Context;)V",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "a",
        "()V",
        "start",
        "stop",
        "onDetachedFromWindow",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "d",
        "I",
        "progress",
        "e",
        "MAX_PROGRESS",
        "Landroid/graphics/drawable/ClipDrawable;",
        "f",
        "Landroid/graphics/drawable/ClipDrawable;",
        "clip",
        "",
        "g",
        "J",
        "FRAME_DURATION",
        "",
        "h",
        "Z",
        "isStop",
        "i",
        "finishCount",
        "PostDetail_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private d:I

.field private final e:I

.field private f:Landroid/graphics/drawable/ClipDrawable;

.field private final g:J

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ui/view/ClipLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/postdetail/ui/view/ClipLoading;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x2710

    .line 2
    iput p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->e:I

    const-wide/16 p1, 0xd

    .line 3
    iput-wide p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->g:J

    .line 4
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/view/ClipLoading;->a()V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/transsion/postdetail/R$drawable;->post_detail_imm_video_clip_progress:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.ClipDrawable"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->f:Landroid/graphics/drawable/ClipDrawable;

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/postdetail/ui/view/ClipLoading;->stop()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    iget-boolean p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->h:Z

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->d:I

    .line 15
    .line 16
    iget v0, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->e:I

    .line 17
    .line 18
    if-lt p1, v0, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x14

    .line 21
    .line 22
    iput p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->i:I

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->d:I

    .line 26
    .line 27
    :cond_1
    iget p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->i:I

    .line 28
    .line 29
    if-lez p1, :cond_2

    .line 30
    .line 31
    add-int/lit8 p1, p1, -0x1

    .line 32
    .line 33
    iput p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->i:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->d:I

    .line 37
    .line 38
    add-int/lit16 p1, p1, 0x12c

    .line 39
    .line 40
    iput p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->d:I

    .line 41
    .line 42
    :goto_0
    iget-object p1, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->f:Landroid/graphics/drawable/ClipDrawable;

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget v0, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->d:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-wide v0, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->g:J

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->d:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->h:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->d:I

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/transsion/postdetail/ui/view/ClipLoading;->h:Z

    .line 6
    .line 7
    return-void
.end method
