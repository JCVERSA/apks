.class Lcom/mgtv/ssp/play/PlayerCore$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/play/PlayerCore;->init(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mgtv/ssp/play/PlayerCore;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/play/PlayerCore;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$3;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOrientationChange(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore$3;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayerState(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/mgtv/ssp/play/PlayerCore$3;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayerState(I)V

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "onConfigurationChanged"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$3;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p1}, Lcom/mgtv/ssp/play/PlayerCore;->access$100(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$3;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p1}, Lcom/mgtv/ssp/play/PlayerCore;->access$100(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/ssp/d;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/mgtv/ssp/d;->a(Z)V

    :cond_2
    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$3;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p1}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$3;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p1}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object p1

    invoke-interface {p1}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getPlayerData()Lcom/mgtv/thirdsdk/playcore/e;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/mgtv/thirdsdk/playcore/e;->aN:Lcom/mgmi/ssp/PreRollVideoAd;

    if-eqz v1, :cond_3

    iput-boolean v0, p1, Lcom/mgtv/thirdsdk/playcore/e;->at:Z

    new-instance v1, Lcom/mgtv/ssp/play/PlayerCore$3$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/mgtv/ssp/play/PlayerCore$3$1;-><init>(Lcom/mgtv/ssp/play/PlayerCore$3;ZLcom/mgtv/thirdsdk/playcore/e;)V

    invoke-static {v1}, Lcom/hunantv/imgo/util/ThreadManager;->post(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
