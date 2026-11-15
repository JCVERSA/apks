.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$errorCode:I

.field final synthetic val$errorType:Ljava/lang/String;

.field final synthetic val$redirectType:I

.field final synthetic val$status:Ljava/lang/String;

.field final synthetic val$targetUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$waitTime:J

.field final synthetic val$webId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$webId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$targetUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$redirectType:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$status:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$errorType:Ljava/lang/String;

    .line 12
    .line 13
    iput p7, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$errorCode:I

    .line 14
    .line 15
    iput-wide p8, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$waitTime:J

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$webId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$targetUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$redirectType:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$status:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$errorType:Ljava/lang/String;

    .line 12
    .line 13
    iget v6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$errorCode:I

    .line 14
    .line 15
    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$38;->val$waitTime:J

    .line 16
    .line 17
    invoke-static/range {v0 .. v8}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
