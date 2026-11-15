.class public Ldp3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Ldp3;


# instance fields
.field public volatile a:Ljava/util/Map;

.field public b:Ljava/util/List;

.field public volatile c:Ljava/util/Map;

.field public d:Landroid/net/Uri;

.field public e:Landroid/net/Uri;

.field public f:Landroid/net/Uri;

.field public volatile g:Ljava/util/Map;

.field public h:Ljava/util/Set;

.field public i:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldp3;

    invoke-direct {v0}, Ldp3;-><init>()V

    sput-object v0, Ldp3;->j:Ldp3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldp3;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldp3;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldp3;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldp3;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldp3;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldp3;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public static e()Ldp3;
    .locals 1

    sget-object v0, Ldp3;->j:Ldp3;

    return-object v0
.end method


# virtual methods
.method public a(ZLcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldp3;->g:Ljava/util/Map;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ldp3;->h:Ljava/util/Set;

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldp3;->g:Ljava/util/Map;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ldp3;->h:Ljava/util/Set;

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/16 p2, 0x453

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    return-void
.end method

.method public b(ZLcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldp3;->a:Ljava/util/Map;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ldp3;->h:Ljava/util/Set;

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldp3;->a:Ljava/util/Map;

    iget-object v0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ldp3;->h:Ljava/util/Set;

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;)V
    .locals 7

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Ldp3;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v5, v5, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget v6, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne v5, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    if-nez v4, :cond_0

    invoke-virtual {p0, v3, v1}, Ldp3;->b(ZLcom/transsion/dbdata/beans/media/MediaItem;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public d(Landroid/content/Context;)Lcom/transsion/dbdata/database/VideoPlayList;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {p1}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    const/4 v0, 0x2

    iput v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    invoke-virtual {p0}, Ldp3;->n()I

    move-result p0

    iput p0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object p0, p0, Ldp3;->d:Landroid/net/Uri;

    if-eqz p0, :cond_1

    invoke-static {}, Ldp3;->e()Ldp3;

    move-result-object p0

    iget-object p0, p0, Ldp3;->d:Landroid/net/Uri;

    iput-object p0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->uri:Landroid/net/Uri;

    :cond_1
    return-object p1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ldp3;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public g(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Ldp3;->h:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public h(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ldp3;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public i(Lcom/transsion/dbdata/beans/media/MediaItem;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldp3;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Ldp3;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public j(Ljava/util/ArrayList;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldp3;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Ldp3;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldp3;->l(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public l(Landroid/content/Context;Ljava/util/List;)V
    .locals 4

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p2}, Lb00;->o(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Ldp3;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Ldp3;->h:Ljava/util/Set;

    iget-object v1, p0, Ldp3;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, p0, Ldp3;->g:Ljava/util/Map;

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Ldp3;->h:Ljava/util/Set;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->uri:Landroid/net/Uri;

    iput-object v1, p0, Ldp3;->e:Landroid/net/Uri;

    invoke-static {p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->f(Landroid/content/Context;)Lcom/transsion/dbdata/database/AudioRoomDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/AudioRoomDatabase;->a()Lsl;

    move-result-object p1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-interface {p1, p2}, Lsl;->getAudioAlbum(I)Lcom/transsion/dbdata/database/AudioAlbum;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p2, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/File;

    iget-object v0, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/transsion/dbdata/database/AudioAlbum;->imgPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Ldp3;->f:Landroid/net/Uri;

    :cond_2
    return-void
.end method

.method public declared-synchronized m()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldp3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Ldp3;->h:Ljava/util/Set;

    iget-object v1, p0, Ldp3;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v0, 0x2

    invoke-static {v0}, Lt6c;->i(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldp3;->c(Ljava/util/List;)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v3, p0, Ldp3;->a:Ljava/util/Map;

    iget-object v4, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Ldp3;->h:Ljava/util/Set;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget-object v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->thumbnailUrl:Ljava/lang/String;

    goto :goto_1

    :goto_2
    iput-object v0, p0, Ldp3;->d:Landroid/net/Uri;

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Ldp3;->d:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Ldp3;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ldp3;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    :goto_0
    return p0
.end method
