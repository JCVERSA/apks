.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->s0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

.field final synthetic val$snapshotBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$snapshotBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$40;->val$snapshotBundle:Landroid/os/Bundle;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->p0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Landroid/os/Bundle;)V

    return-void
.end method
