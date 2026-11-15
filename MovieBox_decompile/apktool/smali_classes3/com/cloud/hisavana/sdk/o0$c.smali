.class Lcom/cloud/hisavana/sdk/o0$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/sdk/i4$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/o0;->A(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/o0;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o0$c;->a:Lcom/cloud/hisavana/sdk/o0;

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0$c;->a:Lcom/cloud/hisavana/sdk/o0;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/cloud/hisavana/sdk/o0;->m(Lcom/cloud/hisavana/sdk/o0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0$c;->a:Lcom/cloud/hisavana/sdk/o0;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/o0;->l(Lcom/cloud/hisavana/sdk/o0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o0$c;->a:Lcom/cloud/hisavana/sdk/o0;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/cloud/hisavana/sdk/o0;->h(Lcom/cloud/hisavana/sdk/o0;)Lcom/cloud/hisavana/sdk/p3;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public b(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0$c;->a:Lcom/cloud/hisavana/sdk/o0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1, p2}, Lcom/cloud/hisavana/sdk/o0;->m(Lcom/cloud/hisavana/sdk/o0;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0$c;->a:Lcom/cloud/hisavana/sdk/o0;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/o0;->y(Lcom/cloud/hisavana/sdk/o0;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->a:Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o0$c;->a:Lcom/cloud/hisavana/sdk/o0;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/o0;->h(Lcom/cloud/hisavana/sdk/o0;)Lcom/cloud/hisavana/sdk/p3;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SUCCESS:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->U(ILcom/cloud/hisavana/sdk/p3;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
