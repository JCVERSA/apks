.class Lcom/mgtv/ssp/play/PlayerCore$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayerCore$3;->onScreenOrientationChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mgtv/ssp/play/PlayerCore$3;

.field final synthetic val$isFullScreen:Z

.field final synthetic val$playerData:Lcom/mgtv/thirdsdk/playcore/e;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayerCore$3;ZLcom/mgtv/thirdsdk/playcore/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$3$1;->this$1:Lcom/mgtv/ssp/play/PlayerCore$3;

    iput-boolean p2, p0, Lcom/mgtv/ssp/play/PlayerCore$3$1;->val$isFullScreen:Z

    iput-object p3, p0, Lcom/mgtv/ssp/play/PlayerCore$3$1;->val$playerData:Lcom/mgtv/thirdsdk/playcore/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/mgtv/ssp/play/PlayerCore$3$1;->val$isFullScreen:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$3$1;->val$playerData:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->noticeFullScreen()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$3$1;->val$playerData:Lcom/mgtv/thirdsdk/playcore/e;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/mgmi/ssp/PreRollVideoAd;->noticeHarlfScreen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
