.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->t0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$webId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$targetUrl:Ljava/lang/String;

    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$redirectType:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$status:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$errorType:Ljava/lang/String;

    iput p7, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$errorCode:I

    iput-wide p8, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$waitTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$webId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$targetUrl:Ljava/lang/String;

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$redirectType:I

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$status:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$errorType:Ljava/lang/String;

    iget v6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$errorCode:I

    iget-wide v7, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$39;->val$waitTime:J

    invoke-static/range {v0 .. v8}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->q0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method
