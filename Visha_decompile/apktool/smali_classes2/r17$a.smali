.class public Lr17$a;
.super Lcom/cloud/hisavana/sdk/api/listener/AdCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lr17;


# direct methods
.method public constructor <init>(Lr17;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;-><init>()V

    iput-object p1, p0, Lr17$a;->a:Lr17;

    return-void
.end method


# virtual methods
.method public d()Ln6;
    .locals 0

    iget-object p0, p0, Lr17$a;->a:Lr17;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lr17;->f:Ln6;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lr17$a;->a:Lr17;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->o(Lcom/cloud/hisavana/sdk/G;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lr17$a;->a:Lr17;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object p0, p0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    invoke-virtual {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->q(Lcom/cloud/hisavana/sdk/G;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public q(Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr17$a;->a:Lr17;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->q(Lcom/cloud/hisavana/sdk/G;Landroid/os/Bundle;)V

    return-void
.end method

.method public r(Lcom/cloud/hisavana/sdk/G;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lr17$a;->a:Lr17;

    if-eqz v0, :cond_0

    iput-object p1, v0, Lr17;->a:Lcom/cloud/hisavana/sdk/G;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;->r(Lcom/cloud/hisavana/sdk/G;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
