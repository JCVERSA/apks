.class public final Lcsb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lev4;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltrb;

    invoke-direct {v0}, Ltrb;-><init>()V

    const-class v1, Lb15$e;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    new-instance v0, Lurb;

    invoke-direct {v0}, Lurb;-><init>()V

    const-class v1, Lb15$f;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    new-instance v0, Lvrb;

    invoke-direct {v0}, Lvrb;-><init>()V

    const-class v1, Lb15$l;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    new-instance v0, Lwrb;

    invoke-direct {v0}, Lwrb;-><init>()V

    const-class v1, Lb15$k;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    new-instance v0, Lxrb;

    invoke-direct {v0}, Lxrb;-><init>()V

    const-class v1, Lb15$c;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    new-instance v0, Lyrb;

    invoke-direct {v0}, Lyrb;-><init>()V

    const-class v1, Lb15$i;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    new-instance v0, Lzrb;

    invoke-direct {v0}, Lzrb;-><init>()V

    const-class v1, Lb15$h;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcsb;->a:Ljava/util/Map;

    new-instance v0, Lasb;

    invoke-direct {v0}, Lasb;-><init>()V

    const-class v1, Lb15$g;

    invoke-static {v1, v0}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-instance v1, Lbsb;

    invoke-direct {v1}, Lbsb;-><init>()V

    const-class v2, Lb15$m;

    invoke-static {v2, v1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v1}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/a;->p([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcsb;->b:Ljava/util/Map;

    return-void
.end method

.method public static synthetic c(Lb15;)I
    .locals 0

    invoke-static {p0}, Lcsb;->s(Lb15;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Lb15;)I
    .locals 0

    invoke-static {p0}, Lcsb;->n(Lb15;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(Lb15;)I
    .locals 0

    invoke-static {p0}, Lcsb;->t(Lb15;)I

    move-result p0

    return p0
.end method

.method public static synthetic f(Lb15;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcsb;->l(Lb15;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lb15;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcsb;->m(Lb15;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lb15;)I
    .locals 0

    invoke-static {p0}, Lcsb;->r(Lb15;)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Lb15;)I
    .locals 0

    invoke-static {p0}, Lcsb;->q(Lb15;)I

    move-result p0

    return p0
.end method

.method public static synthetic j(Lb15;)I
    .locals 0

    invoke-static {p0}, Lcsb;->o(Lb15;)I

    move-result p0

    return p0
.end method

.method public static synthetic k(Lb15;)I
    .locals 0

    invoke-static {p0}, Lcsb;->p(Lb15;)I

    move-result p0

    return p0
.end method

.method public static final l(Lb15;)Ljava/util/List;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$g;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->addPlayListElements(Lb15$g;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final m(Lb15;)Ljava/util/List;
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$m;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->insertVideoConvertingAudio(Lb15$m;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final n(Lb15;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$e;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->createPlayList(Lb15$e;)I

    move-result p0

    return p0
.end method

.method private static final o(Lb15;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$f;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->addPlayListElement(Lb15$f;)I

    move-result p0

    return p0
.end method

.method private static final p(Lb15;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$l;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->insertVideoConvertingAudio(Lb15$l;)I

    move-result p0

    return p0
.end method

.method private static final q(Lb15;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$k;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->insertAudioTrack(Lb15$k;)I

    move-result p0

    return p0
.end method

.method private static final r(Lb15;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$c;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->insertDownloadSubtitleRecord(Lb15$c;)I

    move-result p0

    return p0
.end method

.method private static final s(Lb15;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$i;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->insertSubtitleUsageRecord(Lb15$i;)I

    move-result p0

    return p0
.end method

.method public static final t(Lb15;)I
    .locals 1

    const-string v0, "input"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;

    check-cast p0, Lb15$h;

    invoke-virtual {v0, p0}, Lcom/transsion/dbdata/source/data/repository/delegate/VideoRepositoryDelegate;->insertSubtitleSetting(Lb15$h;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Le15;)I
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcsb;->a:Ljava/util/Map;

    invoke-virtual {p1}, Le15;->a()Lb15;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Le15;->a()Lb15;

    move-result-object p1

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Le15;->a()Lb15;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled SingleAction type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoInsertEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public b(Le15;)Ljava/util/List;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcsb;->b:Ljava/util/Map;

    invoke-virtual {p1}, Le15;->a()Lb15;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le74;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Le15;->a()Lb15;

    move-result-object v0

    invoke-interface {p0, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Le15;->a()Lb15;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled BatchAction type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoInsertEngine"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method
