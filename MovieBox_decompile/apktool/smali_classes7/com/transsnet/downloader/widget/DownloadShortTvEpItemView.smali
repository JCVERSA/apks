.class public final Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0018\u0010\u0015R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\"\u001a\u00020\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;",
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
        "select",
        "setSelect",
        "(Z)V",
        "show",
        "showLockImg",
        "showDownloadImg",
        "Lcom/noober/background/view/BLTextView;",
        "a",
        "Lcom/noober/background/view/BLTextView;",
        "textView",
        "Landroid/widget/ImageView;",
        "b",
        "Landroid/widget/ImageView;",
        "lockImg",
        "c",
        "selectImg",
        "Downloader_psRelease"
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
.field private final a:Lcom/noober/background/view/BLTextView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/noober/background/view/BLTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/noober/background/view/BLTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->a:Lcom/noober/background/view/BLTextView;

    .line 3
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->b:Landroid/widget/ImageView;

    .line 4
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->c:Landroid/widget/ImageView;

    const/high16 v2, 0x40800000    # 4.0f

    .line 5
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    const/high16 v3, 0x40c00000    # 6.0f

    .line 6
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v3

    .line 7
    new-instance v4, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {v4}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    int-to-float v5, v2

    invoke-virtual {v4, v5}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/tn/lib/widget/R$color;->white_10:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 9
    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    new-instance v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 11
    const-string v5, "h,1:1"

    iput-object v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 12
    iput v6, v4, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 13
    invoke-virtual {p0, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x41800000    # 16.0f

    .line 14
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/transsnet/downloader/R$color;->selector_download_short_tv_ep_text:I

    invoke-static {v4, v5}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 16
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v4, 0x11

    .line 17
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 18
    sget p1, Lcom/transsnet/downloader/R$mipmap;->ic_short_tv_lock:I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 19
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v4, -0x2

    invoke-direct {p1, v4, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 20
    iput v6, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 21
    iput v6, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 22
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsnet/downloader/R$drawable;->selector_download_group_check:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    mul-int/lit8 v0, v3, 0x2

    invoke-direct {p1, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 25
    iput v6, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 26
    iput v6, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 28
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 29
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, v2, 0x2

    .line 30
    invoke-virtual {p0, v2, v6, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance p1, Lcom/noober/background/view/BLTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/noober/background/view/BLTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->a:Lcom/noober/background/view/BLTextView;

    .line 33
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->b:Landroid/widget/ImageView;

    .line 34
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->c:Landroid/widget/ImageView;

    const/high16 v1, 0x40800000    # 4.0f

    .line 35
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    const/high16 v2, 0x40c00000    # 6.0f

    .line 36
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    .line 37
    new-instance v3, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {v3}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v3

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/tn/lib/widget/R$color;->white_10:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 39
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 41
    const-string v4, "h,1:1"

    iput-object v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 42
    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 43
    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v3, 0x41800000    # 16.0f

    .line 44
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/transsnet/downloader/R$color;->selector_download_short_tv_ep_text:I

    invoke-static {v3, v4}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 46
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v3, 0x11

    .line 47
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 48
    sget p1, Lcom/transsnet/downloader/R$mipmap;->ic_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v3, -0x2

    invoke-direct {p1, v3, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 50
    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 51
    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 52
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsnet/downloader/R$drawable;->selector_download_group_check:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    mul-int/lit8 p2, v2, 0x2

    invoke-direct {p1, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 55
    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 56
    iput v5, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 57
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 58
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 59
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, v1, 0x2

    .line 60
    invoke-virtual {p0, v1, v5, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p1, Lcom/noober/background/view/BLTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/noober/background/view/BLTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->a:Lcom/noober/background/view/BLTextView;

    .line 63
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->b:Landroid/widget/ImageView;

    .line 64
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->c:Landroid/widget/ImageView;

    const/high16 v0, 0x40800000    # 4.0f

    .line 65
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    .line 66
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    .line 67
    new-instance v2, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {v2}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v2

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->white_10:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 69
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 71
    const-string v3, "h,1:1"

    iput-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 72
    iput v4, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 73
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 74
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/transsnet/downloader/R$color;->selector_download_short_tv_ep_text:I

    invoke-static {v2, v3}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 76
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v2, 0x11

    .line 77
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 78
    sget p1, Lcom/transsnet/downloader/R$mipmap;->ic_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x2

    invoke-direct {p1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 80
    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 81
    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 82
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsnet/downloader/R$drawable;->selector_download_group_check:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    mul-int/lit8 p2, v1, 0x2

    invoke-direct {p1, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 85
    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 86
    iput v4, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 87
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 88
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 89
    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, v0, 0x2

    .line 90
    invoke-virtual {p0, v0, v4, v0, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    new-instance p1, Lcom/noober/background/view/BLTextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/noober/background/view/BLTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->a:Lcom/noober/background/view/BLTextView;

    .line 93
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->b:Landroid/widget/ImageView;

    .line 94
    new-instance p3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->c:Landroid/widget/ImageView;

    const/high16 p4, 0x40800000    # 4.0f

    .line 95
    invoke-static {p4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p4

    const/high16 v0, 0x40c00000    # 6.0f

    .line 96
    invoke-static {v0}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v0

    .line 97
    new-instance v1, Lcom/noober/background/drawable/DrawableCreator$Builder;

    invoke-direct {v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;-><init>()V

    int-to-float v2, p4

    invoke-virtual {v1, v2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setCornersRadius(F)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$color;->white_10:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/noober/background/drawable/DrawableCreator$Builder;->setSolidColor(I)Lcom/noober/background/drawable/DrawableCreator$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/noober/background/drawable/DrawableCreator$Builder;->build()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 99
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 100
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 101
    const-string v2, "h,1:1"

    iput-object v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 102
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 103
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v1, 0x41800000    # 16.0f

    .line 104
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsnet/downloader/R$color;->selector_download_short_tv_ep_text:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 106
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v1, 0x11

    .line 107
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    sget p1, Lcom/transsnet/downloader/R$mipmap;->ic_short_tv_lock:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 110
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->i:I

    .line 111
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 112
    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/transsnet/downloader/R$drawable;->selector_download_group_check:I

    invoke-static {p1, p2}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    mul-int/lit8 p2, v0, 0x2

    invoke-direct {p1, p2, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(II)V

    .line 115
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->v:I

    .line 116
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$b;->l:I

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 118
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 119
    invoke-virtual {p0, p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    mul-int/lit8 p1, p4, 0x2

    .line 120
    invoke-virtual {p0, p4, v3, p4, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final setSelect(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->c:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final showDownloadImg(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->c:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->b:Landroid/widget/ImageView;

    .line 9
    .line 10
    sget v1, Lcom/transsnet/downloader/R$mipmap;->ic_short_tv_download_sub:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->b:Landroid/widget/ImageView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 p1, 0x8

    .line 22
    .line 23
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final showIndex(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->a:Lcom/noober/background/view/BLTextView;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final showLockImg(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->c:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->b:Landroid/widget/ImageView;

    .line 9
    .line 10
    sget v1, Lcom/transsnet/downloader/R$mipmap;->ic_short_tv_lock:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->c:Landroid/widget/ImageView;

    .line 17
    .line 18
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    iget-object v0, p0, Lcom/transsnet/downloader/widget/DownloadShortTvEpItemView;->b:Landroid/widget/ImageView;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/16 p1, 0x8

    .line 28
    .line 29
    :goto_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
