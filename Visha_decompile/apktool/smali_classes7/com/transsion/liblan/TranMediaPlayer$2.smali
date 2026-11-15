.class Lcom/transsion/liblan/TranMediaPlayer$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/liblan/TranMediaPlayer;->createAudioPlugReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/liblan/TranMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/liblan/TranMediaPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer$2;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/transsion/liblan/TranMediaPlayer$2;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    const-string v0, "android.media.extra.ENCODINGS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/liblan/TranMediaPlayer;->d(Lcom/transsion/liblan/TranMediaPlayer;[I)J

    move-result-wide p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    const-wide/16 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/transsion/liblan/TranMediaPlayer$2;->this$0:Lcom/transsion/liblan/TranMediaPlayer;

    const-string v0, "stereo"

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/liblan/TranMediaPlayer;->e(Lcom/transsion/liblan/TranMediaPlayer;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "audioPlugReceiver onReceive error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TranMediaPlayer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
