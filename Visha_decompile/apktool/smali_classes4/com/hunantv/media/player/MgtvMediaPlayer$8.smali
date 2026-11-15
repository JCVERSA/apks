.class Lcom/hunantv/media/player/MgtvMediaPlayer$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;->addP2pListener()V
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

    iput-object p1, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$8;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(IILjava/lang/String;)V
    .locals 3

    const/16 p2, 0x46c8

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    const-class p2, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;

    invoke-virtual {p1, p3, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;

    if-eqz p1, :cond_5

    iget-object p2, p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;->hash:Ljava/lang/String;

    invoke-static {p2}, Lcom/hunantv/media/player/utils/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$8;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p2}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/h;

    move-result-object p2

    invoke-virtual {p2}, Lcom/hunantv/media/player/h;->ai()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;->hash:Ljava/lang/String;

    invoke-interface {p2}, Lcom/hunantv/media/p2p/IP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$8;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$8200(Lcom/hunantv/media/player/MgtvMediaPlayer;)Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/hunantv/media/player/MgtvMediaPlayer$8;->this$0:Lcom/hunantv/media/player/MgtvMediaPlayer;

    invoke-static {p0}, Lcom/hunantv/media/player/MgtvMediaPlayer;->access$2100(Lcom/hunantv/media/player/MgtvMediaPlayer;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_3
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hunantv/media/player/smooth/SmoothMediaSource;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaSource;->getP2pTask()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/hunantv/media/player/datasource/p2p/HttpEndEntity;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/hunantv/media/player/MgtvMediaSource;->getP2pTask()Lcom/hunantv/media/p2p/IP2pTask;

    move-result-object v2

    invoke-interface {v2}, Lcom/hunantv/media/p2p/IP2pTask;->getStrHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/hunantv/media/player/smooth/SmoothMediaSource;->getFlowReportProcessor()Lcom/hunantv/media/player/flow/FlowReportProcessor;

    move-result-object p2

    goto :goto_0

    :cond_4
    move-object p0, p2

    :goto_1
    if-eqz p0, :cond_5

    invoke-virtual {p0, p3}, Lcom/hunantv/media/player/flow/FlowReportProcessor;->pushP2pFlowInfo(Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method
