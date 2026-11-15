.class public abstract Lcom/transsion/dbdata/utils/AudioFilterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z

.field public static b:J

.field public static c:J

.field public static d:Ljava/util/List;

.field public static e:Ljava/util/Set;

.field public static f:Ljava/util/Set;

.field public static final g:[I

.field public static final h:[I

.field public static i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    const/16 v0, 0x64

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->g:[I

    const/16 v0, 0x1e

    const/16 v1, 0x3c

    const/16 v3, 0xa

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->h:[I

    return-void
.end method

.method public static synthetic A(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

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

.method public static synthetic B(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 6

    sget-object v0, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->v(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    iget-wide v0, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->size:J

    iget-wide v2, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->duration:J

    iget-object v4, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->parentPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->m(JJLjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static C(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget-object p0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_buckets"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static D(Ljava/util/List;Z)V
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lpp;

    invoke-direct {v0}, Lpp;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    if-eqz p1, :cond_1

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const/16 v0, 0x41f

    invoke-virtual {p0, v0, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static E(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "filter_manually_canceled"

    sget-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Ljava/util/Set;)Z

    return-void
.end method

.method public static F(Ljava/util/Set;)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "filter_manually_canceled"

    sget-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Ljava/util/Set;)Z

    return-void
.end method

.method public static G(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "filter_manually"

    sget-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Ljava/util/Set;)Z

    return-void
.end method

.method public static H(Ljava/util/Set;)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "filter_manually"

    sget-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Ljava/util/Set;)Z

    return-void
.end method

.method public static synthetic a(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->B(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->z(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->A(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    invoke-static {p0}, Lfi1;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_buckets"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->w(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static f(I)V
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_duration"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->h:[I

    aget p0, v0, p0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->c:J

    return-void
.end method

.method public static g(I)V
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_size"

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->t(Ljava/lang/String;I)Z

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->g:[I

    aget p0, v0, p0

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d(I)J

    move-result-wide v0

    sput-wide v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->b:J

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_manually_canceled"

    sget-object v2, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Ljava/util/Set;)Z

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->G(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static i(Ljava/util/Set;)V
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lqp;

    invoke-direct {v0}, Lqp;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_manually_canceled"

    sget-object v2, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Ljava/util/Set;)Z

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->H(Ljava/util/Set;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_manually"

    sget-object v2, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Ljava/util/Set;)Z

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static k(Ljava/util/Set;)V
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lop;

    invoke-direct {v0}, Lop;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "filter_manually"

    sget-object v2, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->x(Ljava/lang/String;Ljava/util/Set;)Z

    invoke-static {p0}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->F(Ljava/util/Set;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static l()V
    .locals 0

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->t()V

    return-void
.end method

.method public static m(JJLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p4}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->p(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-static {p0, p1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->q(J)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p2, p3}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->n(J)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p5}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->o(Ljava/lang/String;)Z

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

.method public static n(J)Z
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-wide v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->c:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static o(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static q(J)Z
    .locals 2

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-wide v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->b:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static r()Z
    .locals 4

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-wide v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    sget-wide v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->c:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static s()Z
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static t()V
    .locals 5

    sget-boolean v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-class v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->a:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->x()Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "filter_size"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/transsion/dbdata/utils/AudioFilterUtils;->g:[I

    aget v1, v2, v1

    invoke-static {v1}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d(I)J

    move-result-wide v1

    sput-wide v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->b:J

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "filter_duration"

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/transsion/dbdata/utils/AudioFilterUtils;->h:[I

    aget v1, v2, v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    sput-wide v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->c:J

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "filter_buckets"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/dbdata/utils/AudioFilterUtils$1;

    invoke-direct {v2}, Lcom/transsion/dbdata/utils/AudioFilterUtils$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Lfi1;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    sput-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "filter_manually"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->n(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "filter_manually_canceled"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mmkv/MMKV;->n(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    sget-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->d:Ljava/util/List;

    :cond_4
    sget-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    :cond_5
    sget-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    if-nez v1, :cond_6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    :cond_6
    :goto_1
    const/4 v1, 0x1

    sput-boolean v1, Lcom/transsion/dbdata/utils/AudioFilterUtils;->a:Z

    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static u()V
    .locals 0

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->t()V

    return-void
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->f:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/transsion/dbdata/utils/AudioFilterUtils;->l()V

    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/dbdata/utils/AudioFilterUtils;->e:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static x()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->A()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method

.method public static y(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/transsion/utils/BaseConstant;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic z(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

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
