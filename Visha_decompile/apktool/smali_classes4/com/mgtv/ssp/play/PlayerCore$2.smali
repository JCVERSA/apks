.class Lcom/mgtv/ssp/play/PlayerCore$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/d;


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

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$2;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoHeight()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$2;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$2;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVideoWidth()I
    .locals 1

    iget-object v0, p0, Lcom/mgtv/ssp/play/PlayerCore$2;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {v0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$2;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-static {p0}, Lcom/mgtv/ssp/play/PlayerCore;->access$000(Lcom/mgtv/ssp/play/PlayerCore;)Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/mgtv/thirdsdk/playcore/callback/SdkPlayerInterface;->getVideoWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onPlayStatusChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$2;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayState(I)V

    return-void
.end method
