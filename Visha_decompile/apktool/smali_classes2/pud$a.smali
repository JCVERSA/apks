.class public Lpud$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lpud;


# direct methods
.method public constructor <init>(Lpud;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lpud$a;->a:Lpud;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fc_problem_onReceive,intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterGemini"

    invoke-virtual {p1, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "mAdBean"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lpud$a;->a:Lpud;

    invoke-static {v2}, Lpud;->a(Lpud;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lpud$a;->a:Lpud;

    invoke-static {v2}, Lpud;->a(Lpud;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lpud$a;->a:Lpud;

    invoke-static {v2}, Lpud;->a(Lpud;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isRecordClick()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setRecordClick(Z)V

    :cond_1
    iget-object v2, p0, Lpud$a;->a:Lpud;

    invoke-static {v2, v0}, Lpud;->b(Lpud;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lpud$a;->a:Lpud;

    invoke-static {v2}, Lpud;->g(Lpud;)Lvnd;

    move-result-object v2

    invoke-virtual {v2, v0}, Lvnd;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_2
    iget-object v2, p0, Lpud$a;->a:Lpud;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpud$a;->a:Lpud;

    invoke-static {v3}, Lpud;->i(Lpud;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_click"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "receive interstitial click"

    invoke-virtual {p1, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAllowTrackingADClick()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string/jumbo p2, "tracking is not allowed\uff0cchange isAdClickTracking = true"

    invoke-virtual {p1, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    iget-object p0, p0, Lpud$a;->a:Lpud;

    invoke-static {p0}, Lpud;->g(Lpud;)Lvnd;

    move-result-object p0

    invoke-virtual {p0}, Lvnd;->I()V

    goto/16 :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpud$a;->a:Lpud;

    invoke-static {v2}, Lpud;->i(Lpud;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_close"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "receive interstitial ad_close"

    invoke-virtual {p1, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lpud$a;->a:Lpud;

    invoke-static {p1}, Lpud;->g(Lpud;)Lvnd;

    move-result-object p1

    invoke-virtual {p1}, Lvnd;->J()V

    iget-object p1, p0, Lpud$a;->a:Lpud;

    invoke-static {p1}, Lpud;->k(Lpud;)V

    iget-object p0, p0, Lpud$a;->a:Lpud;

    invoke-static {p0, v2}, Lpud;->c(Lpud;Lpud$a;)Lpud$a;

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lpud$a;->a:Lpud;

    invoke-static {v3}, Lpud;->i(Lpud;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_error"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string v0, "receive interstitial error"

    invoke-virtual {p1, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lpud$a;->a:Lpud;

    invoke-static {p1}, Lpud;->g(Lpud;)Lvnd;

    move-result-object p1

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v1, "error_code"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "error_msg"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lvnd;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p1, p0, Lpud$a;->a:Lpud;

    invoke-static {p1}, Lpud;->k(Lpud;)V

    iget-object p0, p0, Lpud$a;->a:Lpud;

    invoke-static {p0, v2}, Lpud;->c(Lpud;Lpud$a;)Lpud$a;

    goto/16 :goto_1

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lpud$a;->a:Lpud;

    invoke-static {v0}, Lpud;->i(Lpud;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_show"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "receive interstitial show"

    invoke-virtual {p1, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lpud$a;->a:Lpud;

    invoke-static {p0}, Lpud;->g(Lpud;)Lvnd;

    move-result-object p0

    invoke-virtual {p0}, Lvnd;->K()V

    goto :goto_1

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lpud$a;->a:Lpud;

    invoke-static {v0}, Lpud;->i(Lpud;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_pre_imp"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "receive interstitial pre impression"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lpud$a;->a:Lpud;

    invoke-static {v0}, Lpud;->i(Lpud;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_destroy"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string p2, "receive interstitial ad_destroy"

    invoke-virtual {p1, v1, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lpud$a;->a:Lpud;

    if-eqz p1, :cond_a

    invoke-static {p1}, Lpud;->k(Lpud;)V

    iget-object p0, p0, Lpud$a;->a:Lpud;

    invoke-static {p0, v2}, Lpud;->c(Lpud;Lpud$a;)Lpud$a;

    :cond_a
    :goto_1
    return-void
.end method
