.class public final Lcom/transsion/mediationads/activity/MediaAdsActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hisavana/common/interfacz/OnSkipListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mediationads/activity/MediaAdsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/mediationads/activity/MediaAdsActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/mediationads/activity/MediaAdsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->K(Lcom/transsion/mediationads/activity/MediaAdsActivity;Z)V

    iget-object v0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {v0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->v(Lcom/transsion/mediationads/activity/MediaAdsActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {v0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->v(Lcom/transsion/mediationads/activity/MediaAdsActivity;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3, v4, v5}, Lwn8;->e(JJ)J

    move-result-wide v4

    :cond_0
    sget-object v0, Lrz5;->a:Lrz5$a;

    invoke-virtual {v0, v1, v4, v5}, Lrz5$a;->f(IJ)V

    iget-object p0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-virtual {p0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->U()V

    return-void
.end method

.method public onTimeReach()V
    .locals 8

    iget-object v0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->K(Lcom/transsion/mediationads/activity/MediaAdsActivity;Z)V

    iget-object v0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {v0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->v(Lcom/transsion/mediationads/activity/MediaAdsActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-static {v0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->v(Lcom/transsion/mediationads/activity/MediaAdsActivity;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    invoke-static {v2, v3, v4, v5}, Lwn8;->e(JJ)J

    move-result-wide v4

    :cond_0
    sget-object v0, Lrz5;->a:Lrz5$a;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v4, v5}, Lrz5$a;->b(IIJ)V

    iget-object p0, p0, Lcom/transsion/mediationads/activity/MediaAdsActivity$c;->a:Lcom/transsion/mediationads/activity/MediaAdsActivity;

    invoke-virtual {p0}, Lcom/transsion/mediationads/activity/MediaAdsActivity;->U()V

    return-void
.end method
