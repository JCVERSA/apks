.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->J(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$code:I

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$requestTime:I

.field final synthetic val$triggerType:I

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$triggerType:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$requestId:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$requestTime:I

    .line 6
    .line 7
    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$code:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$message:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$version:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$triggerType:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$requestId:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$requestTime:I

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$code:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$message:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$13;->val$version:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->E(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
