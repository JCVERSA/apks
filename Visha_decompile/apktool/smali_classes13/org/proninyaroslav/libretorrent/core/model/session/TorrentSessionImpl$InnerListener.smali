.class final Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/libtorrent4j/AlertListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;


# direct methods
.method private constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lnua;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;-><init>(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->lambda$alert$1(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic b(Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->lambda$alert$2(Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->lambda$alert$0(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    return-void
.end method

.method private static synthetic lambda$alert$0(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentAdded(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$alert$1(Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onTorrentLoaded(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$alert$2(Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/libtorrent4j/TorrentHandle;->savePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;->onFileComplete(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public alert(Lorg/libtorrent4j/alerts/Alert;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/libtorrent4j/alerts/Alert<",
            "*>;)V"
        }
    .end annotation

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$2;->$SwitchMap$org$libtorrent4j$alerts$AlertType:[I

    invoke-interface {p1}, Lorg/libtorrent4j/alerts/Alert;->type()Lorg/libtorrent4j/alerts/AlertType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {v0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->q(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/libtorrent4j/alerts/Alert;)V

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->o(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;

    move-result-object v0

    iget-boolean v0, v0, Lorg/proninyaroslav/libretorrent/core/settings/SessionSettings;->G:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->n(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/SessionLogger;->send(Lorg/libtorrent4j/alerts/Alert;)V

    goto/16 :goto_1

    :pswitch_0
    instance-of v0, p1, Lorg/libtorrent4j/alerts/FileCompletedAlert;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/libtorrent4j/alerts/FileCompletedAlert;

    invoke-virtual {v0}, Lorg/libtorrent4j/alerts/FileCompletedAlert;->index()I

    move-result v0

    check-cast p1, Lorg/libtorrent4j/alerts/TorrentAlert;

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentAlert;->handle()Lorg/libtorrent4j/TorrentHandle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->infoHash()Lorg/libtorrent4j/Sha1Hash;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/libtorrent4j/SessionManager;->find(Lorg/libtorrent4j/Sha1Hash;)Lorg/libtorrent4j/TorrentHandle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->torrentFile()Lorg/libtorrent4j/TorrentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/libtorrent4j/TorrentInfo;->files()Lorg/libtorrent4j/FileStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/libtorrent4j/FileStorage;->filePath(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ".xdl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/libtorrent4j/TorrentHandle;->renameFile(ILjava/lang/String;)V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/session/z;

    invoke-direct {v0, p1, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/z;-><init>(Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->x(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->B()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FILE_COMPLETED:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    check-cast p1, Lorg/libtorrent4j/alerts/SaveResumeDataAlert;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->t(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/libtorrent4j/alerts/SaveResumeDataAlert;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->u(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    check-cast p1, Lorg/libtorrent4j/alerts/MetadataReceivedAlert;

    invoke-static {p0, p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->s(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/libtorrent4j/alerts/MetadataReceivedAlert;)V

    goto :goto_1

    :pswitch_4
    check-cast p1, Lorg/libtorrent4j/alerts/TorrentAlert;

    iget-object v0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-virtual {p1}, Lorg/libtorrent4j/alerts/TorrentAlert;->handle()Lorg/libtorrent4j/TorrentHandle;

    move-result-object p1

    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->infoHash()Lorg/libtorrent4j/Sha1Hash;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/libtorrent4j/SessionManager;->find(Lorg/libtorrent4j/Sha1Hash;)Lorg/libtorrent4j/TorrentHandle;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/libtorrent4j/TorrentHandle;->infoHash()Lorg/libtorrent4j/Sha1Hash;

    move-result-object v0

    invoke-virtual {v0}, Lorg/libtorrent4j/Sha1Hash;->toHex()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->l(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->p(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {v2, p1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->w(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/libtorrent4j/TorrentHandle;Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/session/TorrentDownload;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->k(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/x;

    invoke-direct {v1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/x;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->x(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/session/y;

    invoke-direct {v1, v0}, Lorg/proninyaroslav/libretorrent/core/model/session/y;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->x(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$CallListener;)V

    :goto_0
    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->k(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p1}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->r(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    iget-object p0, p0, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl$InnerListener;->this$0:Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;

    invoke-static {p0}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->z(Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;)V

    :cond_3
    :goto_1
    :pswitch_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public types()[I
    .locals 0

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/session/TorrentSessionImpl;->A()[I

    move-result-object p0

    return-object p0
.end method
