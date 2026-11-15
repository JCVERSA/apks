.class public Lxt4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field public final c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field public final synthetic d:Lxt4;


# direct methods
.method public constructor <init>(Lxt4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V
    .locals 0

    iput-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p3, p0, Lxt4$b;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    if-eqz p1, :cond_7

    iget-object v0, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    instance-of v2, p1, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/u;->n()Lcom/cloud/hisavana/sdk/u;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/u;->p()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lxt4$b;->d:Lxt4;

    invoke-static {v2, v0, v1}, Lxt4;->c(Lxt4;J)J

    iget-object v0, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/u;->n()Lcom/cloud/hisavana/sdk/u;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lxt4$b;->d:Lxt4;

    invoke-static {v2}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object v2

    iget-object v3, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    check-cast p1, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/cloud/hisavana/sdk/u;->m(Landroid/content/Context;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/u;->n()Lcom/cloud/hisavana/sdk/u;

    move-result-object p1

    iget-object v0, p0, Lxt4$b;->d:Lxt4;

    invoke-static {v0}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object v0

    iget-object p0, p0, Lxt4$b;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1, v0, p0}, Lcom/cloud/hisavana/sdk/u;->l(Ljava/lang/Object;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p1}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p1}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/b0;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p1}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/b0;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    iget-object v0, p0, Lxt4$b;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    iget-object p0, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1, v0, p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->o(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "ssp"

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ad_download"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    iget-object v2, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    const-string v4, "pslink half setClickType, click_install"

    invoke-virtual {v2, v3, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    iget-object v2, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    invoke-static {}, Likd;->b()Likd;

    move-result-object v2

    const-string v4, "pslink half setClickType, click_img"

    invoke-virtual {v2, v3, v4}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v2, p0, Lxt4$b;->d:Lxt4;

    invoke-static {v2}, Lxt4;->q(Lxt4;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v11, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget-object v4, p0, Lxt4$b;->d:Lxt4;

    invoke-static {v4}, Lxt4;->a(Lxt4;)F

    move-result v5

    iget-object v4, p0, Lxt4$b;->d:Lxt4;

    invoke-static {v4}, Lxt4;->h(Lxt4;)F

    move-result v6

    iget-object v4, p0, Lxt4$b;->d:Lxt4;

    invoke-static {v4}, Lxt4;->l(Lxt4;)F

    move-result v7

    iget-object v4, p0, Lxt4$b;->d:Lxt4;

    invoke-static {v4}, Lxt4;->o(Lxt4;)F

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    iget-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p1}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p1}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lied;

    move-result-object p1

    invoke-virtual {p1}, Lied;->x()Z

    move-result p1

    :goto_2
    invoke-static {v2, v3, v11, p1}, Lcom/cloud/hisavana/sdk/U0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    iget-object p1, p0, Lxt4$b;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p1}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p1}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/b0;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p1}, Lxt4;->r(Lxt4;)Lcom/cloud/hisavana/sdk/b0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/b0;->Z()Lcom/cloud/hisavana/sdk/api/listener/AdCallback;

    move-result-object p1

    iget-object v2, p0, Lxt4$b;->c:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1, v2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->y(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_6
    :goto_3
    iget-object p0, p0, Lxt4$b;->d:Lxt4;

    invoke-static {p0, v0, v1}, Lxt4;->c(Lxt4;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :goto_4
    invoke-static {}, Likd;->b()Likd;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lja1;->e(Ljava/lang/String;)V

    :cond_7
    :goto_5
    return-void
.end method
