.class Lcom/mgtv/ssp/play/PlayerCore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/thirdsdk/playcore/c$c;


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

    iput-object p1, p0, Lcom/mgtv/ssp/play/PlayerCore$1;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChangePorcess(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVolumeChangePorcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lyzzzz"

    invoke-static {v2, v0, v1}, Lcom/hunantv/imgo/log/e;->b(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$1;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayerState(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/play/PlayerCore$1;->this$0:Lcom/mgtv/ssp/play/PlayerCore;

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/play/PlayerCore;->setPlayerState(I)V

    :goto_0
    return-void
.end method
