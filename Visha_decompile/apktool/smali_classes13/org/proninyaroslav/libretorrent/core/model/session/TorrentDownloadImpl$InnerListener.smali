.class final Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;


# direct methods
.method private constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lura;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    return-void
.end method

.method public static synthetic a(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->lambda$alert$1(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic b(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->lambda$alert$2(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic c(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;Lorg/libtorrent4j/alerts/StateChangedAlert;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->lambda$alert$0(Lorg/libtorrent4j/alerts/StateChangedAlert;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic d(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;ILorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->lambda$alert$3(ILorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private synthetic lambda$alert$0(Lorg/libtorrent4j/alerts/StateChangedAlert;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 3

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->m(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/StateChangedAlert;->getPrevState()Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->y(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/TorrentStatus$State;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object v1

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/StateChangedAlert;->getState()Lorg/libtorrent4j/TorrentStatus$State;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->y(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/TorrentStatus$State;)Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;

    move-result-object p0

    invoke-virtual {p2, v0, v1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentStateChanged(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;Lorg/proninyaroslav/libretorrent/core/model/data/TorrentStateCode;)V

    return-void
.end method

.method private synthetic lambda$alert$1(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->m(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentPaused(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$alert$2(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->m(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentResumed(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$alert$3(ILorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->m(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onPieceFinished(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public alert(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p1, Lorg/libtorrent4j/alerts/TorrentAlert;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/libtorrent4j/alerts/TorrentAlert;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/TorrentAlert;->handle()Lorg/libtorrent4j/TorrentHandle;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/libtorrent4j/swig/torrent_handle;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->n(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Lorg/libtorrent4j/TorrentHandle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/SwigObject;->swig()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/libtorrent4j/swig/torrent_handle;

    invoke-virtual {v0, v1}, Lorg/libtorrent4j/swig/torrent_handle;->eq(Lorg/libtorrent4j/swig/torrent_handle;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/libtorrent4j/alerts/Alert;->type()Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v0

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$2;->$SwitchMap$org$libtorrent4j$alerts$AlertType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->p(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/alerts/Alert;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->s(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    check-cast p1, Lorg/libtorrent4j/alerts/ReadPieceAlert;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->r(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/alerts/ReadPieceAlert;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    check-cast p1, Lorg/libtorrent4j/alerts/MetadataReceivedAlert;

    invoke-static {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->q(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/alerts/MetadataReceivedAlert;)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->l(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p1, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->o(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Z)V

    :cond_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-virtual {p0, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->saveResumeData(Z)V

    check-cast p1, Lorg/libtorrent4j/alerts/PieceFinishedAlert;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/PieceFinishedAlert;->pieceIndex()I

    move-result p1

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/p;

    invoke-direct {v1, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/p;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;I)V

    invoke-static {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->u(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    goto :goto_0

    :pswitch_4
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->v(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Z)V

    goto :goto_0

    :pswitch_5
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0, v2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->v(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Z)V

    goto :goto_0

    :pswitch_6
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    check-cast p1, Lorg/libtorrent4j/alerts/SaveResumeDataAlert;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->x(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/libtorrent4j/alerts/SaveResumeDataAlert;)V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->w(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/o;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/o;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;)V

    invoke-static {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->u(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/n;

    invoke-direct {v0, p0}, Lorg/proninyaroslav/libretorrent/core/model/session/n;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;)V

    invoke-static {p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->u(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    goto :goto_0

    :pswitch_9
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->z(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    goto :goto_0

    :pswitch_a
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->t(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;)V

    goto :goto_0

    :pswitch_b
    check-cast p1, Lorg/libtorrent4j/alerts/StateChangedAlert;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/m;

    invoke-direct {v1, p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/m;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$InnerListener;Lorg/libtorrent4j/alerts/StateChangedAlert;)V

    invoke-static {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->u(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl$CallListener;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public types()[I
    .locals 0

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownloadImpl;->A()[I

    move-result-object p0

    return-object p0
.end method
