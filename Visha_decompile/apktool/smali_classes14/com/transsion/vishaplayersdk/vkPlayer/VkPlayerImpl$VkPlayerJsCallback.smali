.class Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VkPlayerJsCallback"
.end annotation


# instance fields
.field private final checkTimeNum:I

.field private lastEvent:Ljava/lang/String;

.field private lastInitTime:J

.field private mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

.field private final refreshMuteTime:J


# direct methods
.method public constructor <init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->refreshMuteTime:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->checkTimeNum:I

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->lambda$on$1()V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->lambda$on$0()V

    return-void
.end method

.method private synthetic lambda$on$0()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->setMute(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$on$1()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    return-void
.end method

.method public on(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "on_error: "

    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "on eventName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->lastEvent:Ljava/lang/String;

    const/16 v1, 0x3f7

    const/4 v2, 0x0

    const/4 v3, 0x2

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    iget-object v4, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v4}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->h(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z

    move-result v4

    iget-object v5, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v5}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->b(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)I

    move-result v5

    iget-object v6, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v6}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->g(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z

    move-result v6

    if-eqz p2, :cond_0

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    const-string v8, "playing"

    const-string v9, "state"

    invoke-virtual {p2, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v7, v8}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->o(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Z)V

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    const-string v8, "time"

    invoke-virtual {p2, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->i(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;I)V

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    const-string v8, "duration"

    invoke-virtual {p2, v8}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->l(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;I)V

    iget-object v7, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    const-string v8, "muted"

    invoke-virtual {p2, v8}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result p2

    invoke-static {v7, p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->n(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;Z)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->p()Ljava/lang/String;

    move-result-object p2

    const-string v7, "on jsonObject isNull"

    invoke-static {p2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->h(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz v4, :cond_1

    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v4}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    const-string p2, "pause"

    invoke-static {p2}, Lwz5;->N(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->h(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v4, :cond_2

    const-string p2, "play"

    invoke-static {p2}, Lwz5;->N(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->b(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)I

    move-result p2

    sub-int/2addr v5, p2

    if-le v5, v3, :cond_3

    const-string p2, "retreat"

    invoke-static {p2}, Lwz5;->N(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 p2, -0x2

    if-ge v5, p2, :cond_4

    const-string p2, "forward"

    invoke-static {p2}, Lwz5;->N(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p2}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->g(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z

    move-result p2

    if-eqz p2, :cond_5

    if-nez v6, :cond_5

    const-string p2, "mute"

    invoke-static {p2}, Lwz5;->N(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->p()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v4, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/blankj/utilcode/util/LogUtils;->l([Ljava/lang/Object;)V

    :cond_5
    :goto_4
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v4, 0x3

    const/4 v5, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    const-string p2, "error"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v3

    goto :goto_6

    :catch_1
    move-exception p0

    goto/16 :goto_8

    :sswitch_1
    const-string p2, "paused"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v5

    goto :goto_6

    :sswitch_2
    const-string p2, "inited"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_6

    :sswitch_3
    const-string p2, "started"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v2

    goto :goto_6

    :cond_6
    :goto_5
    const/4 p1, -0x1

    :goto_6
    if-eqz p1, :cond_e

    if-eq p1, v5, :cond_d

    if-eq p1, v3, :cond_c

    if-eq p1, v4, :cond_7

    goto/16 :goto_9

    :cond_7
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->e(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)I

    move-result p1

    if-nez p1, :cond_9

    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->p()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1 initMute: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {v1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->f(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->f(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->g(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Lcom/transsion/vishaplayersdk/vkPlayer/a;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/vkPlayer/a;-><init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p1, v5}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->m(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;I)V

    goto :goto_7

    :cond_9
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->e(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;)I

    move-result p1

    if-ne p1, v5, :cond_b

    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "initStart"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/transsion/vishaplayersdk/vkPlayer/b;

    invoke-direct {p1, p0}, Lcom/transsion/vishaplayersdk/vkPlayer/b;-><init>(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    :cond_a
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-static {p1, v3}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->m(Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;I)V

    :cond_b
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->lastInitTime:J

    goto :goto_9

    :cond_c
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string p2, ""

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postErrorState([Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->postNotificationMsg(I[Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    iget-object p1, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-virtual {p1}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyOnPrepared()V

    iget-object p0, p0, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl$VkPlayerJsCallback;->mVkPlayer:Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;

    invoke-virtual {p0}, Lcom/transsion/vishaplayersdk/gsyplayer/base/MediaPlayerImpl;->notifyStartPlay()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :goto_8
    invoke-static {}, Lcom/transsion/vishaplayersdk/vkPlayer/VkPlayerImpl;->p()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7114bf7f -> :sswitch_3
        -0x46939251 -> :sswitch_2
        -0x3b5366d2 -> :sswitch_1
        0x5c4d208 -> :sswitch_0
    .end sparse-switch
.end method
