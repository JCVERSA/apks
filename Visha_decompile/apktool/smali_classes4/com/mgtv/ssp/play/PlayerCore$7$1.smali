.class Lcom/mgtv/ssp/play/PlayerCore$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayerCore$7;->OnVideoFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mgtv/ssp/play/PlayerCore$7;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayerCore$7;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$7$1;->this$1:Lcom/mgtv/ssp/play/PlayerCore$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7$1;->this$1:Lcom/mgtv/ssp/play/PlayerCore$7;

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$7;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore;->mVideoController:Lcom/mgtv/ssp/control/BaseVideoController;

    if-eqz p0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/mgtv/ssp/control/BaseVideoController;->setPlayState(I)V

    :cond_0
    return-void
.end method
