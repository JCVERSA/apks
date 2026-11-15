.class public final Lxw5;
.super Lmw5;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public final k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmw5;-><init>()V

    const-string v0, "MVItemTypeHandler"

    iput-object v0, p0, Lxw5;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->g:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->h:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->i:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->j:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->m:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lxw5;->n:Ljava/lang/Object;

    return-void
.end method

.method private final A(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    invoke-virtual {p1}, Lcr;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lxw5;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lxw5;->P(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lxw5;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lxw5;->O(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    invoke-virtual {p1}, Lcr;->k()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lxw5;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    invoke-virtual {p0, p1, p2}, Lxw5;->W(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v0

    :goto_0
    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic G(Lxw5;Landroid/content/ContentResolver;Lcr;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lxw5;->F(Landroid/content/ContentResolver;Lcr;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lxw5;Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lxw5;->M(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final f0(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final g0(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final h0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic i(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lxw5;->f0(Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static final i0(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic j(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lxw5;->v(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static final j0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic k(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lxw5;->j0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static final k0(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lxw5;->g0(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lxw5;->h0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static final m0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    iget p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget p0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic n(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lxw5;->k0(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final n0(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lxw5;->y(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lxw5;->i0(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0, p1}, Lxw5;->m0(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Le74;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lxw5;->n0(Le74;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lxw5;ZZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lxw5;->t(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public static synthetic x(Lxw5;ZZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lxw5;->w(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method


# virtual methods
.method public final B()Z
    .locals 0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final C(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 8

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v1, "data"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "."

    invoke-static {v0, v4, p0, v2, v3}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lj1a;->s0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "substring(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lhk3;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ldw6;->c:Ldw6$a;

    invoke-virtual {v0}, Ldw6$a;->a()Ldw6;

    move-result-object v0

    invoke-virtual {v0}, Ldw6;->d()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lkotlin/text/Regex;

    sget-object v3, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v2, v1, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    const-string v3, "displayName"

    invoke-static {v1, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public final D(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x16

    const/4 v4, 0x0

    if-eq p4, v3, :cond_5

    const/16 v5, 0x22

    if-eq p4, v5, :cond_3

    const/16 p3, 0x2a

    const-string v5, "parentName"

    if-eq p4, p3, :cond_2

    const/16 p3, 0x19

    if-eq p4, p3, :cond_1

    const/16 p3, 0x1a

    if-eq p4, p3, :cond_0

    move-object v8, v4

    goto/16 :goto_2

    :cond_0
    iget-object p3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-static {p3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist LIKE ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    move-object v8, p3

    goto/16 :goto_2

    :cond_1
    iget-object p3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-static {p3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album LIKE ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    iget-object p3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    invoke-static {p3, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title LIKE ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string p3, ""

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "relative_path = ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_5
    iget-wide v5, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id = ? and "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :goto_2
    const/4 p3, 0x0

    :try_start_0
    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {v2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v9, p3

    check-cast v9, [Ljava/lang/String;

    iget-boolean p3, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-virtual {p0, p3}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v10

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object p0, v4

    :goto_3
    if-nez p0, :cond_6

    return-object v4

    :cond_6
    :goto_4
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "_data"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lt55;->l(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-ne p4, v3, :cond_7

    invoke-static {p0}, Lt55;->h(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_1
    move-exception p1

    goto :goto_6

    :cond_7
    iget-boolean p1, p2, Lcom/transsion/dbdata/beans/media/MediaBucket;->fromInternal:Z

    invoke-static {p0, p1}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    new-instance p3, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p3, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_8
    :goto_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :goto_6
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_7
    return-object v0

    :goto_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1
.end method

.method public final E(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 26

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lxw5;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v7, v0}, Lxw5;->K(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v0, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v2, "toString(...)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "["

    const-string v16, "("

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "]"

    const-string v22, ")"

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcr;->y()Z

    move-result v0

    invoke-virtual {v7, v0}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v9, p2

    move-object v12, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    :try_start_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt55;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcr;->y()Z

    move-result v0

    invoke-static {v9, v0}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lxw5;->V(Landroid/content/ContentResolver;Lcr;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v2, v7, Lxw5;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lxw5;->b0(Lcr;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v8}, Lmw5;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :cond_8
    return-object v1

    :goto_4
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :cond_a
    :goto_5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final F(Landroid/content/ContentResolver;Lcr;Z)Ljava/util/List;
    .locals 10

    if-nez p3, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p3

    iget-object p3, p3, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    const-string v0, "scanMusicVideoCache"

    invoke-static {p3, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Lcr;->i()Z

    move-result p1

    invoke-virtual {p2}, Lcr;->x()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lxw5;->t(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p3

    iget-object p3, p3, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {p2}, Lcr;->y()Z

    move-result v2

    invoke-virtual {p0, v2}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lqpb;->b:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcr;->y()Z

    move-result v2

    invoke-virtual {p0, v0, v2}, Lmw5;->c(Landroid/database/Cursor;Z)V

    invoke-virtual {p2}, Lcr;->i()Z

    move-result v2

    invoke-static {v0}, Lt55;->h(Landroid/database/Cursor;)Z

    move-result v4

    if-eq v2, v4, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {v1}, Lt55;->l(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcr;->y()Z

    move-result v1

    invoke-static {v0, v1}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v1

    invoke-static {v1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    iget-object v2, p0, Lxw5;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    :goto_4
    invoke-virtual {p2}, Lcr;->y()Z

    move-result v0

    invoke-virtual {p2}, Lcr;->i()Z

    move-result p2

    invoke-virtual {p0, p1, p3, v0, p2}, Lmw5;->g(Landroid/content/ContentResolver;Ljava/util/List;ZZ)V

    invoke-virtual {p0, p3}, Lmw5;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_5
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p0
.end method

.method public final H(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_5

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string v1, "musicVideoAddByUserCache"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_5
    return-object v1
.end method

.method public final I(Ljava/lang/Integer;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_7

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string v1, "musicVideoAddByUserCache"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    move-object v0, v1

    :cond_6
    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_7
    return-object v1
.end method

.method public final J(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v3, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string v1, "musicVideoAddByUserCache"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v4, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_5
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Li81;->h1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final K(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string v1, "musicVideoAddByUserCache"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v3, v3, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_5
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Li81;->h1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final L(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-nez v1, :cond_5

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string v1, "musicVideoAddByUserCache"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    :cond_4
    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    :cond_5
    return-object v1
.end method

.method public final M(Ljava/lang/String;Z)Ljava/util/List;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, p2, v1, v2, v0}, Lxw5;->u(Lxw5;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "title"

    const-string v7, "displayName"

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v10, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v10, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, p1, v8}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v9, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-static {v7, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, p1, v8}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p0, p2, v1, v2, v0}, Lxw5;->x(Lxw5;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-static {v2, v7}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1, v8}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    invoke-static {v1, v6}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, v8}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_4
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v4, p2}, Li81;->h1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method public final O(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lxw5;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lxw5;->H(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p2

    move-object v1, v0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_display_name = ? and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v3

    invoke-virtual {p0, v3}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v10

    move-object v5, p2

    move-object v8, v1

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v4

    invoke-static {v3, v4}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v3

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p1, v1, v2}, Lxw5;->U(Landroid/content/ContentResolver;Lcr;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v2, p0, Lxw5;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lxw5;->Y(Lcr;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-object p0

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public final P(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lxw5;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcr;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lxw5;->L(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p2

    move-object v1, v0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcr;->q()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_data = ? and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v3

    invoke-virtual {p0, v3}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v10

    move-object v5, p2

    move-object v8, v1

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v4

    invoke-static {v3, v4}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v3

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p1, v1, v2}, Lxw5;->U(Landroid/content/ContentResolver;Lcr;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v2, p0, Lxw5;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lxw5;->c0(Lcr;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-object p0

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public final Q(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lxw5;->G(Lxw5;Landroid/content/ContentResolver;Lcr;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1}, Lxw5;->X(Lcr;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p0, :cond_2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lns9;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string p1, "sortAudioItem(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final R(Lcr;)Ljava/util/List;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object v0

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lbw6;->getMusicVideoByTitleOrDisplay(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :catch_0
    :cond_1
    return-object p0
.end method

.method public final S(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 26

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lxw5;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lxw5;->J(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7, v0, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v2, "toString(...)"

    invoke-static {v14, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "["

    const-string v16, "("

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "]"

    const-string v22, ")"

    const/16 v24, 0x4

    const/16 v25, 0x0

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Lg1a;->N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and title like \'"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' and "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcr;->y()Z

    move-result v0

    invoke-virtual {v7, v0}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v9, p2

    move-object v12, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    :try_start_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto/16 :goto_4

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt55;->l(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcr;->y()Z

    move-result v0

    invoke-static {v9, v0}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lxw5;->V(Landroid/content/ContentResolver;Lcr;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v2, v7, Lxw5;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lxw5;->a0(Lcr;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v8}, Lmw5;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v1

    :cond_8
    return-object v1

    :goto_4
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :cond_a
    :goto_5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final T(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lxw5;->G(Lxw5;Landroid/content/ContentResolver;Lcr;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1}, Lxw5;->X(Lcr;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_1

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    invoke-virtual {p1}, Lcr;->s()I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->b()Lcom/transsion/dbdata/utils/PlayCountDataManager;

    move-result-object v1

    iget-object v2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/utils/PlayCountDataManager;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->playCount:I

    invoke-virtual {p1}, Lcr;->s()I

    move-result v2

    if-lt v1, v2, :cond_2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lns9;->v(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string p1, "sortAudioItem(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final U(Landroid/content/ContentResolver;Lcr;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 7

    invoke-static {}, Lpp3;->w()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcr;->y()Z

    move-result p0

    invoke-static {p0}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    const/4 p3, 0x0

    const/4 p4, 0x2

    const-string v1, "."

    invoke-static {p1, v1, p3, p4, v0}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "."

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lj1a;->s0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "substring(...)"

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {p2}, Lcr;->y()Z

    move-result p1

    invoke-static {p0, p1}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_5

    return-object v0

    :cond_5
    new-instance p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p1, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-object p1
.end method

.method public final V(Landroid/content/ContentResolver;Lcr;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    invoke-static {}, Lpp3;->w()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lpp3;->j()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcr;->y()Z

    move-result p0

    invoke-static {p0}, Lqpb;->k(Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lqpb;->c:[Ljava/lang/String;

    invoke-static {}, Lqpb;->p()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x7

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lqpb;->w(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    const/4 p3, 0x2

    const/4 p4, 0x0

    const-string v0, "."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p3, p4}, Lj1a;->X(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "."

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lj1a;->s0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "substring(...)"

    invoke-static {p1, p3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lhk3;->i:Ljava/util/HashSet;

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcr;->y()Z

    move-result p1

    invoke-static {p0, p1}, Lqpb;->h(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p1}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final W(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lxw5;->B()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcr;->k()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lxw5;->I(Ljava/lang/Integer;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :catch_0
    move-exception p2

    move-object v1, v0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcr;->k()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1, v2}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = ? and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v3

    invoke-virtual {p0, v3}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lqpb;->b:[Ljava/lang/String;

    invoke-static {}, Lt55;->j()Ljava/lang/String;

    move-result-object v10

    move-object v5, p2

    move-object v8, v1

    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcr;->y()Z

    move-result v4

    invoke-static {v3, v4}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v0, v3

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0, p2, p1, v1, v2}, Lxw5;->U(Landroid/content/ContentResolver;Lcr;Ljava/lang/String;[Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    :try_start_2
    iget-object v2, p0, Lxw5;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_5

    invoke-virtual {p0, p1}, Lxw5;->Z(Lcr;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    return-object p0

    :goto_3
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public final X(Lcr;)Ljava/util/List;
    .locals 5

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string v1, "musicVideoAddByUserCache"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcr;->i()Z

    move-result v0

    invoke-virtual {p1}, Lcr;->x()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lxw5;->w(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object v0

    invoke-interface {v0}, Lbw6;->getAll()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    new-instance v3, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v3, v2}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    invoke-virtual {p0, v3}, Lmw5;->d(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    invoke-virtual {p1}, Lcr;->i()Z

    move-result v2

    invoke-static {v3}, Lt55;->i(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result v4

    if-eq v2, v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final Y(Lcr;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object p0

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lbw6;->getMusicVideoListByDisplayName(Ljava/lang/String;)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p0

    new-instance p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p1, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final Z(Lcr;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object p0

    invoke-virtual {p1}, Lcr;->k()I

    move-result p1

    invoke-interface {p0, p1}, Lbw6;->getMusicVideoById(I)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p0

    new-instance p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p1, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic a(Lns1;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lxw5;->s(Lns1;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public final a0(Lcr;)Ljava/util/List;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object p0

    invoke-virtual {p1}, Lcr;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lbw6;->getAllByTitleAndIds(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    new-instance v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v1, v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    return-object p1

    :catch_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Lns1;)Ljava/util/List;
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcr;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lns1;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lcr;

    invoke-virtual {p1}, Lns1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lns1;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "getContentResolver(...)"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0, p1}, Lxw5;->z(Landroid/content/Context;Lcr;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.AudioItemRequestInput"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Lcr;)Ljava/util/List;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object v0

    invoke-virtual {p1}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Lbw6;->getAllByIds(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    new-instance v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v2, v1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :catch_0
    :cond_1
    return-object p0
.end method

.method public final c0(Lcr;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    :try_start_0
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object p0

    invoke-virtual {p1}, Lcr;->q()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lbw6;->getMusicVideoListByPath(Ljava/lang/String;)Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p0

    new-instance p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p1, p0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d0(Landroid/content/ContentResolver;Landroid/net/Uri;Lcr;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 7

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p3}, Lcr;->v()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p3}, Lcr;->v()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lqpb;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lqpb;->w(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_1
    :try_start_2
    invoke-virtual {p3}, Lcr;->y()Z

    move-result p3

    invoke-static {p1, p3}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object p2, p1

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p3

    move-object p1, p2

    :goto_2
    :try_start_3
    iget-object p0, p0, Lxw5;->b:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_3
    return-object p2

    :goto_4
    if-eqz p2, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public final e0(Landroid/content/ContentResolver;Lcr;)Ljava/util/List;
    .locals 2

    invoke-virtual {p2}, Lcr;->v()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcr;->v()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lxw5;->d0(Landroid/content/ContentResolver;Landroid/net/Uri;Lcr;)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    new-instance p1, Lpw5;

    invoke-direct {p1, v0}, Lpw5;-><init>(Ljava/lang/String;)V

    new-instance p2, Lqw5;

    invoke-direct {p2, p1}, Lqw5;-><init>(Le74;)V

    invoke-interface {p0, p2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    new-instance p0, Lcr$a;

    invoke-direct {p0}, Lcr$a;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcr$a;->o(Z)Lcr$a;

    move-result-object p0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lf1a;->r(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcr$a;->s(I)Lcr$a;

    move-result-object p0

    invoke-virtual {p0}, Lcr$a;->e()Lcr;

    move-result-object p0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p1

    const-string p2, "getApp(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1, p2}, Los1;->a(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Class;)Lns1;

    move-result-object p0

    sget-object p1, Lcom/transsion/dbdata/engine/DataEngine;->a:Lcom/transsion/dbdata/engine/DataEngine;

    sget-object p2, Lcom/transsion/dbdata/engine/base/scope/DataScope;->MV:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    invoke-virtual {p1, p2, p0}, Lcom/transsion/dbdata/engine/DataEngine;->a(Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    new-instance p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {p2, p1}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-virtual {p0, p2}, Lxw5;->C(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lbx5;->a()Lbx5;

    move-result-object p1

    invoke-virtual {p1, p2}, Lbx5;->b(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    new-instance v0, Lrw5;

    invoke-direct {v0, p2}, Lrw5;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance v1, Lsw5;

    invoke-direct {v1, v0}, Lsw5;-><init>(Le74;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    iget-object p1, p1, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    new-instance v0, Ltw5;

    invoke-direct {v0, p2}, Ltw5;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance v1, Luw5;

    invoke-direct {v1, v0}, Luw5;-><init>(Le74;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lxw5;->l0(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    :goto_3
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final l0(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    new-instance v0, Lvw5;

    invoke-direct {v0, p1}, Lvw5;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V

    new-instance v1, Lww5;

    invoke-direct {v1, v0}, Lww5;-><init>(Le74;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->convertToMusicVideoDataBean()Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;

    move-result-object p0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b()Lbw6;

    move-result-object p1

    invoke-interface {p1, p0}, Lbw6;->update(Lcom/transsion/dbdata/beans/musicvideo/MusicVideoDataBean;)I

    :cond_1
    return-void
.end method

.method public final o0(Landroid/content/ContentResolver;Lcr;)Ljava/util/List;
    .locals 15

    move-object v7, p0

    const-string v0, "%"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcr;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lxw5;->B()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcr;->g()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {p0, v0, v3, v2, v1}, Lxw5;->N(Lxw5;Ljava/lang/String;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcr;->g()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcr;->g()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lhi;->m1([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lmw5;->e(Ljava/lang/StringBuilder;Ljava/util/List;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(_display_name LIKE ? OR title LIKE ?) and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3}, Lmw5;->h(Z)Landroid/net/Uri;

    move-result-object v10

    sget-object v11, Lqpb;->b:[Ljava/lang/String;

    check-cast v0, Ljava/util/Collection;

    new-array v2, v3, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v12, v4

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_2

    :try_start_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object v1, v9

    goto :goto_2

    :cond_2
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt55;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v9}, Lt55;->h(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v9, v3}, Lqpb;->j(Landroid/database/Cursor;Z)Lcom/transsion/dbdata/beans/media/MediaItem;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lxw5;->V(Landroid/content/ContentResolver;Lcr;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    move-object/from16 v1, p2

    goto :goto_3

    :goto_2
    :try_start_2
    iget-object v2, v7, Lxw5;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_3
    invoke-virtual {p0, v1}, Lxw5;->R(Lcr;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v8}, Lmw5;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-eqz v1, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    return-object v1

    :goto_5
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public s(Lns1;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 2

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

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "getContentResolver(...)"

    invoke-static {p1, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lxw5;->A(Lcr;Landroid/content/ContentResolver;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type com.transsion.dbdata.engine.base.request.AudioItemRequestInput"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final t(ZZ)Ljava/util/List;
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    const-string p1, "scanMusicVideoCache"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p2

    iget-object p2, p2, Lcom/transsion/dbdata/database/MusicVideoDatabase;->b:Ljava/util/List;

    new-instance v0, Low5;

    invoke-direct {v0, p0}, Low5;-><init>(Ljava/util/List;)V

    const-wide/16 v1, 0x0

    invoke-static {p2, v1, v2, p1, v0}, Lt55;->m(Ljava/util/List;JZLe74;)J

    return-object p0
.end method

.method public final w(ZZ)Ljava/util/List;
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    const-string p1, "musicVideoAddByUserCache"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a()Lcom/transsion/dbdata/database/MusicVideoDatabase;

    move-result-object p2

    iget-object p2, p2, Lcom/transsion/dbdata/database/MusicVideoDatabase;->a:Ljava/util/List;

    new-instance v0, Lnw5;

    invoke-direct {v0, p0}, Lnw5;-><init>(Ljava/util/List;)V

    const-wide/16 v1, 0x0

    invoke-static {p2, v1, v2, p1, v0}, Lt55;->m(Ljava/util/List;JZLe74;)J

    return-object p0
.end method

.method public final z(Landroid/content/Context;Lcr;Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 6

    invoke-virtual {p2}, Lcr;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lxw5;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lxw5;->Q(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_0
    invoke-virtual {p2}, Lcr;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lxw5;->d:Ljava/lang/Object;

    monitor-enter p1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    :try_start_1
    invoke-static/range {v0 .. v5}, Lxw5;->G(Lxw5;Landroid/content/ContentResolver;Lcr;ZILjava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    invoke-virtual {p2}, Lcr;->D()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lxw5;->e:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    invoke-virtual {p0, p2}, Lxw5;->X(Lcr;)Ljava/util/List;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p1

    goto/16 :goto_0

    :catchall_2
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_2
    invoke-virtual {p2}, Lcr;->E()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lxw5;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    invoke-virtual {p0, p3, p2}, Lxw5;->e0(Landroid/content/ContentResolver;Lcr;)Ljava/util/List;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p1

    goto/16 :goto_0

    :catchall_3
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_3
    invoke-virtual {p2}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Lcr;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lxw5;->g:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4
    invoke-virtual {p0, p2, p3}, Lxw5;->S(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    monitor-exit p1

    goto :goto_0

    :catchall_4
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_4
    invoke-virtual {p2}, Lcr;->s()I

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lxw5;->h:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    invoke-virtual {p0, p2, p3}, Lxw5;->T(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    monitor-exit p1

    goto :goto_0

    :catchall_5
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_5
    invoke-virtual {p2}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lcr;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lxw5;->i:Ljava/lang/Object;

    monitor-enter p1

    :try_start_6
    invoke-virtual {p2}, Lcr;->m()Lcom/transsion/dbdata/beans/media/MediaBucket;

    move-result-object v0

    invoke-virtual {p2}, Lcr;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcr;->j()I

    move-result p2

    invoke-virtual {p0, p3, v0, v1, p2}, Lxw5;->D(Landroid/content/ContentResolver;Lcom/transsion/dbdata/beans/media/MediaBucket;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    monitor-exit p1

    goto :goto_0

    :catchall_6
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_6
    invoke-virtual {p2}, Lcr;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lxw5;->j:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7
    invoke-virtual {p0, p3, p2}, Lxw5;->o0(Landroid/content/ContentResolver;Lcr;)Ljava/util/List;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    monitor-exit p1

    goto :goto_0

    :catchall_7
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_7
    invoke-virtual {p2}, Lcr;->n()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lxw5;->k:Ljava/lang/Object;

    monitor-enter p1

    :try_start_8
    invoke-virtual {p0, p2, p3}, Lxw5;->E(Lcr;Landroid/content/ContentResolver;)Ljava/util/List;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    monitor-exit p1

    :goto_0
    return-object p0

    :catchall_8
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
