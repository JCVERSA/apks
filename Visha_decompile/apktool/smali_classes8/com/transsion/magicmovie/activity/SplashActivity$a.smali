.class public Lcom/transsion/magicmovie/activity/SplashActivity$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicmovie/activity/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/magicmovie/activity/SplashActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/magicmovie/activity/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicmovie/activity/SplashActivity$a;->d:Lcom/transsion/magicmovie/activity/SplashActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    sget-object v0, Lcom/transsion/magicmovie/activity/SplashActivity;->T:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/SplashActivity$a;->d:Lcom/transsion/magicmovie/activity/SplashActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/SplashActivity;->u(Lcom/transsion/magicmovie/activity/SplashActivity;)Landroid/widget/Button;

    move-result-object p0

    const v0, 0x7f130a98

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/magicmovie/activity/SplashActivity$a;->d:Lcom/transsion/magicmovie/activity/SplashActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/SplashActivity;->u(Lcom/transsion/magicmovie/activity/SplashActivity;)Landroid/widget/Button;

    move-result-object p0

    const v0, 0x7f130a97

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/magicmovie/activity/SplashActivity$a;->d:Lcom/transsion/magicmovie/activity/SplashActivity;

    invoke-static {p0}, Lcom/transsion/magicmovie/activity/SplashActivity;->u(Lcom/transsion/magicmovie/activity/SplashActivity;)Landroid/widget/Button;

    move-result-object p0

    const v0, 0x7f130a96

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lp06;->X(I)V

    return-void
.end method
