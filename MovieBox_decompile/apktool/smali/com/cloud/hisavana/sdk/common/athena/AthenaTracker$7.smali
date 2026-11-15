.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->M(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$errorCode:I

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;->val$requestId:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;->val$errorCode:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;->val$requestId:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$7;->val$errorCode:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->K(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
