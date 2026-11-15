.class public Lcom/transsion/widgets/PlayingImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"

# interfaces
.implements Lh27$b;


# static fields
.field public static mIsPlaying:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/widgets/PlayingImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/PlayingImageView;->lambda$onAttachedToWindow$0()V

    return-void
.end method

.method private applyPlayingImage(I)V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/widgets/PlayingImageView;->resolveDrawableContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onAttachedToWindow$0()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/widgets/PlayingImageView;->updateAnimation()V

    return-void
.end method

.method private resolveDrawableContext()Landroid/content/Context;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private updateAnimation()V
    .locals 1

    sget-boolean v0, Lcom/transsion/widgets/PlayingImageView;->mIsPlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/common/R$drawable;->ic_playing_for_list:I

    invoke-direct {p0, v0}, Lcom/transsion/widgets/PlayingImageView;->applyPlayingImage(I)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/common/R$drawable;->ic_pause_list_cover:I

    invoke-direct {p0, v0}, Lcom/transsion/widgets/PlayingImageView;->applyPlayingImage(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0x402

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x406

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    move v1, p2

    :cond_1
    sput-boolean v1, Lcom/transsion/widgets/PlayingImageView;->mIsPlaying:Z

    invoke-direct {p0}, Lcom/transsion/widgets/PlayingImageView;->updateAnimation()V

    goto :goto_0

    :cond_2
    aget-object p1, p2, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/transsion/widgets/PlayingImageView;->mIsPlaying:Z

    invoke-direct {p0}, Lcom/transsion/widgets/PlayingImageView;->updateAnimation()V

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x402

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x406

    invoke-virtual {v0, p0, v1}, Lh27;->b(Lh27$b;I)V

    new-instance v0, Lyb8;

    invoke-direct {v0, p0}, Lyb8;-><init>(Lcom/transsion/widgets/PlayingImageView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x402

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object v0

    const/16 v1, 0x406

    invoke-virtual {v0, p0, v1}, Lh27;->f(Lh27$b;I)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x402

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p1

    const/16 p2, 0x406

    invoke-virtual {p1, p0, p2}, Lh27;->b(Lh27$b;I)V

    sget-boolean p1, Lcom/transsion/widgets/PlayingImageView;->mIsPlaying:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/transsion/common/R$drawable;->ic_playing_for_list:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/transsion/common/R$drawable;->ic_pause_list_cover:I

    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/widgets/PlayingImageView;->applyPlayingImage(I)V

    goto :goto_1

    :cond_1
    sget p1, Lcom/transsion/common/R$drawable;->ic_pause_list_cover:I

    invoke-direct {p0, p1}, Lcom/transsion/widgets/PlayingImageView;->applyPlayingImage(I)V

    :goto_1
    return-void
.end method
