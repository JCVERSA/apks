.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Y(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$codeSeatId:Ljava/lang/String;

.field final synthetic val$errorCode:I

.field final synthetic val$triggerType:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;->val$codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;->val$triggerType:I

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;->val$errorCode:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;->val$codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;->val$triggerType:I

    .line 4
    .line 5
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$41;->val$errorCode:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->X(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
