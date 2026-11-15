.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->C(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$codeSeatId:Ljava/lang/String;

.field final synthetic val$errorCode:I

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;->val$codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;->val$requestId:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;->val$errorCode:I

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;->val$codeSeatId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;->val$requestId:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$42;->val$errorCode:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->v(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
