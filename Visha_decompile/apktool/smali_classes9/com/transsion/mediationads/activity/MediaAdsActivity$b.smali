.class public final Lcom/transsion/mediationads/activity/MediaAdsActivity$b;
.super Lcom/hisavana/common/interfacz/TAdditionalListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediationads/activity/MediaAdsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/mediationads/activity/MediaAdsActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/mediationads/activity/MediaAdsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-direct {p0}, Lcom/hisavana/common/interfacz/TAdditionalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClick(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Splash ad clicked, nativeInfo: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mediation_ad_MediaAdsActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lrz5;->a:Lrz5$a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lrz5$a;->a(I)V

    return-void
.end method

.method public onClosed(I)V
    .locals 7

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onClosed(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Splash ad closed, source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediation_ad_MediaAdsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->w(Lcom/transsion/mediationads/activity/MediaAdsActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->E(Lcom/transsion/mediationads/activity/MediaAdsActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->I(Lcom/transsion/mediationads/activity/MediaAdsActivity;Z)V

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->v(Lcom/transsion/mediationads/activity/MediaAdsActivity;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->v(Lcom/transsion/mediationads/activity/MediaAdsActivity;)J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    invoke-static {v1, v2, v3, v4}, Lwn8;->e(JJ)J

    move-result-wide v3

    :cond_0
    sget-object p1, Lrz5;->a:Lrz5$a;

    invoke-virtual {p1, v0, v0, v3, v4}, Lrz5$a;->b(IIJ)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-virtual {p0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->U()V

    return-void
.end method

.method public onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadFailure(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Splash ad onLoadFailure: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "mediation_ad_MediaAdsActivity"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p2}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->D(Lcom/transsion/mediationads/activity/MediaAdsActivity;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->J(Lcom/transsion/mediationads/activity/MediaAdsActivity;Z)V

    sget-object v1, Lrz5;->a:Lrz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p2}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->u(Lcom/transsion/mediationads/activity/MediaAdsActivity;)J

    move-result-wide v4

    sub-long v4, v2, v4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lrz5$a;->d(IIJLjava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const-string p2, "mi_rule"

    invoke-static {p1, p2}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->L(Lcom/transsion/mediationads/activity/MediaAdsActivity;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-virtual {p0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->U()V

    return-void
.end method

.method public onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 7

    const-string v0, "additionalInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onLoadSuccess(Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->F(Lcom/transsion/mediationads/activity/MediaAdsActivity;)Lcom/hisavana/mediation/ad/TSplashAd;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpca;->hasAd()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Splash ad onLoadSuccess hasAd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mediation_ad_MediaAdsActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    :cond_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const-string p1, "mi_rule"

    invoke-static {p0, p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->L(Lcom/transsion/mediationads/activity/MediaAdsActivity;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->U()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->M(Lcom/transsion/mediationads/activity/MediaAdsActivity;Z)V

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->D(Lcom/transsion/mediationads/activity/MediaAdsActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1, v0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->J(Lcom/transsion/mediationads/activity/MediaAdsActivity;Z)V

    sget-object v1, Lrz5;->a:Lrz5$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->u(Lcom/transsion/mediationads/activity/MediaAdsActivity;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual/range {v1 .. v6}, Lrz5$a;->d(IIJLjava/lang/String;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->G(Lcom/transsion/mediationads/activity/MediaAdsActivity;)V

    iget-object p0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {p0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->N(Lcom/transsion/mediationads/activity/MediaAdsActivity;)V

    return-void
.end method

.method public onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 2

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShow(Lcom/hisavana/common/bean/TAdNativeInfo;Lcom/hisavana/common/bean/AdditionalInfo;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Splash ad shown, nativeInfo: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mediation_ad_MediaAdsActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->H(Lcom/transsion/mediationads/activity/MediaAdsActivity;J)V

    sget-object p1, Lrz5;->a:Lrz5$a;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lrz5$a;->e(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const-string p1, "no"

    invoke-static {p0, p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->L(Lcom/transsion/mediationads/activity/MediaAdsActivity;Ljava/lang/String;)V

    return-void
.end method

.method public onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V
    .locals 1

    const-string v0, "additionalInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/hisavana/common/interfacz/TAdditionalListener;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    iget-object p0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$b;->d:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const-string p1, "mi_rule"

    invoke-static {p0, p1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->L(Lcom/transsion/mediationads/activity/MediaAdsActivity;Ljava/lang/String;)V

    return-void
.end method
