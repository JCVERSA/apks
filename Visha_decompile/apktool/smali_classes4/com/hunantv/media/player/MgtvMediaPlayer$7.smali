.class Lcom/hunantv/media/player/MgtvMediaPlayer$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnBluetoothHeadsetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->initData(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/player/MgtvMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$7;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothHeadsetStateChange(I)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$7;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothHeadset connected"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$7;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setWanosAudioEffectChoice(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$7;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothHeadset disconnected"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$7;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 v0, 0x3

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$7;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$7;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p0

    invoke-virtual {p0}, Lcom/hunantv/media/player/h;->ar()V

    :cond_2
    :goto_2
    return-void
.end method
