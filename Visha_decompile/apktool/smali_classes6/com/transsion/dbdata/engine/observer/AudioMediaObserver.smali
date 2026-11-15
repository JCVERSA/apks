.class public Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;
    }
.end annotation


# static fields
.field public static volatile k:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/database/ContentObserver;

.field public c:Landroid/os/HandlerThread;

.field public d:Landroid/os/Handler;

.field public e:Ljava/util/Set;

.field public f:Ljava/util/ArrayList;

.field public final g:Ljava/util/concurrent/ConcurrentHashMap;

.field public final h:Ljava/lang/Boolean;

.field public final i:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->g:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->h:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->j:Z

    if-nez p1, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->i:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->j:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;)Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->i:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->g(Landroid/net/Uri;)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;)Ljava/util/ArrayList;
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->o()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/ArrayList;)V
    .locals 3

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "new_audio_temp_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "value"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static j()Ljava/util/ArrayList;
    .locals 4

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "new_audio_temp_list"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-string v2, "value"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$1;

    invoke-direct {v2}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public static k(Landroid/content/Context;Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;)Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;
    .locals 2

    sget-object v0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->k:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    if-nez v0, :cond_1

    const-class v0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->k:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    invoke-direct {v1, p0, p1}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;-><init>(Landroid/content/Context;Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$b;)V

    sput-object v1, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->k:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->k:Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;

    return-object p0
.end method


# virtual methods
.method public final e(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v0, :cond_f

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-nez v1, :cond_0

    iget v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    :cond_0
    iput v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    :cond_1
    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    :cond_2
    iput-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketId:J

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    :cond_3
    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    :cond_4
    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_5

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    :cond_5
    iput-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :cond_6
    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_7

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    :cond_7
    iput-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateAdd:J

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_8

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    :cond_8
    iput-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->dateModified:J

    iget v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    if-nez v1, :cond_9

    iget v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    :cond_9
    iput v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumId:I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    :cond_a
    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->albumName:Ljava/lang/String;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    if-nez v1, :cond_b

    iget v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    :cond_b
    iput v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistId:I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    :cond_c
    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_d

    iget-wide v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    :cond_d
    iput-wide v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    if-nez v1, :cond_e

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    :cond_e
    iput-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->g:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public final g(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->j:Z

    invoke-static {}, Lao;->U()Lao;

    move-result-object v0

    invoke-virtual {v0, p1}, Lao;->H(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->n(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "VishaAudios"

    iget-object v2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->bucketDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->artistName:Ljava/lang/String;

    invoke-static {v1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->g:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-nez p1, :cond_3

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->e(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->p(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->h:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->e:Ljava/util/Set;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->h:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->o()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->f:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->e:Ljava/util/Set;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public l(Z)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->h:Ljava/lang/Boolean;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->i()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->j()Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->f:Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, p1

    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 4

    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_1

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "null"

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->mineType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public final n(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object p0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-eqz p0, :cond_1

    const-string v0, "SoundRecorder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "filterRecorder: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioMediaObserver"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final o()Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->e:Ljava/util/Set;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {p0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Lbt;

    invoke-direct {p0}, Lbt;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public final p(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->m(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v0

    const-string v1, "AudioMediaObserver"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkForNewAudio,valid item:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForNewAudio,item:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->j:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->j:Z

    :cond_1
    return-void
.end method

.method public q()V
    .locals 4

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AudioObserverThread"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->d:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;

    iget-object v2, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->d:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver$a;-><init>(Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->b:Landroid/database/ContentObserver;

    iget-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->b:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->b:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object p0, p0, Lcom/transsion/dbdata/engine/observer/AudioMediaObserver;->c:Landroid/os/HandlerThread;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method
