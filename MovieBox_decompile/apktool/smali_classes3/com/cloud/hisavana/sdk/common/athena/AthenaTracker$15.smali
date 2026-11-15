.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

.field final synthetic val$adsDTOs:Ljava/util/List;

.field final synthetic val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field final synthetic val$filterList:Landroidx/collection/b;

.field final synthetic val$offlineCount:I


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adsDTOs:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 6
    .line 7
    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$offlineCount:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$filterList:Landroidx/collection/b;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adsDTOs:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adError:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$adxImpBean:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$offlineCount:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$15;->val$filterList:Landroidx/collection/b;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "AthenaTracker"

    .line 21
    .line 22
    const-string v3, "trackSspReturn error"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
