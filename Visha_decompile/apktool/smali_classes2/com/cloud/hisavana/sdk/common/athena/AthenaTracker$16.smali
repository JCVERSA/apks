.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

.field final synthetic val$adsDTOs:Ljava/util/List;

.field final synthetic val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field final synthetic val$filterList:Landroidx/collection/ArraySet;

.field final synthetic val$offlineCount:I


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$adsDTOs:Ljava/util/List;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$offlineCount:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$filterList:Landroidx/collection/ArraySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$adsDTOs:Ljava/util/List;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$offlineCount:I

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$16;->val$filterList:Landroidx/collection/ArraySet;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->k0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/ArraySet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string v1, "AthenaTracker"

    const-string/jumbo v2, "trackSspReturn error"

    invoke-virtual {v0, v1, v2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
