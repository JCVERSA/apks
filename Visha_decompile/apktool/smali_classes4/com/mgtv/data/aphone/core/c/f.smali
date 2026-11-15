.class public Lcom/mgtv/data/aphone/core/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;

    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    .line 2
    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoPvBean;->getPlayerVideoPvParams()Ljava/util/Map;

    move-result-object p0

    const/4 p2, 0x0

    .line 4
    const-string v0, "event_ppv"

    invoke-virtual {p1, v0, p0, p2}, Lcom/mgtv/data/aphone/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 9
    new-instance p0, Lcom/mgtv/data/aphone/core/bean/BufferBean;

    invoke-direct {p0, p1, p2, p3}, Lcom/mgtv/data/aphone/core/bean/BufferBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p1

    sget-object p2, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_BUFFER:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    .line 11
    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/BufferBean;->getBufferParams()Ljava/util/Map;

    move-result-object p0

    const/4 p3, 0x0

    .line 12
    invoke-virtual {p1, p2, p0, p3}, Lcom/mgtv/data/aphone/a/a;->a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    new-instance p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoHeartbeatBean;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoHeartbeatBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p1

    sget-object p2, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_HB:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    .line 7
    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoHeartbeatBean;->getPlayerVideoHeartbeatParams()Ljava/util/Map;

    move-result-object p0

    const/4 p3, 0x0

    .line 8
    invoke-virtual {p1, p2, p0, p3}, Lcom/mgtv/data/aphone/a/a;->a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoVvBean;

    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoVvBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoVvBean;->getPlayerVideoVvParams()Ljava/util/Map;

    move-result-object p0

    const/4 p2, 0x0

    const-string v0, "event_pvv"

    invoke-virtual {p1, v0, p0, p2}, Lcom/mgtv/data/aphone/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    return-void
.end method

.method public c(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;

    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoErrBean;->getPlayerVideoErrParams()Ljava/util/Map;

    move-result-object p0

    const/4 p2, 0x0

    const-string v0, "event_perr"

    invoke-virtual {p1, v0, p0, p2}, Lcom/mgtv/data/aphone/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;

    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoEndBean;->getPlayerVideoEndParams()Ljava/util/Map;

    move-result-object p0

    const/4 p2, 0x0

    const-string v0, "event_pend"

    invoke-virtual {p1, v0, p0, p2}, Lcom/mgtv/data/aphone/a/a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    return-void
.end method

.method public e(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/mgtv/data/aphone/core/bean/PlayerVideoAPlayVvBean;

    invoke-direct {p0, p1, p2}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoAPlayVvBean;-><init>(Landroid/content/Context;Ljava/util/HashMap;)V

    invoke-static {}, Lcom/mgtv/data/aphone/a/a;->a()Lcom/mgtv/data/aphone/a/a;

    move-result-object p1

    sget-object p2, Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;->EVENT_VV:Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;

    invoke-virtual {p0}, Lcom/mgtv/data/aphone/core/bean/PlayerVideoAPlayVvBean;->getPlayerVideoAPlayVvParams()Ljava/util/Map;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p0, v0}, Lcom/mgtv/data/aphone/a/a;->a(Lcom/mgtv/data/aphone/core/constants/EventContants$EventType;Ljava/util/Map;Lcom/mgtv/data/aphone/a/b/b;)V

    return-void
.end method
