.class Lcom/hunantv/media/player/MgtvMediaPlayer$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/utils/MgtvPlayerBroadcastObserver$OnHeadsetListener;


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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$6;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsetStateChange(I)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$6;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u8033\u673a\u62d4\u51fa"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hunantv/media/config/NetPlayConfigHelper;->getMod()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/media/config/NetPlayConfig;->inHeadsetBlackList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$6;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$5700(Lcom/hunantv/media/player/MgtvMediaPlayer;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/hunantv/media/utils/AudioUtil;->isWired(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$6;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->setWanosAudioEffectChoice(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$6;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p1}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$300(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u8033\u673a\u63d2\u5165"

    invoke-static {p1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$6;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
