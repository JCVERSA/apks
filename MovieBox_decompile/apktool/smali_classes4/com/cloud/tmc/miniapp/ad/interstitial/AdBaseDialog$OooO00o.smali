.class public final Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

.field public final synthetic OooO0O0:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO0O0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO0O0:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle;->d(Landroidx/lifecycle/t;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    .line 22
    .line 23
    iget-object v0, p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0Oo:Landroid/os/Handler;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;

    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p1, v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
