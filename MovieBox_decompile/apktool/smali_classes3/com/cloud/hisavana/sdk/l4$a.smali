.class Lcom/cloud/hisavana/sdk/l4$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/i4$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/l4;->a(Lcom/cloud/hisavana/sdk/p3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/l4;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/l4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/l4$a;->a:Lcom/cloud/hisavana/sdk/l4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4$a;->a:Lcom/cloud/hisavana/sdk/l4;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/l4;->h(Lcom/cloud/hisavana/sdk/l4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l4$a;->a:Lcom/cloud/hisavana/sdk/l4;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/l4;->f(Lcom/cloud/hisavana/sdk/l4;)Lcom/cloud/hisavana/sdk/p3;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public b(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4$a;->a:Lcom/cloud/hisavana/sdk/l4;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/l4;->i(Lcom/cloud/hisavana/sdk/l4;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/l4$a;->a:Lcom/cloud/hisavana/sdk/l4;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/l4;->f(Lcom/cloud/hisavana/sdk/l4;)Lcom/cloud/hisavana/sdk/p3;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
