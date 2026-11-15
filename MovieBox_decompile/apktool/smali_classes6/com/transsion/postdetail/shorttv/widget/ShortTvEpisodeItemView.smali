.class public final Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0015R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0014\u0010!\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "ep",
        "",
        "showIndex",
        "(I)V",
        "",
        "show",
        "showPlayingImg",
        "(Z)V",
        "showLockImg",
        "showDownloadStatus",
        "Landroid/widget/TextView;",
        "a",
        "Landroid/widget/TextView;",
        "textView",
        "Landroid/widget/ImageView;",
        "b",
        "Landroid/widget/ImageView;",
        "lockImg",
        "c",
        "playingImg",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    .line 3
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    .line 4
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 5
    sget v2, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_episode_bg:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 6
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 7
    const-string v3, "h,1:1"

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 8
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 9
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 10
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lcom/transsion/postdetail/R$color;->post_detail_short_tv_episode_tv_color:I

    invoke-static {v3, v5}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 12
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v3, 0x11

    .line 13
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    sget p1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v3, -0x2

    invoke-direct {p1, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 16
    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 17
    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 18
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    .line 20
    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v0

    .line 21
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 22
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 23
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 24
    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/tn/lib/widget/R$color;->color_07B84E:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 26
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, v0, 0x2

    .line 27
    invoke-virtual {p0, v0, v4, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    .line 30
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    .line 31
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 32
    sget v1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_episode_bg:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 33
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 34
    const-string v2, "h,1:1"

    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 35
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 36
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 37
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/transsion/postdetail/R$color;->post_detail_short_tv_episode_tv_color:I

    invoke-static {v2, v4}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 39
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    .line 40
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 41
    sget p1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 43
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 44
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 45
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    .line 47
    invoke-static {p2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p2

    .line 48
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 49
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 50
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 51
    invoke-virtual {v1, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v2, Lcom/tn/lib/widget/R$color;->color_07B84E:I

    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 53
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, p2, 0x2

    .line 54
    invoke-virtual {p0, p2, v3, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    .line 57
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    .line 58
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 59
    sget v0, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_episode_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 61
    const-string v1, "h,1:1"

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 62
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 63
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v3, Lcom/transsion/postdetail/R$color;->post_detail_short_tv_episode_tv_color:I

    invoke-static {v1, v3}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 67
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    sget p1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 70
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 71
    iput v2, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 72
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {v0}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    .line 74
    invoke-static {p2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p2

    .line 75
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 76
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 77
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 78
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/tn/lib/widget/R$color;->color_07B84E:I

    invoke-static {p1, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 80
    invoke-virtual {p0, p3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, p2, 0x2

    .line 81
    invoke-virtual {p0, p2, v2, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 83
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    .line 84
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    .line 85
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 86
    sget p4, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_episode_bg:I

    invoke-virtual {p1, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 87
    new-instance p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p4, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 88
    const-string v0, "h,1:1"

    iput-object v0, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 89
    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 90
    invoke-virtual {p0, p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p4, 0x41800000    # 16.0f

    .line 91
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/transsion/postdetail/R$color;->post_detail_short_tv_episode_tv_color:I

    invoke-static {v0, v2}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 93
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v0, 0x11

    .line 94
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    sget p1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 97
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 98
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 99
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-static {p4}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    .line 101
    invoke-static {p2}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p2

    .line 102
    new-instance p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {p4, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 103
    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 104
    iput v1, p4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->t:I

    .line 105
    invoke-virtual {p4, p2, p2, p2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 106
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$color;->color_07B84E:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 107
    invoke-virtual {p0, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, p2, 0x2

    .line 108
    invoke-virtual {p0, p2, v1, p2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final showDownloadStatus(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    sget v1, Lcom/transsion/postdetail/R$mipmap;->post_detail_short_tv_downloaded:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p1, 0x8

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final showIndex(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget v1, Lcom/transsion/postdetail/R$string;->short_tv_trailer:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method public final showLockImg(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    .line 2
    .line 3
    sget v1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_lock:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->b:Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p1, 0x8

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final showPlayingImg(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 12
    .line 13
    const-string v1, "playing"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sget v1, Lcom/transsion/postdetail/R$drawable;->post_detail_short_tv_playing:I

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 40
    .line 41
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->c:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/widget/ShortTvEpisodeItemView;->a:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
