.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->O(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$deepLinkUrl:Ljava/lang/String;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$jumpType:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

.field final synthetic val$snapshotBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$deepLinkUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$jumpType:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$errorMessage:Ljava/lang/String;

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$snapshotBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$info:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$deepLinkUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$jumpType:Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$errorMessage:Ljava/lang/String;

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$11;->val$snapshotBundle:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->G(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$ClickJumpType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
