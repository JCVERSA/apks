.class public Lcom/cloud/hisavana/sdk/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloud/hisavana/sdk/h0$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/o;->C(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/cloud/hisavana/sdk/o;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/o;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o$c;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$c;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0, p1, p2}, Lcom/cloud/hisavana/sdk/o;->p(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$c;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o$c;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/o;->i(Lcom/cloud/hisavana/sdk/o;)Lied;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILied;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$c;->a:Lcom/cloud/hisavana/sdk/o;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/cloud/hisavana/sdk/o;->p(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o$c;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/o;->A(Lcom/cloud/hisavana/sdk/o;Ljava/util/List;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o$c;->a:Lcom/cloud/hisavana/sdk/o;

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/o;->i(Lcom/cloud/hisavana/sdk/o;)Lied;

    move-result-object p0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p0, v0, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILied;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method
