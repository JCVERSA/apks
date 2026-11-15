.class public final Lll;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt70;


# direct methods
.method public constructor <init>(Lt70;)V
    .locals 1

    const-string v0, "mBannerOptions"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lll;->a:Lt70;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/transsion/playercommon/R$styleable;->BannerViewPager:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "obtainStyledAttributes(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lll;->b(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/res/TypedArray;)V
    .locals 8

    sget v0, Lcom/transsion/playercommon/R$styleable;->BannerViewPager_bvp_interval:I

    const/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    sget v1, Lcom/transsion/playercommon/R$styleable;->BannerViewPager_bvp_auto_play:I

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    sget v3, Lcom/transsion/playercommon/R$styleable;->BannerViewPager_bvp_can_loop:I

    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    sget v3, Lcom/transsion/playercommon/R$styleable;->BannerViewPager_bvp_page_margin:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    sget v5, Lcom/transsion/playercommon/R$styleable;->BannerViewPager_bvp_round_corner:I

    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    sget v5, Lcom/transsion/playercommon/R$styleable;->BannerViewPager_bvp_reveal_width:I

    const/high16 v6, -0x3b860000    # -1000.0f

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    sget v6, Lcom/transsion/playercommon/R$styleable;->BannerViewPager_bvp_scroll_duration:I

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iget-object v6, p0, Lll;->a:Lt70;

    invoke-virtual {v6, v0}, Lt70;->s(I)V

    iget-object v0, p0, Lll;->a:Lt70;

    invoke-virtual {v0, v1}, Lt70;->o(Z)V

    iget-object v0, p0, Lll;->a:Lt70;

    invoke-virtual {v0, v2}, Lt70;->q(Z)V

    iget-object v0, p0, Lll;->a:Lt70;

    invoke-virtual {v0, v3}, Lt70;->w(I)V

    iget-object v0, p0, Lll;->a:Lt70;

    invoke-virtual {v0, v4}, Lt70;->y(I)V

    iget-object v0, p0, Lll;->a:Lt70;

    invoke-virtual {v0, v5}, Lt70;->x(I)V

    iget-object v0, p0, Lll;->a:Lt70;

    invoke-virtual {v0, v5}, Lt70;->t(I)V

    iget-object p0, p0, Lll;->a:Lt70;

    invoke-virtual {p0, p1}, Lt70;->B(I)V

    return-void
.end method
