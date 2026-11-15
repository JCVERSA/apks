.class public Lcom/cloud/hisavana/sdk/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/h0$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/j0;->a(Lied;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/j0;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/j0;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/j0$a;->a:Lcom/cloud/hisavana/sdk/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/j0$a;->a:Lcom/cloud/hisavana/sdk/j0;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/j0;->i(Lcom/cloud/hisavana/sdk/j0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/j0$a;->a:Lcom/cloud/hisavana/sdk/j0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/j0;->g(Lcom/cloud/hisavana/sdk/j0;)Lied;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILied;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/j0$a;->a:Lcom/cloud/hisavana/sdk/j0;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/j0;->j(Lcom/cloud/hisavana/sdk/j0;Ljava/util/List;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/j0$a;->a:Lcom/cloud/hisavana/sdk/j0;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/j0;->g(Lcom/cloud/hisavana/sdk/j0;)Lied;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p0, v0, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILied;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method
