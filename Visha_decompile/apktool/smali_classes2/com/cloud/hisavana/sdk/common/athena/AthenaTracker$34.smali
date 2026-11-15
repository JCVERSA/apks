.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->I(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$isOfflineAd:Z

.field final synthetic val$jsTriggerId:Ljava/lang/String;

.field final synthetic val$showId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$jsTriggerId:Ljava/lang/String;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$showId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$isOfflineAd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$jsTriggerId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$showId:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$isOfflineAd:Z

    invoke-static {v0, v1, p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->z(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
