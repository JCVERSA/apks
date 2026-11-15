.class public Lcom/transsion/magicmovie/activity/TRSplashActivity;
.super Lcom/transsion/magicmovie/activity/BaseAdActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomSplashScreen"
    }
.end annotation


# instance fields
.field public Q:Landroid/graphics/drawable/BitmapDrawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/magicmovie/activity/TRSplashActivity;->Q:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/trello/rxlifecycle3/components/support/RxAppCompatActivity;->onResume()V

    invoke-static {}, Lbx9;->x()V

    invoke-virtual {p0}, Lcom/transsion/magicmovie/activity/BaseAdActivity;->E()V

    return-void
.end method
