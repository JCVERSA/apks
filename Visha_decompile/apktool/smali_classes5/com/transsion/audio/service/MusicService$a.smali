.class public Lcom/transsion/audio/service/MusicService$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/service/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/service/MusicService;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/service/MusicService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "state"

    const-string v0, "MusicService"

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p0}, Lcom/transsion/audio/service/MusicService;->l(Lcom/transsion/audio/service/MusicService;)Lcom/transsion/audio/player/MusicPlayManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/transsion/audio/player/MusicPlayManager;->M0(Z)V

    goto/16 :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_0

    :cond_0
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_2

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p1}, Lcom/transsion/audio/service/MusicService;->k(Lcom/transsion/audio/service/MusicService;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "\u6709\u7ebf\u8033\u673a\u63d2\u5165"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p1, v3}, Lcom/transsion/audio/service/MusicService;->n(Lcom/transsion/audio/service/MusicService;Z)V

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p0, v3}, Lcom/transsion/audio/service/MusicService;->m(Lcom/transsion/audio/service/MusicService;I)V

    invoke-static {v3}, Lhz5;->b(I)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p1}, Lcom/transsion/audio/service/MusicService;->k(Lcom/transsion/audio/service/MusicService;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u6709\u7ebf\u8033\u673a\u62d4\u51fa"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p1, v4}, Lcom/transsion/audio/service/MusicService;->n(Lcom/transsion/audio/service/MusicService;Z)V

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p0, v4}, Lcom/transsion/audio/service/MusicService;->m(Lcom/transsion/audio/service/MusicService;I)V

    goto :goto_1

    :cond_2
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.bluetooth.profile.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "\u84dd\u7259\u8033\u673a\u8fde\u63a5"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p0, v5}, Lcom/transsion/audio/service/MusicService;->m(Lcom/transsion/audio/service/MusicService;I)V

    invoke-static {v5}, Lhz5;->b(I)V

    goto :goto_1

    :cond_4
    const-string p1, "\u84dd\u7259\u8033\u673a\u672a\u8fde\u63a5"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    invoke-static {p0, v4}, Lcom/transsion/audio/service/MusicService;->m(Lcom/transsion/audio/service/MusicService;I)V

    goto :goto_1

    :cond_5
    const-string p1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p0, p0, Lcom/transsion/audio/service/MusicService$a;->a:Lcom/transsion/audio/service/MusicService;

    iget-object p0, p0, Lcom/transsion/playercommon/player/PlayerService;->b:Landroid/content/Context;

    invoke-static {p0}, Lvf;->f(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBroadcastReceiver onReceive "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    return-void
.end method
