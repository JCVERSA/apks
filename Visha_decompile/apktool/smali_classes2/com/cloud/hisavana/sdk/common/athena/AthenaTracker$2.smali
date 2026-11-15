.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$adCount:I

.field final synthetic val$codeSeatId:Ljava/lang/String;

.field final synthetic val$sceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;->val$sceneId:Ljava/lang/String;

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;->val$adCount:I

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;->val$codeSeatId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;->val$sceneId:Ljava/lang/String;

    iget v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;->val$adCount:I

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$2;->val$codeSeatId:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->P(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
