.class Lcom/transsion/tranplayer/MediaPlayer$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tranplayer/MediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tranplayer/MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/tranplayer/MediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer$2;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/tranplayer/MediaPlayer$2;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    const-string v0, "android.media.extra.ENCODINGS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/tranplayer/MediaPlayer;->access$500(Lcom/transsion/tranplayer/MediaPlayer;[I)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/tranplayer/MediaPlayer$2;->this$0:Lcom/transsion/tranplayer/MediaPlayer;

    const-string v0, "stereo"

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/tranplayer/MediaPlayer;->access$600(Lcom/transsion/tranplayer/MediaPlayer;JLjava/lang/String;)V

    :cond_2
    return-void
.end method
