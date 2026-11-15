.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$progress:I

.field final synthetic val$redirectType:I

.field final synthetic val$spendTime:J

.field final synthetic val$targetUrl:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$webId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$webId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$targetUrl:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$progress:I

    .line 8
    .line 9
    iput p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$redirectType:I

    .line 10
    .line 11
    iput-wide p6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$spendTime:J

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
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$webId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$targetUrl:Ljava/lang/String;

    .line 6
    .line 7
    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$progress:I

    .line 8
    .line 9
    iget v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$redirectType:I

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$37;->val$spendTime:J

    .line 12
    .line 13
    invoke-static/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->o0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
