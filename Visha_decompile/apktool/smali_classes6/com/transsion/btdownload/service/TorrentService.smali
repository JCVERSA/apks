.class public Lcom/transsion/btdownload/service/TorrentService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/btdownload/service/TorrentService$b;,
        Lcom/transsion/btdownload/service/TorrentService$c;
    }
.end annotation


# instance fields
.field public b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

.field public c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

.field public e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

.field public f:Landroid/os/PowerManager$WakeLock;

.field public g:Lgd1;

.field public h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public i:Lzd0;

.field public j:Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

.field public k:Lcom/transsion/btdownload/service/TorrentService$b;

.field public l:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

.field public final m:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-direct {v0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lgd1;

    invoke-direct {v0}, Lgd1;-><init>()V

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->g:Lgd1;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Lzd0;->p0(Ljava/lang/Object;)Lzd0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->i:Lzd0;

    new-instance v0, Lcom/transsion/btdownload/service/TorrentService$a;

    invoke-direct {v0, p0}, Lcom/transsion/btdownload/service/TorrentService$a;-><init>(Lcom/transsion/btdownload/service/TorrentService;)V

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->m:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    return-void
.end method

.method public static synthetic a(Lcom/transsion/btdownload/service/TorrentService;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService;->j(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/transsion/btdownload/service/TorrentService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService;->p()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/transsion/btdownload/service/TorrentService;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/btdownload/service/TorrentService;)Lcom/transsion/btdownload/service/TorrentService$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->k:Lcom/transsion/btdownload/service/TorrentService$b;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/btdownload/service/TorrentService;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService;->q()V

    return-void
.end method


# virtual methods
.method public f()Z
    .locals 14

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->c()Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->i()Z

    move-result v5

    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->f()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    return v1

    :cond_1
    sget-object v2, Lyx2;->j:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lyx2;->j:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    sget-object v2, Lyx2;->j:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->e()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v2}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v8, v3, [Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    const-wide/16 v10, 0x0

    :goto_0
    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    iget-boolean v12, v6, Lcom/transsion/btdownload/ui/DownloadableFileItem;->selected:Z

    if-eqz v12, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    iget-wide v12, v12, Lcom/transsion/btdownload/ui/FileItem;->size:J

    add-long/2addr v10, v12

    sget-object v12, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->DEFAULT:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    aput-object v12, v8, v1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/transsion/btdownload/ui/FileItem;->index:I

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "dl_brower_rp_bt_add"

    const-string v13, "video_url"

    invoke-static {v12, v13, v6}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    sget-object v6, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    aput-object v6, v8, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->j()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0, v9, v10, v11}, Lcom/transsion/btdownload/service/TorrentService;->g(Landroid/net/Uri;J)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Lorg/proninyaroslav/libretorrent/core/exception/FreeSpaceException;

    invoke-direct {p0}, Lorg/proninyaroslav/libretorrent/core/exception/FreeSpaceException;-><init>()V

    throw p0

    :cond_8
    :goto_2
    new-instance v1, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;

    iget-object v6, v0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->sha1Hash:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->k()Z

    move-result v10

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->l()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/lit8 v11, v0, 0x1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->h()Z

    move-result v13

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Lorg/proninyaroslav/libretorrent/core/model/data/Priority;Landroid/net/Uri;ZZLjava/util/List;Z)V

    invoke-virtual {p0, v1}, Lcom/transsion/btdownload/service/TorrentService;->o(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;)V

    return v2
.end method

.method public final g(Landroid/net/Uri;J)Z
    .locals 2

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->l:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    invoke-interface {p0, p1}, Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;->a(Landroid/net/Uri;)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    cmp-long p0, p0, p2

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final h(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move p1, v2

    goto :goto_1

    :sswitch_0
    const-string v3, "com.transsion.magicshow.TorrentService.ACTION_SHUTDOWN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v3, "com.transsion.magicshow.NOTIFY_ACTION_PAUSE_RESUME_ALL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v3, "com.transsion.magicshow.NOTIFY_ACTION_PAUSE_ALL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v3, "com.transsion.magicshow.NOTIFY_ACTION_RESUME_ALL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v3, "com.transsion.magicshow.NOTIFY_ACTION_ADD_TORRENT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v0

    goto :goto_1

    :sswitch_5
    const-string v3, "com.transsion.magicshow.NOTIFY_ACTION_SHUTDOWN_APP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move p1, v1

    goto :goto_1

    :sswitch_6
    const-string v3, "com.transsion.magicshow.TorrentService.ACTION_RESTART_FOREGROUND_NOTIFICATION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    iget-object p1, p0, Lcom/transsion/btdownload/service/TorrentService;->i:Lzd0;

    invoke-virtual {p1}, Lzd0;->q0()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->C0()V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->w0()V

    :goto_2
    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->i:Lzd0;

    xor-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzd0;->onNext(Ljava/lang/Object;)V

    return v1

    :pswitch_1
    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->w0()V

    return v1

    :pswitch_2
    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->C0()V

    :pswitch_3
    return v1

    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService;->n()V

    return v0

    :pswitch_5
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x6c2eed0b -> :sswitch_6
        -0x646b71b3 -> :sswitch_5
        -0x1e26d923 -> :sswitch_4
        -0x98d869c -> :sswitch_3
        0x113dde03 -> :sswitch_2
        0x16a8f3ad -> :sswitch_1
        0x1b054138 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final i()V
    .locals 2

    const-string v0, "visha_TorrentService"

    const-string v1, "Start visha_TorrentService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-interface {v0}, Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;->K()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/btdownload/service/TorrentService;->m(Z)V

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->N()V

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iget-object v1, p0, Lcom/transsion/btdownload/service/TorrentService;->m:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->C(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/system/SystemFacadeHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->l:Lorg/proninyaroslav/libretorrent/core/system/FileSystemFacade;

    return-void
.end method

.method public final synthetic j(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;)V
    .locals 3

    const-string v0, "addTorrentSync has exception:"

    const-string v1, "visha_TorrentService"

    :try_start_0
    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->I(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;Z)Lorg/proninyaroslav/libretorrent/core/model/data/entity/Torrent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/proninyaroslav/libretorrent/core/exception/TorrentAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/proninyaroslav/libretorrent/core/exception/DecodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/proninyaroslav/libretorrent/core/exception/UnknownUriException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_3

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public k()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->c()Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/proninyaroslav/libretorrent/core/model/data/metainfo/TorrentMetaInfo;->fileList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/utils/BencodeFileTreeUtils;->a(Ljava/util/List;)Landroidx/core/util/Pair;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    iget-object v3, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    invoke-virtual {v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->n(Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;)V

    iget-object v2, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    iget-object v1, v1, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    invoke-virtual {v2, v1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->t([Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;)V

    iget-object v1, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->d()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    move v1, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    iget-object v4, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v4}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->g()[Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    move-result-object v4

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v5}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    sget-object v5, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v5}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->d()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    :goto_1
    sget-object v6, Lorg/proninyaroslav/libretorrent/core/model/data/Priority;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/data/Priority;

    if-eq v5, v6, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, v3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->select(ZZ)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->b()Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;->select(ZZ)V

    :cond_6
    return-void
.end method

.method public l()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {v0}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->g()[Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    new-instance v5, Lcom/transsion/btdownload/ui/DownloadableFileItem;

    invoke-direct {v5, v4}, Lcom/transsion/btdownload/ui/DownloadableFileItem;-><init>(Lorg/proninyaroslav/libretorrent/core/model/filetree/BencodeFileTree;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->b:Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;

    invoke-virtual {p0, v1}, Lorg/proninyaroslav/libretorrent/core/model/AddTorrentMutableParams;->m(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final m(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/btdownload/service/TorrentService;->f:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_0

    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "visha_TorrentService"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/btdownload/service/TorrentService;->f:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object p1, p0, Lcom/transsion/btdownload/service/TorrentService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/btdownload/service/TorrentService;->f:Landroid/os/PowerManager$WakeLock;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->f:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->g:Lgd1;

    new-instance v1, Lbua;

    invoke-direct {v1, p0}, Lbua;-><init>(Lcom/transsion/btdownload/service/TorrentService;)V

    invoke-static {v1}, Lhb1;->d(Ljava/lang/Runnable;)Lhb1;

    move-result-object p0

    invoke-static {}, Lk29;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lhb1;->j(Lio/reactivex/Scheduler;)Lhb1;

    move-result-object p0

    invoke-virtual {p0}, Lhb1;->f()Lrc2;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgd1;->b(Lrc2;)Z

    return-void
.end method

.method public o(Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;)V
    .locals 1

    new-instance v0, Lcua;

    invoke-direct {v0, p0, p1}, Lcua;-><init>(Lcom/transsion/btdownload/service/TorrentService;Lorg/proninyaroslav/libretorrent/core/model/AddTorrentParams;)V

    invoke-static {v0}, Lcom/transsion/arch/threads/TaskExecutor;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->k:Lcom/transsion/btdownload/service/TorrentService$b;

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/RepositoryHelper;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->e:Lorg/proninyaroslav/libretorrent/core/settings/SettingsRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->T(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {p0}, Lcom/transsion/btdownload/service/TorrentService;->i()V

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    new-instance v0, Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-direct {v0, p0}, Lcom/transsion/btdownload/service/TorrentService$b;-><init>(Lcom/transsion/btdownload/service/TorrentService;)V

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->k:Lcom/transsion/btdownload/service/TorrentService$b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;->a(Landroid/content/Context;)Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->j:Lorg/proninyaroslav/libretorrent/core/model/TorrentInfoProvider;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string p0, "visha_TorrentService"

    const-string v0, "Stop visha_TorrentService"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/btdownload/service/TorrentService;->h(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    invoke-virtual {p0}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->O()V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->g:Lgd1;

    invoke-virtual {v0}, Lgd1;->d()V

    iget-object v0, p0, Lcom/transsion/btdownload/service/TorrentService;->d:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;

    iget-object v1, p0, Lcom/transsion/btdownload/service/TorrentService;->m:Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;

    invoke-virtual {v0, v1}, Lorg/proninyaroslav/libretorrent/core/model/TorrentEngine;->A0(Lorg/proninyaroslav/libretorrent/core/model/TorrentEngineListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/btdownload/service/TorrentService;->m(Z)V

    iget-object v1, p0, Lcom/transsion/btdownload/service/TorrentService;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
