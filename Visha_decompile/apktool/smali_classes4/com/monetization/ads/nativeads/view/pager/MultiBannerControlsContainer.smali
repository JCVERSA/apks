.class public final Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B#\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bB+\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0015\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0013\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;",
        "Landroid/widget/FrameLayout;",
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
        "Landroid/view/View$OnClickListener;",
        "listener",
        "Lzfb;",
        "setOnClickLeftButtonListener",
        "(Landroid/view/View$OnClickListener;)V",
        "setOnClickRightButtonListener",
        "mobileads_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v30;

.field private final b:Lyi5;

.field private final c:Lcom/yandex/mobile/ads/impl/n50;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/yandex/mobile/ads/impl/v30;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/v30;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lcom/yandex/mobile/ads/impl/v30;

    .line 3
    new-instance p1, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$a;

    invoke-direct {p1, p0}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$a;-><init>(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyi5;

    .line 4
    new-instance p1, Lcom/yandex/mobile/ads/impl/n50;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/n50;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Lcom/yandex/mobile/ads/impl/n50;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    new-instance p1, Lcom/yandex/mobile/ads/impl/v30;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/v30;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lcom/yandex/mobile/ads/impl/v30;

    .line 8
    new-instance p1, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$a;

    invoke-direct {p1, p0}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$a;-><init>(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyi5;

    .line 9
    new-instance p1, Lcom/yandex/mobile/ads/impl/n50;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/n50;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Lcom/yandex/mobile/ads/impl/n50;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    new-instance p1, Lcom/yandex/mobile/ads/impl/v30;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/v30;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lcom/yandex/mobile/ads/impl/v30;

    .line 13
    new-instance p1, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$a;

    invoke-direct {p1, p0}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$a;-><init>(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyi5;

    .line 14
    new-instance p1, Lcom/yandex/mobile/ads/impl/n50;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/n50;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Lcom/yandex/mobile/ads/impl/n50;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    new-instance p1, Lcom/yandex/mobile/ads/impl/v30;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/v30;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lcom/yandex/mobile/ads/impl/v30;

    .line 18
    new-instance p1, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$a;

    invoke-direct {p1, p0}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$a;-><init>(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyi5;

    .line 19
    new-instance p1, Lcom/yandex/mobile/ads/impl/n50;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/n50;-><init>()V

    iput-object p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Lcom/yandex/mobile/ads/impl/n50;

    const/4 p1, 0x1

    .line 20
    iput-boolean p1, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->d:Z

    return-void
.end method

.method private final a(II)V
    .locals 9

    .line 12
    sget v0, Lcom/yandex/mobile/ads/R$id;->left_scroll_control_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 13
    :goto_0
    sget v2, Lcom/yandex/mobile/ads/R$id;->right_scroll_control_button:I

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/widget/ImageView;

    goto :goto_1

    :cond_1
    move-object v4, v3

    .line 14
    :goto_1
    sget v5, Lcom/yandex/mobile/ads/R$id;->dot_indicator:I

    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    check-cast v6, Landroid/widget/ImageView;

    goto :goto_2

    :cond_2
    move-object v6, v3

    .line 15
    :goto_2
    iget-boolean v7, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->d:Z

    const/16 v8, 0x8

    if-eqz v7, :cond_c

    .line 16
    invoke-virtual {p0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v4, v1, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    check-cast v1, Landroid/widget/ImageView;

    goto :goto_3

    :cond_3
    move-object v1, v3

    :goto_3
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v5, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a:Lcom/yandex/mobile/ads/impl/v30;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "getContext(...)"

    invoke-static {v6, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6, p1, p2}, Lcom/yandex/mobile/ads/impl/v30;->a(Landroid/content/Context;II)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    check-cast v0, Landroid/widget/ImageView;

    goto :goto_4

    :cond_5
    move-object v0, v3

    .line 21
    :goto_4
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    .line 22
    :cond_6
    iget-object p0, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_9

    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    if-nez p1, :cond_7

    .line 23
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_7
    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_8

    .line 25
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 27
    :cond_8
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_9
    if-nez v0, :cond_a

    goto :goto_5

    .line 29
    :cond_a
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5
    if-nez v3, :cond_b

    goto :goto_8

    .line 30
    :cond_b
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    :cond_c
    if-nez v1, :cond_d

    goto :goto_6

    .line 31
    :cond_d
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    if-nez v4, :cond_e

    goto :goto_7

    .line 32
    :cond_e
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    if-nez v6, :cond_f

    goto :goto_8

    .line 33
    :cond_f
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_8
    return-void
.end method

.method public static final synthetic a(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a(II)V

    return-void
.end method

.method private static final a(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;Landroid/view/View;IIIIIIII)V
    .locals 6

    const-string p6, "this$0"

    invoke-static {p0, p6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    instance-of p6, p1, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p6, :cond_1

    .line 6
    iget-boolean p6, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->d:Z

    .line 7
    iget-object v0, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->c:Lcom/yandex/mobile/ads/impl/n50;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/n50;->a(Landroid/view/View;IIII)Z

    move-result p2

    iput-boolean p2, p0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->d:Z

    if-eq p2, p6, :cond_1

    .line 8
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p2

    .line 10
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a(II)V

    :cond_1
    return-void
.end method

.method public static synthetic b(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;->a(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;Landroid/view/View;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    const-string v0, "viewPager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$b;

    invoke-direct {v0, p1, p0}, Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer$b;-><init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;)V

    .line 3
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 4
    new-instance v0, Lhs6;

    invoke-direct {v0, p0}, Lhs6;-><init>(Lcom/monetization/ads/nativeads/view/pager/MultiBannerControlsContainer;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final setOnClickLeftButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->left_scroll_control_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public final setOnClickRightButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/yandex/mobile/ads/R$id;->right_scroll_control_button:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
