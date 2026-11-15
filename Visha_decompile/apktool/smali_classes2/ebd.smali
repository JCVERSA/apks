.class public final Lebd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh5;


# instance fields
.field public a:Lrpd;

.field public final b:Ljava/lang/String;

.field public c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public d:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lrpd;)V
    .locals 1

    const-string/jumbo v0, "tranRewarded"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebd;->a:Lrpd;

    const-string p1, "Rewarded"

    iput-object p1, p0, Lebd;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/Object;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "event"

    invoke-static {p3, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Likd;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    iget-object v2, p0, Lebd;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent --> id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", event = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", params = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lebd;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_show"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lebd;->a:Lrpd;

    invoke-virtual {p0}, Lrpd;->I()V

    goto/16 :goto_7

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lebd;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_rewarded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_3

    iget-object p1, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTriggerShowSpend(J)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lebd;->a:Lrpd;

    invoke-virtual {p1}, Lrpd;->J()V

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    iget-object p0, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->e0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :goto_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/c;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lebd;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p4, :cond_6

    new-instance p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 p2, -0x1

    const-string p3, "ad show error"

    invoke-direct {p1, p2, p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object p1, p4

    check-cast p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    :goto_3
    iget-object p0, p0, Lebd;->a:Lrpd;

    invoke-virtual {p0, p1}, Lrpd;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto/16 :goto_7

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lebd;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_click"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    new-instance p1, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    invoke-direct {p1}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>()V

    if-eqz p4, :cond_8

    check-cast p4, Lkotlin/Pair;

    invoke-virtual {p4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.cloud.hisavana.sdk.data.bean.response.AdsDTO"

    invoke-static {p2, p3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.cloud.hisavana.sdk.common.tracking.DownUpPointBean"

    invoke-static {p1, p2}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    :cond_8
    iget-object p2, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isAllowTrackingADClick()Z

    move-result p2

    goto :goto_4

    :cond_9
    move p2, v0

    :goto_4
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lebd;->a:Lrpd;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lied;->x()Z

    move-result v1

    if-ne v1, v0, :cond_a

    move v1, v0

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    :goto_5
    xor-int/lit8 v2, p2, 0x1

    invoke-static {p3, p4, p1, v1, v2}, Lcom/cloud/hisavana/sdk/U0;->c(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;ZZ)I

    if-eqz p2, :cond_b

    iget-object p1, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_6

    :cond_b
    iget-object p1, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdClickTracking(Z)V

    :cond_c
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string/jumbo p2, "ssp"

    const-string/jumbo p3, "tracking is not allowed\uff0cchange isAdClickTracking = true"

    invoke-virtual {p1, p2, p3}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    iget-object p0, p0, Lebd;->a:Lrpd;

    invoke-virtual {p0}, Lrpd;->G()V

    goto :goto_7

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lebd;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_close"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lebd;->a:Lrpd;

    invoke-virtual {p0}, Lrpd;->H()V

    :cond_e
    :goto_7
    return-void
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lebd;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v2, Lj9d;->a:Lj9d;

    invoke-virtual {v2, v0, v1}, Lj9d;->c(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lebd;->d:Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    iput-object p1, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lebd;->d:Ljava/lang/Long;

    if-nez p1, :cond_0

    sget-object p1, Lj9d;->a:Lj9d;

    invoke-virtual {p1, p0}, Lj9d;->b(Lwh5;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lebd;->d:Ljava/lang/Long;

    :cond_0
    invoke-virtual {p0}, Lebd;->e()V

    sget-object p1, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lebd;->a:Lrpd;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lrpd;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    iget-object p0, p0, Lebd;->b:Ljava/lang/String;

    const-string/jumbo v0, "show() --> adBean == null"

    invoke-virtual {p1, p0, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lul4;->d()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_rewarded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lebd;->a:Lrpd;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/G;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setCloseDelayTime(I)V

    :goto_0
    iget-object v0, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->J:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lebd;->a:Lrpd;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;->a(Ljava/lang/ref/WeakReference;)V

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialRewardedActivity;

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTemplateHtmlFilePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;->k:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lebd;->a:Lrpd;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity$a;->a(Ljava/lang/ref/WeakReference;)V

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedTemplateActivity;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;->J:Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lebd;->a:Lrpd;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity$a;->a(Ljava/lang/ref/WeakReference;)V

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;

    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10010000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "adBean"

    iget-object v3, p0, Lebd;->c:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "prefix"

    invoke-virtual {p0}, Lebd;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "observerId"

    iget-object v3, p0, Lebd;->d:Ljava/lang/Long;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v2, "triggerTs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-static {}, Lvl4;->g()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_6

    :try_start_1
    invoke-static {}, Lzk5;->h()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lzk5;->i(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    iget-object v1, p0, Lebd;->b:Ljava/lang/String;

    const-string/jumbo v2, "show() --> topActivity is not alive"

    invoke-virtual {v0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lebd;->a:Lrpd;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_TOP_ACTIVITY_IS_NOT_ALIVE:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1}, Lrpd;->F(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :goto_4
    :try_start_2
    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    iget-object v2, p0, Lebd;->b:Ljava/lang/String;

    const-string/jumbo v3, "show() --> startActivity error"

    invoke-virtual {v1, v2, v3, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :goto_5
    invoke-static {}, Likd;->b()Likd;

    move-result-object v1

    iget-object p0, p0, Lebd;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show failed --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_6
    return-void
.end method
