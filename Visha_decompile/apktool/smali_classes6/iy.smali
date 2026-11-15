.class public final Liy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwv4;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lux;

    invoke-direct {v0}, Lux;-><init>()V

    const-class v1, Lxk8$x;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v1, Lcy;

    invoke-direct {v1}, Lcy;-><init>()V

    const-class v2, Lxk8$m;

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Liy;->a:Ljava/util/Map;

    new-instance v0, Ldy;

    invoke-direct {v0}, Ldy;-><init>()V

    const-class v1, Lxk8$c;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v0, Ley;

    invoke-direct {v0}, Ley;-><init>()V

    const-class v1, Lxk8$l;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-instance v0, Lfy;

    invoke-direct {v0}, Lfy;-><init>()V

    const-class v1, Lxk8$o;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-instance v0, Lgy;

    invoke-direct {v0}, Lgy;-><init>()V

    const-class v1, Lxk8$e;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-instance v0, Lhy;

    invoke-direct {v0}, Lhy;-><init>()V

    const-class v1, Lxk8$a;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-instance v0, Lvx;

    invoke-direct {v0}, Lvx;-><init>()V

    const-class v1, Lxk8$u;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-instance v0, Lwx;

    invoke-direct {v0}, Lwx;-><init>()V

    const-class v1, Lxk8$b;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    new-instance v0, Lxx;

    invoke-direct {v0}, Lxx;-><init>()V

    const-class v1, Lxk8$i;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    new-instance v0, Lyx;

    invoke-direct {v0}, Lyx;-><init>()V

    const-class v1, Lxk8$p;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    new-instance v0, Lzx;

    invoke-direct {v0}, Lzx;-><init>()V

    const-class v1, Lxk8$r;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    new-instance v0, Lay;

    invoke-direct {v0}, Lay;-><init>()V

    const-class v1, Lxk8$w;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Liy;->b:Ljava/util/Map;

    return-void
.end method

.method public static final A(Lxk8;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$x;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static final B(Lxk8;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$m;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->querySingleMV(Lxk8$m;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->z(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->t(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->w(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->s(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->u(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->y(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->p(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->x(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lxk8;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0}, Liy;->A(Lxk8;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->r(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->v(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lxk8;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    invoke-static {p0}, Liy;->B(Lxk8;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lxk8;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0}, Liy;->q(Lxk8;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final p(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$p;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryParentPathMediaList(Lxk8$p;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final q(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    invoke-static {p0}, Lubc;->a(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryTitleMediaList(Lxk8$r;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$w;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->search(Lxk8$w;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final s(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$c;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAllMediaList(Lxk8$c;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final t(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$l;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryFilteredMediaList(Lxk8$l;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final u(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$o;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryMediaListByMediaIds(Lxk8$o;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final v(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$e;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAudioConvertedMediaList(Lxk8$e;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final w(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$a;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAIList(Lxk8$a;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final x(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$u;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryPlayListMedia(Lxk8$u;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$b;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryAlbumArtistMediaList(Lxk8$b;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static final z(Lxk8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;

    check-cast p0, Lxk8$i;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/AudioRepositoryDelegate;->queryBucketMediaList(Lxk8$i;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Liy;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v0

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "querySingle unhandled action type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0cscope:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioItemQueryEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method public bridge synthetic a(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Liy;->C(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Liy;->b:Ljava/util/Map;

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object v0

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lxl8;->a()Lxk8;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "queryBatch unhandled action type: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0cscope:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AudioItemQueryEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method
