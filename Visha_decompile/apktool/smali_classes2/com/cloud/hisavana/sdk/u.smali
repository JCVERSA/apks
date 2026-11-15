.class public Lcom/cloud/hisavana/sdk/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/u$c;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/lang/ref/WeakReference;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/u;->a:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u;->e:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/u;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/u;->f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V

    return-void
.end method

.method public static n()Lcom/cloud/hisavana/sdk/u;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/u$c;->a:Lcom/cloud/hisavana/sdk/u;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/u;->k(Ljava/lang/Object;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    invoke-static {}, Lvl4;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/u;->k(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v1, p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/sdk/u;->k(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public d(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/u;->e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    return-void
.end method

.method public e(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 8

    if-eqz p2, :cond_0

    if-eqz p4, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string/jumbo v1, "ssp"

    const-string v2, "AdCloseManager -------> registerCloseAd ---- >"

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/cloud/hisavana/sdk/u$a;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/u$a;-><init>(Lcom/cloud/hisavana/sdk/u;Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final synthetic f(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;)V
    .locals 0

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/cloud/hisavana/sdk/u;->j(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "tag_ad_bean"

    invoke-virtual {p0, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_0
    const-string p3, "close_hash_code"

    invoke-virtual {p0, p3, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/cloud/hisavana/sdk/common/activity/PersonalCloseAdActivity;

    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lvl4;->g()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lzk5;->h()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lzk5;->i(Landroid/app/Activity;)Z

    move-result p1

    const-string/jumbo p3, "ssp"

    if-nez p1, :cond_1

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "click() --> topActivity is not alive"

    invoke-virtual {p0, p3, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string/jumbo p2, "show() --> startActivity error"

    invoke-virtual {p1, p3, p2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    instance-of p0, p1, Landroid/app/Activity;

    if-nez p0, :cond_3

    const/high16 p0, 0x10000000

    invoke-virtual {p2, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_3
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public h(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Z)V
    .locals 7

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCloseAd ---- >  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ssp"

    invoke-virtual {v0, v2, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/cloud/hisavana/sdk/u;->a:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/u;->a:J

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/u;->m(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lcom/cloud/hisavana/sdk/u;->o(Ljava/lang/Object;)V

    instance-of p0, p2, Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_4

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object p0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;->RU:Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    if-eq p0, p1, :cond_4

    check-cast p2, Lcom/cloud/hisavana/sdk/q1;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/q1;->r0(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p2}, Lcom/cloud/hisavana/sdk/u;->k(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string p1, "registerCloseAd ---- > interval time not reached"

    invoke-virtual {p0, v2, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/cloud/hisavana/sdk/common/activity/AdvertiserLinkActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lvl4;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lzk5;->h()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lzk5;->i(Landroid/app/Activity;)Z

    move-result p2

    const-string/jumbo v0, "ssp"

    if-nez p2, :cond_0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p0

    const-string/jumbo p1, "startBaseWebActivity() --> topActivity is not alive"

    invoke-virtual {p0, v0, p1}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    const-string/jumbo p2, "startBaseWebActivity() --> startActivity error"

    invoke-virtual {p1, v0, p2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Landroid/app/Activity;

    if-nez p2, :cond_2

    const/high16 p2, 0x10000000

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final j(Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuItemView$Type;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/u$b;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string p0, "clipboard"

    invoke-virtual {p2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_4

    check-cast p0, Landroid/content/ClipboardManager;

    sget p1, Lcom/cloud/hisavana/sdk/R$string;->copy_link:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lkn8;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    sget p0, Lcom/cloud/hisavana/sdk/R$string;->copy_successfully:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "ssp"

    invoke-virtual {p1, p2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p3}, Lkn8;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/cloud/hisavana/sdk/u;->i(Landroid/content/Context;Ljava/lang/String;)V

    instance-of p0, p4, Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_4

    check-cast p4, Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {p4, v1}, Lcom/cloud/hisavana/sdk/q1;->r0(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2, p4, p3}, Lcom/cloud/hisavana/sdk/u;->g(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    instance-of p0, p4, Lcom/cloud/hisavana/sdk/q1;

    if-eqz p0, :cond_4

    check-cast p4, Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {p4, v1}, Lcom/cloud/hisavana/sdk/q1;->r0(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/q1;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/q1;->x0()V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Land;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Land;

    invoke-virtual {v0}, Land;->P()V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/b0;

    if-eqz v0, :cond_5

    invoke-static {}, Lvl4;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    move-object v1, p1

    check-cast v1, Lcom/cloud/hisavana/sdk/b0;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/b0;->R(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/activity/TAdInterstitialActivity;->H0()V

    goto :goto_1

    :cond_6
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/activity/HisavanaInterstitialTemplateActivity;->G()V

    :cond_7
    :goto_1
    invoke-static {}, Lvl4;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/u;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-void
.end method

.method public l(Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 3

    invoke-static {}, Lvl4;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/u;->e:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u;->b:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u;->c:Ljava/lang/ref/WeakReference;

    :goto_1
    return-void
.end method

.method public m(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/u$b;->a:[I

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p4, 0x2

    if-eq v1, p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/u;->g(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkn8;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ll5d;

    invoke-direct {v1, p0, p1, p3, p2}, Ll5d;-><init>(Lcom/cloud/hisavana/sdk/u;Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Object;)V

    invoke-static {p4, v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/expandmenu/a;->i(Landroid/view/View;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/widget/expandmenu/AdExpandMenuContentView$d;)Landroid/widget/PopupWindow;

    move-result-object p0

    instance-of p1, p2, Lcom/cloud/hisavana/sdk/q1;

    if-eqz p1, :cond_4

    check-cast p2, Lcom/cloud/hisavana/sdk/q1;

    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/q1;->f0(Landroid/widget/PopupWindow;)V

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v0
.end method

.method public o(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lvl4;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/u;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u;->b:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/hisavana/sdk/u;->a:J

    return-wide v0
.end method
