.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Y(Lied;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$errorCode:I

.field final synthetic val$fetchInfo:Lied;


# direct methods
.method public constructor <init>(Lied;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$fetchInfo:Lied;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$fetchInfo:Lied;

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$22;->val$errorCode:I

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->V(Lied;I)V

    return-void
.end method
