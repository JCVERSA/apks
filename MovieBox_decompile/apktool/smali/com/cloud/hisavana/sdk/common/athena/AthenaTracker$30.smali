.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adFilterIds:Ljava/util/List;

.field final synthetic val$adFilterReasons:Ljava/util/List;

.field final synthetic val$codeSeatId:Ljava/lang/String;

.field final synthetic val$isOffline:Z

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$source:I

.field final synthetic val$triggerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$requestId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$triggerId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$codeSeatId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$adFilterIds:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$adFilterReasons:Ljava/util/List;

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$isOffline:Z

    .line 12
    .line 13
    iput p7, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$source:I

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$requestId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$triggerId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$codeSeatId:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$adFilterIds:Ljava/util/List;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$adFilterReasons:Ljava/util/List;

    .line 10
    .line 11
    iget-boolean v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$isOffline:Z

    .line 12
    .line 13
    iget v6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$30;->val$source:I

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
