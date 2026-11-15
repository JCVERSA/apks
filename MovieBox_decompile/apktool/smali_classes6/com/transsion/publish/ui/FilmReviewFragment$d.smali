.class public final Lcom/transsion/publish/ui/FilmReviewFragment$d;
.super Landroid/os/CountDownTimer;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/publish/ui/FilmReviewFragment;->showActivityTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/publish/ui/FilmReviewFragment;


# direct methods
.method constructor <init>(Lcom/transsion/publish/ui/FilmReviewFragment;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/ui/FilmReviewFragment$d;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 2
    .line 3
    const-wide/16 v0, 0x1388

    .line 4
    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/publish/ui/FilmReviewFragment$d;->a:Lcom/transsion/publish/ui/FilmReviewFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Llo/h;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Llo/h;->b:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
