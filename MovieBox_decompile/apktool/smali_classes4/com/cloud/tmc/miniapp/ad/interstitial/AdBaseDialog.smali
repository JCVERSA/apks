.class public abstract Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;
.super Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;
.source "source.java"

# interfaces
.implements Landroidx/lifecycle/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o<",
        "Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;",
        ">;",
        "Landroidx/lifecycle/t;"
    }
.end annotation


# instance fields
.field public OooO00o:J

.field public OooO0O0:I

.field public OooO0OO:Z

.field public final OooO0Oo:Landroid/os/Handler;

.field public final OooO0o:Ljava/lang/Runnable;

.field public OooO0o0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0Oo:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v0, Lcom/cloud/tmc/miniapp/ad/interstitial/a;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/a;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnDismissListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 36
    .line 37
    .line 38
    new-instance p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;

    .line 39
    .line 40
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->addOnShowListener(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;)V
    .locals 15

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO:Z

    .line 2
    new-instance v0, Lcom/cloud/tmc/ad/bean/AdShowBean;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageWidth(I)V

    .line 4
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageHeight(I)V

    .line 5
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTs(J)V

    .line 6
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO:Z

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setEffectiveShow(I)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowDuration(J)V

    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowArea(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowReportTimeType(I)V

    .line 10
    iget v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    invoke-virtual {v0, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTimes(I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V

    return-void
.end method


# virtual methods
.method public abstract OooO00o()I
.end method

.method public final OooO00o(Landroid/content/Context;)V
    .locals 1

    .line 12
    instance-of v0, p1, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    :cond_0
    return-void
.end method

.method public abstract OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V
.end method

.method public final OooO00o(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 14
    new-instance v15, Lcom/cloud/tmc/ad/bean/AdShowBean;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v15

    invoke-direct/range {v1 .. v14}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageWidth(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o()I

    move-result v1

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setImageHeight(I)V

    .line 17
    iget-wide v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    invoke-virtual {v15, v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTs(J)V

    .line 18
    iget-boolean v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO:Z

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setEffectiveShow(I)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    sub-long/2addr v1, v3

    invoke-virtual {v15, v1, v2}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowDuration(J)V

    .line 20
    invoke-virtual {v15}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageWidth()I

    move-result v1

    invoke-virtual {v15}, Lcom/cloud/tmc/ad/bean/AdShowBean;->getImageHeight()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowArea(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 21
    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowReportTimeType(I)V

    .line 22
    iget v1, v0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setShowTimes(I)V

    move/from16 v1, p1

    .line 23
    invoke-virtual {v15, v1}, Lcom/cloud/tmc/ad/bean/AdShowBean;->setClose(Z)V

    .line 24
    invoke-virtual {v0, v15}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V

    return-void
.end method

.method public abstract OooO0O0()I
.end method

.method public final OooO0OO()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o:J

    .line 6
    .line 7
    iget v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0Oo:Landroid/os/Handler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0o:Ljava/lang/Runnable;

    .line 16
    .line 17
    const-wide/16 v2, 0x3e8

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final onLifeCycleOnPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO00o(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final onLifeCycleOnResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/d0;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->isShowing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0OO()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
