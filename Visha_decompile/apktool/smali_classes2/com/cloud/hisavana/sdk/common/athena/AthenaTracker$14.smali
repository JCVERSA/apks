.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->M(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$triggerType:I

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$requestId:Ljava/lang/String;

    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$requestTime:I

    iput p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$code:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$message:Ljava/lang/String;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$triggerType:I

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$requestId:Ljava/lang/String;

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$requestTime:I

    iget v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$code:I

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$message:Ljava/lang/String;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$14;->val$version:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->F(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
