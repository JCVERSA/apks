.class public Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;
.super Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/api/adx/ViewApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/api/adx/ViewApi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;->a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d()Lcom/cloud/hisavana/sdk/api/listener/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;->a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->f:Lcom/cloud/hisavana/sdk/api/listener/d;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;->a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->o(Lcom/cloud/hisavana/sdk/F;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;->a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->q(Lcom/cloud/hisavana/sdk/F;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method public q(Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi$a;->a:Lcom/cloud/hisavana/sdk/api/adx/ViewApi;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iput-object p1, v0, Lcom/cloud/hisavana/sdk/api/adx/ViewApi;->a:Lcom/cloud/hisavana/sdk/F;

    .line 6
    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->q(Lcom/cloud/hisavana/sdk/F;Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
