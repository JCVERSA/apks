.class public final synthetic Lcom/cloud/hisavana/sdk/common/athena/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lcom/cloud/hisavana/sdk/p3;

.field public final synthetic c:I

.field public final synthetic d:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/p3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->a:Landroid/os/Bundle;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 7
    .line 8
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->c:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->d:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->a:Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->b:Lcom/cloud/hisavana/sdk/p3;

    .line 4
    .line 5
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/o;->d:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/SSPTrackingHelper;->i(Landroid/os/Bundle;Lcom/cloud/hisavana/sdk/p3;ILcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
