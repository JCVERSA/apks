.class public Lcom/transsion/magicmovie/activity/SplashActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final T:[Ljava/lang/Integer;


# instance fields
.field public N:Landroid/os/Handler;

.field public O:Landroidx/viewpager2/widget/ViewPager2;

.field public P:Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;

.field public Q:Landroid/widget/Button;

.field public R:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public S:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f080995

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/transsion/magicmovie/activity/SplashActivity;->T:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->N:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/magicmovie/activity/SplashActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/activity/SplashActivity$a;-><init>(Lcom/transsion/magicmovie/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->R:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    new-instance v0, Lcom/transsion/magicmovie/activity/SplashActivity$2;

    invoke-direct {v0, p0}, Lcom/transsion/magicmovie/activity/SplashActivity$2;-><init>(Lcom/transsion/magicmovie/activity/SplashActivity;)V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->S:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic t(Lcom/transsion/magicmovie/activity/SplashActivity;ILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/magicmovie/activity/SplashActivity;->F(ILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic u(Lcom/transsion/magicmovie/activity/SplashActivity;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->Q:Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public final D()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->Q:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const v1, 0x7f0a0be4

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lbv9;

    invoke-direct {v2, p0, v0}, Lbv9;-><init>(Lcom/transsion/magicmovie/activity/SplashActivity;I)V

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method public E()V
    .locals 2

    new-instance v0, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;

    invoke-direct {v0}, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->P:Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;

    sget-object v0, Lcom/transsion/magicmovie/activity/SplashActivity;->T:[Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->P:Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;

    invoke-virtual {v1, v0}, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;->d(Ljava/util/List;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->O:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->P:Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->O:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->R:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public final synthetic F(ILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p2, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->Q:Landroid/widget/Button;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    add-int/2addr p1, v0

    iput p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->Q:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p3
.end method

.method public G()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/magicmovie/activity/VideoPlayerMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, p0}, Lf5;->c(Landroid/content/Intent;Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/SplashActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0170

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->O:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iget-object v1, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->P:Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;

    invoke-virtual {v1}, Lcom/transsion/magicmovie/adapter/SplashImageViewPagerAdapter;->getItemCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/SplashActivity;->G()V

    invoke-static {p0, v0}, Lw6c;->E(Landroid/content/Context;Z)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->O:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {p0}, Lcom/transsion/utils/a;->b(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lt81;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    const/4 p1, 0x0

    invoke-static {p0, p1}, Le80;->o(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0d0044

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0a0f82

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->O:Landroidx/viewpager2/widget/ViewPager2;

    const p1, 0x7f0a0170

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->Q:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/SplashActivity;->D()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/SplashActivity;->E()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->O:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/SplashActivity;->R:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "mmkv_key_user_clear_migration"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->y(Ljava/lang/String;Z)Z

    return-void
.end method
