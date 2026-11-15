.class public Lcom/transsion/vishaads/activity/SplashAdActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public N:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/transsion/vishaads/activity/SplashAdActivity$1;

    invoke-direct {v0, p0}, Lcom/transsion/vishaads/activity/SplashAdActivity$1;-><init>(Lcom/transsion/vishaads/activity/SplashAdActivity;)V

    iput-object v0, p0, Lcom/transsion/vishaads/activity/SplashAdActivity;->N:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public D()V
    .locals 0

    return-void
.end method

.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lt81;->a(Landroid/app/Activity;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le80;->o(Landroid/app/Activity;Z)V

    invoke-static {p0, v0}, Le80;->k(Landroid/app/Activity;Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    sget v0, Lcom/transsion/vishaads/R$layout;->layout_ad_content:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    sget v0, Lcom/transsion/vishaads/R$id;->av_item:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/transsion/vishaads/views/AdItemView;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/transsion/dbdata/beans/adsbean/AdItemBean;->setAdSourceType(I)V

    invoke-virtual {p0, v0, p1}, Lcom/transsion/vishaads/views/AdItemView;->showAd(Lcom/transsion/dbdata/beans/adsbean/AdItemBean;Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
