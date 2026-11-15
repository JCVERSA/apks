.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->F(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$isOfflineAd:Z

.field final synthetic val$jsTriggerId:Ljava/lang/String;

.field final synthetic val$showId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;->val$jsTriggerId:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;->val$showId:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;->val$isOfflineAd:Z

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
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;->val$jsTriggerId:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;->val$showId:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$33;->val$isOfflineAd:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->y(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
