.class public final Lcom/yandex/mobile/ads/impl/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/m1;
.implements Lcom/yandex/mobile/ads/impl/h3$c;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/RelativeLayout;

.field private final c:Lcom/yandex/mobile/ads/impl/j1;

.field private final d:Landroid/view/Window;

.field private final e:Ljava/lang/String;

.field private f:Lcom/yandex/mobile/ads/impl/h3;

.field private final g:Landroid/widget/LinearLayout;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/ProgressBar;

.field private final j:Lcom/yandex/mobile/ads/impl/y82;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Landroid/view/Window;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/h3;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Lcom/yandex/mobile/ads/impl/y82;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootLayout"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adActivityListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browserUrl"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adBrowserView"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controlPanel"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browserTitle"

    invoke-static {p8, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "browserProgressBar"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlViewerLauncher"

    invoke-static {p10, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/x0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/x0;->b:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/x0;->c:Lcom/yandex/mobile/ads/impl/j1;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/x0;->d:Landroid/view/Window;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/x0;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/x0;->g:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/x0;->h:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/x0;->i:Landroid/widget/ProgressBar;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/x0;->j:Lcom/yandex/mobile/ads/impl/y82;

    return-void
.end method

.method private final a(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->i:Landroid/widget/ProgressBar;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 17
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 18
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->i:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final a(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    new-instance v0, Lbxd;

    invoke-direct {v0, p0}, Lbxd;-><init>(Lcom/yandex/mobile/ads/impl/x0;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    new-instance p1, Lcxd;

    invoke-direct {p1, p0}, Lcxd;-><init>(Lcom/yandex/mobile/ads/impl/x0;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/x0;Landroid/view/View;)V
    .locals 1

    .line 3
    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->j:Lcom/yandex/mobile/ads/impl/y82;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->a:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/y82;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private static final b(Lcom/yandex/mobile/ads/impl/x0;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    invoke-static {p0, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->c:Lcom/yandex/mobile/ads/impl/j1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/j1;->a()V

    return-void
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/x0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/x0;->b(Lcom/yandex/mobile/ads/impl/x0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/yandex/mobile/ads/impl/x0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/x0;->a(Lcom/yandex/mobile/ads/impl/x0;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vk;->f()V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 1

    .line 6
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/x0;->a(I)V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;I)V
    .locals 1

    .line 8
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->i:Landroid/widget/ProgressBar;

    mul-int/lit8 p2, p2, 0x64

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x2710

    if-le v0, p2, :cond_0

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/x0;->a(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/x0;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 12
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/x0;->a(I)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vk;->e()V

    return-void
.end method

.method public final b(Landroid/webkit/WebView;)V
    .locals 1

    .line 3
    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 4
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/x0;->a(I)V

    return-void
.end method

.method public final c()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->b:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/yandex/mobile/ads/impl/g8;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->g:Landroid/widget/LinearLayout;

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x0;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/h8;->b(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/x0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/h8;->a(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v2

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/yandex/mobile/ads/impl/x0;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 7
    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/x0;->h:Landroid/widget/TextView;

    .line 8
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 9
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->b:Landroid/widget/RelativeLayout;

    .line 15
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x0;->g:Landroid/widget/LinearLayout;

    .line 16
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/x0;->a:Landroid/content/Context;

    .line 17
    const-string v3, "context"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v4, Lcom/yandex/mobile/ads/impl/i8;->d:Lcom/yandex/mobile/ads/impl/i8;

    .line 19
    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4, v2}, Lcom/yandex/mobile/ads/impl/i8;->a(Landroid/content/Context;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result v2

    .line 21
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 22
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x0;->g:Landroid/widget/LinearLayout;

    .line 25
    invoke-static {v0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "anchorView"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x40000000    # 2.0f

    .line 26
    invoke-static {v0, v3}, Lcom/yandex/mobile/ads/impl/wh2;->a(Landroid/content/Context;F)I

    move-result v0

    .line 27
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 29
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->b:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/x0;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v0, 0x8

    .line 30
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/x0;->a(I)V

    .line 31
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->b:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    iget-object v4, p0, Lcom/yandex/mobile/ads/impl/x0;->g:Landroid/widget/LinearLayout;

    .line 32
    invoke-static {v4, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 35
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/x0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->c:Lcom/yandex/mobile/ads/impl/j1;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    .line 38
    new-array p0, v6, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    return-void
.end method

.method public final d()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/vk;->d()V

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->f:Lcom/yandex/mobile/ads/impl/h3;

    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, v1

    return p0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/x0;->d:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/pa;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->d:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAdClosed()V
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/x0;->c:Lcom/yandex/mobile/ads/impl/j1;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/j1;->a(ILandroid/os/Bundle;)V

    return-void
.end method
