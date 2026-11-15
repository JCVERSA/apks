.class public final Lax5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqu4;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lax5;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lax5;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lax5;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lax5;->d:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic c(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lax5;->i(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lax5;->j(ILcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static final i(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final j(ILcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic a(Lns1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lax5;->f(Lns1;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public b(Lns1;)Ljava/util/List;
    .locals 0

    const-string p0, "request"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public f(Lns1;)Ljava/lang/Boolean;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcr;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcr;

    invoke-virtual {p1}, Lns1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lns1;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "getContentResolver(...)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, p1}, Lax5;->k(Landroid/content/Context;Lcr;Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.AudioItemRequestInput"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final g(I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    new-instance v0, Lyw5;

    invoke-direct {v0, p1}, Lyw5;-><init>(I)V

    new-instance v1, Lzw5;

    invoke-direct {v1, v0}, Lzw5;-><init>(Le74;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object p0

    invoke-interface {p0, p1}, Lbw6;->deleteById(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public final h(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;->convertToMusicVideoDataBean()Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p1

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object v0

    invoke-interface {v0, p1}, Lbw6;->delete(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return p0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final k(Landroid/content/Context;Lcr;Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p2}, Lcr;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lax5;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0, p2}, Lax5;->l(Lcr;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcr;->z()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lax5;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p2}, Lax5;->h(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcr;->z()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcr;->k()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lax5;->b:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p2}, Lcr;->k()I

    move-result p2

    invoke-virtual {p0, p2}, Lax5;->g(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p1

    goto/16 :goto_5

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4
    invoke-virtual {p2}, Lcr;->w()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    invoke-virtual {p2}, Lcr;->G()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lax5;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p2}, Lax5;->e(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p1

    goto :goto_5

    :catchall_3
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_8
    :goto_3
    invoke-virtual {p2}, Lcr;->F()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lax5;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    invoke-virtual {p2}, Lcr;->o()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-virtual {p0, p2}, Lax5;->m(Lcom/transsion/dbdata/beans/media/MediaItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit p1

    goto :goto_5

    :catchall_4
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_a
    :goto_4
    iget-object p1, p0, Lax5;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    invoke-virtual {p0, p2}, Lax5;->l(Lcr;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    monitor-exit p1

    :goto_5
    return-object p0

    :catchall_5
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final l(Lcr;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcr;->o()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v1

    iget-object v1, v1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/transsion/dbdata/beans/media/AudioItem;->convertToMusicVideoDataBean()Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    return p0

    :cond_1
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object p1

    invoke-interface {p1, v0}, Lbw6;->insertAll(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return p0
.end method

.method public final m(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 0

    if-eqz p1, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
