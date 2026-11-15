.class public final Liq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldx4;


# static fields
.field public static final a:Liq6;

.field public static final b:Lwe6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Liq6;

    invoke-direct {v0}, Liq6;-><init>()V

    sput-object v0, Liq6;->a:Liq6;

    sget-object v0, Lwe6;->a:Lwe6$a;

    invoke-virtual {v0}, Lwe6$a;->a()Lwe6;

    move-result-object v0

    sput-object v0, Liq6;->b:Lwe6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(IILcom/transsion/dbdata/beans/media/MediaItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 0

    const-string p0, "mediaItem"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$t;

    invoke-direct {p0, p1, p2}, Lxk8$t;-><init>(II)V

    const-class p1, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/PlayListMediaItem;

    return-object p0
.end method

.method public B(Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/PlayerStates;)Z
    .locals 0

    const-string p0, "videoData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaItem"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "playStates"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lngb$g;

    invoke-direct {p0, p2, p1, p3}, Lngb$g;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;Lcom/transsion/dbdata/beans/media/PlayVideoData;Lcom/transsion/dbdata/beans/PlayerStates;)V

    invoke-static {p0}, Lzj7;->e(Lngb;)Lahb;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->u(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public C(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 2

    const-string p0, "mediaItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lngb$e;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lngb$e;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;Z)V

    invoke-static {p0}, Lzj7;->e(Lngb;)Lahb;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v1, p0}, Lwe6;->u(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I

    move-result p0

    const/4 p1, -0x1

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D(Ljava/util/List;)V
    .locals 1

    sget-object p0, Liq6;->b:Lwe6;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lwe6;->t(Ljava/util/List;Z)V

    return-void
.end method

.method public E(J)Ljava/util/List;
    .locals 0

    new-instance p0, Lxk8$u$a;

    invoke-direct {p0}, Lxk8$u$a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lxk8$u$a;->e(J)Lxk8$u$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$u$a;->a()Lxk8$u;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public F(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "delete"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$k;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ld82$k;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;ZLe74;)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    return-void
.end method

.method public G(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Liq6;->b:Lwe6;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lwe6;->k(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public H()Lcom/transsion/dbdata/beans/media/VideoTotalTrack;
    .locals 8

    new-instance p0, Lxk8$d0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxk8$d0;-><init>(I)V

    const-class v0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    if-nez p0, :cond_0

    new-instance p0, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/beans/media/VideoTotalTrack;-><init>(Ljava/lang/String;Ljava/lang/String;IJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    return-object p0
.end method

.method public I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string p0, "fileName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->c(Ljava/lang/String;)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public J(II)I
    .locals 0

    new-instance p0, Lngb$f;

    invoke-direct {p0, p1, p2}, Lngb$f;-><init>(II)V

    invoke-static {p0}, Lzj7;->e(Lngb;)Lahb;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->u(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I

    move-result p0

    return p0
.end method

.method public K(ILcom/transsion/dbdata/beans/media/MediaItem;Z)I
    .locals 1

    const-string v0, "mediaItem"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ld82$h;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Liq6;->g0()J

    move-result-wide p0

    long-to-int p1, p0

    :cond_0
    iget p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    const/4 p2, 0x1

    invoke-direct {v0, p1, p0, p2, p3}, Ld82$h;-><init>(IIZZ)V

    invoke-static {v0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public L()Ljava/lang/String;
    .locals 2

    new-instance p0, Lxk8$d0;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lxk8$d0;-><init>(I)V

    const-class v0, Lcom/transsion/dbdata/beans/media/VideoInfoTrack;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lek4;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "toJson(...)"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public M(II)Ljava/util/List;
    .locals 0

    new-instance p0, Lxk8$z;

    invoke-direct {p0, p1, p2}, Lxk8$z;-><init>(II)V

    const-class p1, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public N(ILjava/util/List;Z)Ljava/util/List;
    .locals 2

    const-string v0, "mediaItems"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p2, Ld82$i;

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Liq6;->g0()J

    move-result-wide p0

    long-to-int p1, p0

    :cond_1
    const/4 p0, 0x1

    invoke-direct {p2, p1, v0, p0, p3}, Ld82$i;-><init>(ILjava/util/List;ZZ)V

    invoke-static {p2}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->c(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public O(ZIZ)Ljava/util/List;
    .locals 2

    new-instance v0, Lxk8$c$a;

    invoke-direct {v0}, Lxk8$c$a;-><init>()V

    const/16 v1, 0x204

    invoke-virtual {v0, v1}, Lxk8$c$a;->f(I)Lxk8$c$a;

    invoke-virtual {v0, p2}, Lxk8$c$a;->d(I)Lxk8$c$a;

    invoke-virtual {v0, p3}, Lxk8$c$a;->b(Z)Lxk8$c$a;

    invoke-virtual {v0}, Lxk8$c$a;->a()Lxk8$c;

    move-result-object p2

    const-class p3, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p2, p3}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p2

    sget-object p3, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p3, v0, p2}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p2}, Liq6;->i0(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method public P(Ljava/util/List;Le74;)V
    .locals 1

    const-string p0, "items"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "delete"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$l;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ld82$l;-><init>(Ljava/util/List;ZLe74;)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    return-void
.end method

.method public Q(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/MediaItem;Z)I
    .locals 6

    const-string v0, "playlistName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaItem"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lb15$f;

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Liq6;->g0()J

    move-result-wide p2

    :cond_0
    move-wide v1, p2

    const/4 v4, 0x1

    move-object v0, p1

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lb15$f;-><init>(JLcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    invoke-static {p1}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public R()Z
    .locals 3

    new-instance p0, Ld82$d;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ld82$d;-><init>(Z)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object v1, Liq6;->b:Lwe6;

    sget-object v2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v1, v2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S()Ljava/util/List;
    .locals 6

    new-instance p0, Lxk8$k;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lxk8$k;-><init>(I)V

    const-class v0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lxk8$u$a;

    invoke-direct {p0}, Lxk8$u$a;-><init>()V

    invoke-virtual {p0, v2, v3}, Lxk8$u$a;->e(J)Lxk8$u$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$u$a;->a()Lxk8$u;

    move-result-object p0

    const-class v2, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, v2}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public T(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lwe6;->a:Lwe6$a;

    invoke-virtual {p0}, Lwe6$a;->a()Lwe6;

    move-result-object p0

    invoke-virtual {p0, p1}, Lwe6;->m(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public U(I)Ljava/util/List;
    .locals 1

    new-instance p0, Lxk8$c$a;

    invoke-direct {p0}, Lxk8$c$a;-><init>()V

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lxk8$c$a;->f(I)Lxk8$c$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxk8$c$a;->d(I)Lxk8$c$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$c$a;->a()Lxk8$c;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public V(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;
    .locals 6

    const-string v0, "playListName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaItems"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lb15$g;

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Liq6;->g0()J

    move-result-wide p2

    :cond_0
    move-wide v1, p2

    const/4 v4, 0x1

    move-object v0, p1

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lb15$g;-><init>(JLjava/util/List;ZZ)V

    invoke-static {p1}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->g(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public W()Ljava/util/List;
    .locals 2

    new-instance p0, Lxk8$u$a;

    invoke-direct {p0}, Lxk8$u$a;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lxk8$u$a;->c(Z)Lxk8$u$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$u$a;->a()Lxk8$u;

    move-result-object p0

    const-class v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public X(ILjava/lang/String;)Z
    .locals 2

    const-string p0, "filePath"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$e;

    int-to-long v0, p1

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p2, p1}, Ld82$e;-><init>(JLjava/lang/String;Z)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p2, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p2, v0, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Y(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Liq6;->b:Lwe6;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lwe6;->l(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public Z(ZLe74;)Ljava/util/List;
    .locals 1

    new-instance p0, Lxk8$j;

    invoke-static {}, Loa1;->e()I

    move-result v0

    invoke-direct {p0, v0, p1, p2}, Lxk8$j;-><init>(IZLe74;)V

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string p0, "mediaIds"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$o$a;

    invoke-direct {p0}, Lxk8$o$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$o$a;->d(Ljava/util/List;)Lxk8$o$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$o$a;->a()Lxk8$o;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public a0(Lcom/transsion/dbdata/database/VideoPlayList;)I
    .locals 3

    const-string p0, "playList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lngb$d;

    iget v0, p1, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    int-to-long v0, v0

    iget-object p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lngb$d;-><init>(JLjava/lang/String;Z)V

    invoke-static {p0}, Lzj7;->e(Lngb;)Lahb;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->u(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I

    move-result p0

    return p0
.end method

.method public b(I)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 2

    invoke-virtual {p0}, Liq6;->g0()J

    move-result-wide v0

    new-instance p0, Lxk8$t;

    long-to-int v0, v0

    invoke-direct {p0, v0, p1}, Lxk8$t;-><init>(II)V

    const-class p1, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/PlayListMediaItem;

    return-object p0
.end method

.method public b0(Lcom/transsion/dbdata/beans/media/PlayVideoData;)Ljava/util/List;
    .locals 3

    const-string p0, "videoData"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->mYoutubeId:Ljava/lang/String;

    iget-wide v1, p1, Lcom/transsion/dbdata/beans/media/PlayVideoData;->bucketId:J

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lxk8$v;

    invoke-direct {p1, v1, v2, v0}, Lxk8$v;-><init>(JLjava/lang/String;)V

    const-class v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p1

    sget-object v0, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p1}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object p0
.end method

.method public c()Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 3

    sget-object p0, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lxk8$y;

    invoke-direct {v1}, Lxk8$y;-><init>()V

    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-class v0, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-static {p0, v0}, Lek4;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/transsion/dbdata/beans/SubtitleSettingData;-><init>(I)V

    :goto_0
    return-object p0
.end method

.method public c0(Lcom/transsion/dbdata/beans/media/MediaItem;)I
    .locals 7

    const-string p0, "mediaItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lb15$l;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string p1, "data"

    invoke-static {v2, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lb15$l;-><init>(ILjava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lxk8$c0;

    invoke-direct {v0, p1}, Lxk8$c0;-><init>(Ljava/lang/String;)V

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {v0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p1

    sget-object v0, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p1}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public d0()Ljava/util/List;
    .locals 2

    new-instance p0, Lxk8$h$a;

    invoke-direct {p0}, Lxk8$h$a;-><init>()V

    const/16 v0, 0x101

    invoke-virtual {p0, v0}, Lxk8$h$a;->a(I)Lxk8$h$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$h$a;->b()Lxk8$h;

    move-result-object p0

    const-class v0, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public e(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .locals 2

    const-string p0, "record"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Ld82$b;

    invoke-direct {v1, p1}, Ld82$b;-><init>(Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    invoke-static {v1}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public e0(I)Ljava/util/List;
    .locals 1

    new-instance p0, Lxk8$c$a;

    invoke-direct {p0}, Lxk8$c$a;-><init>()V

    const/16 v0, 0x202

    invoke-virtual {p0, v0}, Lxk8$c$a;->f(I)Lxk8$c$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxk8$c$a;->d(I)Lxk8$c$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$c$a;->a()Lxk8$c;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->z(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/String;)J
    .locals 1

    const-string p0, "name"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lb15$e;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lb15$e;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public f0(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string p0, "parentPath"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$p$a;

    invoke-direct {p0}, Lxk8$p$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$p$a;->c(Ljava/lang/String;)Lxk8$p$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$p$a;->a()Lxk8$p;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public g(J)I
    .locals 1

    new-instance p0, Ld82$g;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ld82$g;-><init>(JZ)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public final g0()J
    .locals 2

    new-instance p0, Lxk8$k;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lxk8$k;-><init>(I)V

    const-class v0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Lwe6;->a:Lwe6$a;

    invoke-virtual {v0}, Lwe6$a;->a()Lwe6;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAudioTrack(I)Lcom/transsion/dbdata/database/AudioTrack;
    .locals 2

    sget-object p0, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lxk8$b0;

    invoke-direct {v1, p1}, Lxk8$b0;-><init>(I)V

    const-class p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-class p1, Lcom/transsion/dbdata/database/AudioTrack;

    invoke-static {p0, p1}, Lek4;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/AudioTrack;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public h(I)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->d(I)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public final h0(ZZ)Ljava/util/List;
    .locals 3

    new-instance p0, Lxk8$d;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lxk8$d;-><init>(IZZ)V

    const-class p1, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p0, p2}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/dbdata/database/PlayListFolderItem;

    new-instance v0, Lcom/transsion/dbdata/database/VideoPlayList;

    invoke-direct {v0}, Lcom/transsion/dbdata/database/VideoPlayList;-><init>()V

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->id:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getCount()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->count:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->uri:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getListFlag()I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/database/VideoPlayList;->playlistFlag:I

    invoke-virtual {p2}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getCategory()I

    move-result p2

    iput p2, v0, Lcom/transsion/dbdata/database/VideoPlayList;->mCategory:I

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public i(Lcom/transsion/dbdata/beans/media/MediaBucket;)Ljava/util/List;
    .locals 2

    const-string p0, "mediaBucket"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$i$a;

    invoke-direct {p0}, Lxk8$i$a;-><init>()V

    iget-wide v0, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    invoke-virtual {p0, v0, v1}, Lxk8$i$a;->b(J)Lxk8$i$a;

    move-result-object p0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lxk8$i$a;->f(Ljava/lang/String;)Lxk8$i$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$i$a;->a()Lxk8$i;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public i0(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Ldx4$a;->a(Ldx4;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public insertSubtitleSetting(Lcom/transsion/dbdata/beans/SubtitleSettingData;)I
    .locals 2

    const-string p0, "subtitleSetting"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lb15$h;

    invoke-direct {v1, p1}, Lb15$h;-><init>(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V

    invoke-static {v1}, Lzj7;->b(Lb15;)Le15;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public j(ZLcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 7

    const-string v0, "item"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Liq6;->g0()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    new-instance p1, Lb15$f;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lb15$f;-><init>(JLcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    invoke-static {p1}, Lzj7;->b(Lb15;)Le15;

    move-result-object p1

    sget-object p2, Lwe6;->a:Lwe6$a;

    invoke-virtual {p2}, Lwe6$a;->a()Lwe6;

    move-result-object p2

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p2, v1, p1}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p1

    if-lez p1, :cond_2

    :goto_0
    move v0, p0

    goto :goto_1

    :cond_1
    new-instance p1, Ld82$h;

    long-to-int v1, v2

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-direct {p1, v1, p2, p0, p0}, Ld82$h;-><init>(IIZZ)V

    invoke-static {p1}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p1

    sget-object p2, Lwe6;->a:Lwe6$a;

    invoke-virtual {p2}, Lwe6$a;->a()Lwe6;

    move-result-object p2

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p2, v1, p1}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public k(IILjava/lang/String;)I
    .locals 2

    sget-object p0, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lb15$k;

    invoke-direct {v1, p1, p2, p3}, Lb15$k;-><init>(IILjava/lang/String;)V

    invoke-static {v1}, Lzj7;->b(Lb15;)Le15;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public l(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string p0, "mediaItems"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lb15$m;

    invoke-direct {p0, p1}, Lb15$m;-><init>(Ljava/util/List;)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->g(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->f(Ljava/lang/String;)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public n(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->g(Landroid/net/Uri;)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0
.end method

.method public o(I)I
    .locals 1

    new-instance p0, Ld82$n;

    invoke-direct {p0, p1}, Ld82$n;-><init>(I)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public p(Ljava/util/List;)Ljava/util/List;
    .locals 1

    const-string p0, "mediaItems"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    iget v0, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Lxk8$o$a;

    invoke-direct {p1}, Lxk8$o$a;-><init>()V

    invoke-virtual {p1, p0}, Lxk8$o$a;->d(Ljava/util/List;)Lxk8$o$a;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lxk8$o$a;->e(Z)Lxk8$o$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$o$a;->a()Lxk8$o;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public q(Ljava/lang/String;)I
    .locals 2

    const-string p0, "subtitlePath"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Ld82$j;

    invoke-direct {v1, p1}, Ld82$j;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public r(I)Ljava/util/List;
    .locals 1

    new-instance p0, Lxk8$c$a;

    invoke-direct {p0}, Lxk8$c$a;-><init>()V

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lxk8$c$a;->f(I)Lxk8$c$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxk8$c$a;->d(I)Lxk8$c$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$c$a;->a()Lxk8$c;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/transsion/dbdata/utils/SortUtil;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public s()Ljava/util/List;
    .locals 2

    new-instance p0, Lxk8$a0;

    invoke-direct {p0}, Lxk8$a0;-><init>()V

    const-class v0, Lcom/transsion/dbdata/beans/media/SubtitleTrackInfo;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Liq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public t(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)I
    .locals 2

    const-string p0, "subtitle"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lb15$i;

    invoke-direct {v1, p1, p2}, Lb15$i;-><init>(ILcom/transsion/dbdata/beans/media/SubtitleTrackInfo;)V

    invoke-static {v1}, Lzj7;->b(Lb15;)Le15;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public u(Z)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Liq6;->h0(ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public v(Lcom/transsion/dbdata/beans/SubtitleHistory;)I
    .locals 2

    const-string p0, "record"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lb15$c;

    invoke-direct {v1, p1}, Lb15$c;-><init>(Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    invoke-static {v1}, Lzj7;->b(Lb15;)Le15;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public w(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance p0, Lxk8$w$a;

    invoke-direct {p0}, Lxk8$w$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$w$a;->c(Ljava/lang/String;)Lxk8$w$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$w$a;->a()Lxk8$w;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Li81;->e0(Ljava/lang/Iterable;)Ljava/util/List;

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

    check-cast v0, Lcom/transsion/dbdata/beans/media/MediaItem;

    new-instance v1, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/SearchBean;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/transsion/dbdata/beans/SearchBean;->setItemType(I)V

    invoke-virtual {v1, v0}, Lcom/transsion/dbdata/beans/SearchBean;->setMediaItem(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public x()V
    .locals 0

    sget-object p0, Liq6;->b:Lwe6;

    invoke-virtual {p0}, Lwe6;->n()V

    return-void
.end method

.method public y(Ljava/util/List;)Ljava/util/List;
    .locals 2

    const-string p0, "paths"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$q;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lxk8$q;-><init>(Ljava/util/List;Lnm6;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    :cond_0
    move-object p0, v1

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/transsion/dbdata/utils/SortUtil;->z(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public z(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem;
    .locals 1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->e(Ljava/lang/String;)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Liq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->VIDEO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
