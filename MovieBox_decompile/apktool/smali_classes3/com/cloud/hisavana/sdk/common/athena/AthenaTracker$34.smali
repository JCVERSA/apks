.class Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->E(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field final synthetic val$link:Ljava/lang/String;

.field final synthetic val$result:Z

.field final synthetic val$showId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$showId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$link:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$result:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$adsDTO:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$showId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$link:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$34;->val$result:Z

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker$a;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
