.class public final Lhq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldu4;


# static fields
.field public static final a:Lhq6;

.field public static final b:Lwe6;

.field public static final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhq6;

    invoke-direct {v0}, Lhq6;-><init>()V

    sput-object v0, Lhq6;->a:Lhq6;

    sget-object v0, Lwe6;->a:Lwe6$a;

    invoke-virtual {v0}, Lwe6$a;->a()Lwe6;

    move-result-object v0

    sput-object v0, Lhq6;->b:Lwe6;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lhq6;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;
    .locals 0

    invoke-static {p0, p1}, Lhq6;->q0(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lhq6;IZILjava/lang/Object;)Lxl8;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lhq6;->f(IZ)Lxl8;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lhq6;IZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lxl8;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lhq6;->h(IZLjava/lang/Integer;Ljava/lang/String;)Lxl8;

    move-result-object p0

    return-object p0
.end method

.method private final n0(Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newMethod(size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModernAudioDataManager"

    invoke-static {v1, v0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lvdb;->a:Lvdb$a;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    :cond_1
    if-nez p2, :cond_2

    const-string p2, "NULL"

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "):"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lvdb$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final o0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p2, "NULL"

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " newMethod:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModernAudioDataManager"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final q0(Landroidx/lifecycle/MediatorLiveData;Ljava/util/List;)Lzfb;
    .locals 4

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lqe6;

    invoke-virtual {v2}, Lqe6;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqe6;

    new-instance v2, Lcom/transsion/dbdata/database/AudioAlbum;

    invoke-virtual {v1}, Lqe6;->f()I

    move-result v3

    invoke-virtual {v1}, Lqe6;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/transsion/dbdata/database/AudioAlbum;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method private final w(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "filter_size"

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "getFilteredList(type:"

    if-eqz v0, :cond_0

    const/16 p1, 0x301

    goto :goto_0

    :cond_0
    const-string v0, "filter_duration"

    invoke-static {p1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x302

    :goto_0
    new-instance v0, Lxk8$l;

    invoke-direct {v0, p1}, Lxk8$l;-><init>(I)V

    const-class v2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v2}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lhq6;->u(Lxl8;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")\uff0cinvalid filtering type"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModernAudioDataManager"

    invoke-static {p1, p0}, Lvmb;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(JLjava/lang/String;Z)Lkotlin/Pair;
    .locals 0

    new-instance p0, Lxk8$u$a;

    invoke-direct {p0}, Lxk8$u$a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lxk8$u$a;->e(J)Lxk8$u$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lxk8$u$a;->d(Ljava/lang/String;)Lxk8$u$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lxk8$u$a;->b(Z)Lxk8$u$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$u$a;->a()Lxk8$u;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public A0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    new-instance v0, Lb15$d;

    iget v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    int-to-long v1, v1

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-direct {v0, v1, v2, p1}, Lb15$d;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p1

    sget-object v0, Lhq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p1}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public B(Ljava/lang/String;)Lkotlin/Pair;
    .locals 7

    invoke-virtual {p0}, Lhq6;->d0()Z

    move-result v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v1, 0x205

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lhq6;->i(Lhq6;IZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lxl8;

    move-result-object p1

    const-string v0, "getAllAudioList"

    invoke-virtual {p0, p1, v0}, Lhq6;->v(Lxl8;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    sget-object p1, Lhq6;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object p0
.end method

.method public B0(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I
    .locals 0

    const-string p0, "audioItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newPath"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->Companion:Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;

    invoke-virtual {p0}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository$Companion;->getInstance()Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/MediaConvertRepository;->updateConvertedAudioItem(Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public C(Z)Lkotlin/Pair;
    .locals 6

    invoke-virtual {p0}, Lhq6;->Y()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    new-instance p0, Lkotlin/Pair;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lhq6;->A(JLjava/lang/String;Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public C0(Lcom/transsion/dbdata/database/PlayList;)I
    .locals 3

    const-string p0, "playList"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lngb$d;

    iget v0, p1, Lcom/transsion/dbdata/database/PlayList;->id:I

    int-to-long v0, v0

    iget-object p1, p1, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lngb$d;-><init>(JLjava/lang/String;Z)V

    invoke-static {p0}, Lzj7;->e(Lngb;)Lahb;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->u(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I

    move-result p0

    return p0
.end method

.method public D()Ljava/util/List;
    .locals 9

    const/16 v0, 0x102

    const-string v1, "getAllFolderList"

    invoke-virtual {p0, v0, v1}, Lhq6;->X(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    move-object v6, v2

    sget-object v3, Lhq6;->a:Lhq6;

    iget-wide v4, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lhq6;->O(JLjava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public D0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 2

    const-string p0, "audioItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lngb$b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lngb$b;-><init>(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V

    invoke-static {p0}, Lzj7;->e(Lngb;)Lahb;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v1, p0}, Lwe6;->u(Lcom/transsion/dbdata/source/DataSourceScope;Lahb;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public E()Ljava/util/List;
    .locals 6

    new-instance p0, Lxk8$n;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lxk8$n;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lqe6;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Lhq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

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
    return-object p0
.end method

.method public F()Ljava/util/List;
    .locals 5

    const/16 v0, 0x103

    const-string v1, "getArtistFolderList"

    invoke-virtual {p0, v0, v1}, Lhq6;->X(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    sget-object v3, Lhq6;->a:Lhq6;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lhq6;->N(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public G(I)Ljava/util/List;
    .locals 1

    if-gtz p1, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lxk8$e;

    invoke-direct {p0, p1}, Lxk8$e;-><init>(I)V

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_2

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public H(I)Lcom/transsion/dbdata/database/AudioAlbum;
    .locals 1

    invoke-virtual {p0, p1}, Lhq6;->b0(I)Lqe6;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/transsion/dbdata/database/AudioAlbum;

    invoke-virtual {p0}, Lqe6;->f()I

    move-result v0

    invoke-virtual {p0}, Lqe6;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/transsion/dbdata/database/AudioAlbum;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public I(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string p0, "displayName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->b(Ljava/lang/String;)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object p1, Lhq6;->a:Lhq6;

    const-string v0, "getAudioItemByDisplayName"

    invoke-direct {p1, v0, p0}, Lhq6;->o0(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public J(I)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->d(I)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object p1, Lhq6;->a:Lhq6;

    const-string v0, "getAudioItemById"

    invoke-direct {p1, v0, p0}, Lhq6;->o0(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public K(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string p0, "path"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->f(Ljava/lang/String;)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object p1, Lhq6;->a:Lhq6;

    const-string v0, "getAudioItemByPath"

    invoke-direct {p1, v0, p0}, Lhq6;->o0(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public L(Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 1

    const-string p0, "uri"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$x$a;

    invoke-direct {p0}, Lxk8$x$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$x$a;->g(Landroid/net/Uri;)Lxk8$x$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$x$a;->a()Lxk8$x;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    sget-object p1, Lhq6;->a:Lhq6;

    const-string v0, "getAudioItemByUri"

    invoke-direct {p1, v0, p0}, Lhq6;->o0(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public M(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "albumName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lxk8$b$a;

    invoke-direct {v0}, Lxk8$b$a;-><init>()V

    invoke-virtual {v0, p1}, Lxk8$b$a;->a(Ljava/lang/String;)Lxk8$b$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lxk8$b$a;->d(Ljava/lang/String;)Lxk8$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lxk8$b$a;->c()Lxk8$b;

    move-result-object p1

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p2}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p1

    const-string p2, "getAudioListByAlbum"

    invoke-virtual {p0, p1, p2}, Lhq6;->u(Lxl8;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public N(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    const-string v0, "artistName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lxk8$b$a;

    invoke-direct {v0}, Lxk8$b$a;-><init>()V

    invoke-virtual {v0, p1}, Lxk8$b$a;->b(Ljava/lang/String;)Lxk8$b$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lxk8$b$a;->d(Ljava/lang/String;)Lxk8$b$a;

    move-result-object p1

    invoke-virtual {p1}, Lxk8$b$a;->c()Lxk8$b;

    move-result-object p1

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p2}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p1

    const-string p2, "getAudioListByArtistName"

    invoke-virtual {p0, p1, p2}, Lhq6;->u(Lxl8;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public O(JLjava/lang/String;Ljava/lang/String;Z)Lkotlin/Pair;
    .locals 0

    const-string p0, "parentPath"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$i$a;

    invoke-direct {p0}, Lxk8$i$a;-><init>()V

    invoke-virtual {p0, p1, p2}, Lxk8$i$a;->b(J)Lxk8$i$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lxk8$i$a;->f(Ljava/lang/String;)Lxk8$i$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lxk8$i$a;->e(Ljava/lang/String;)Lxk8$i$a;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lxk8$i$a;->d(Z)Lxk8$i$a;

    move-result-object p0

    invoke-virtual {p0, p5}, Lxk8$i$a;->c(Z)Lxk8$i$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$i$a;->a()Lxk8$i;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

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
    sget-object p1, Lhq6;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    new-instance p2, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    if-nez p0, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_1
    invoke-direct {p2, p3, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getAudioListByBucketIdAndParentPath newMethod(size:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ModernAudioDataManager"

    invoke-static {p1, p0}, Lvmb;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public P(Ljava/util/List;Z)Ljava/util/List;
    .locals 2

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
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

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lhq6;->Q(Ljava/util/List;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final Q(Ljava/util/List;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 0

    new-instance p0, Lxk8$o$a;

    invoke-direct {p0}, Lxk8$o$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$o$a;->d(Ljava/util/List;)Lxk8$o$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lxk8$o$a;->c(Ljava/lang/String;)Lxk8$o$a;

    move-result-object p0

    invoke-virtual {p0, p3}, Lxk8$o$a;->b(Z)Lxk8$o$a;

    move-result-object p0

    invoke-virtual {p0, p4}, Lxk8$o$a;->e(Z)Lxk8$o$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$o$a;->a()Lxk8$o;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

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

.method public R(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0

    const-string p0, "parentPath"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$p$a;

    invoke-direct {p0}, Lxk8$p$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$p$a;->c(Ljava/lang/String;)Lxk8$p$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lxk8$p$a;->b(Z)Lxk8$p$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$p$a;->a()Lxk8$p;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

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

.method public S(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2

    const-string v0, "mediaIds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

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

    check-cast v1, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget v1, v1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, v0, p2, p3, p1}, Lhq6;->Q(Ljava/util/List;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public T()Ljava/util/List;
    .locals 1

    const-string v0, "filter_duration"

    invoke-direct {p0, v0}, Lhq6;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public U()Ljava/util/List;
    .locals 1

    const-string v0, "filter_size"

    invoke-direct {p0, v0}, Lhq6;->w(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public V(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v1, 0x207

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lhq6;->i(Lhq6;IZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lxl8;

    move-result-object p1

    const-string p2, "getAudioListWithAllFiltersApplied"

    invoke-virtual {p0, p1, p2}, Lhq6;->u(Lxl8;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public W(I)Lcom/transsion/dbdata/beans/LyricData;
    .locals 2

    sget-object p0, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lxk8$f;

    invoke-direct {v1, p1}, Lxk8$f;-><init>(I)V

    const-class p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-class p1, Lcom/transsion/dbdata/beans/LyricData;

    invoke-static {p0, p1}, Lek4;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/LyricData;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final X(ILjava/lang/String;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lhq6;->g(Lhq6;IZILjava/lang/Object;)Lxl8;

    move-result-object v0

    sget-object v1, Lhq6;->b:Lwe6;

    sget-object v3, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v1, v3, v0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(type:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lhq6;->n0(Ljava/lang/String;Ljava/util/List;)V

    if-nez v2, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public final Y()J
    .locals 2

    new-instance p0, Lxk8$k;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lxk8$k;-><init>(I)V

    const-class v0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Lwe6;->a:Lwe6$a;

    invoke-virtual {v0}, Lwe6$a;->a()Lwe6;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

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

.method public Z(JLjava/lang/String;)Ljava/util/List;
    .locals 1

    new-instance v0, Lxk8$i$a;

    invoke-direct {v0}, Lxk8$i$a;-><init>()V

    invoke-virtual {v0, p1, p2}, Lxk8$i$a;->b(J)Lxk8$i$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lxk8$i$a;->f(Ljava/lang/String;)Lxk8$i$a;

    move-result-object p1

    invoke-virtual {p1}, Lxk8$i$a;->a()Lxk8$i;

    move-result-object p1

    const-class p2, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p1, p2}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p1

    const-string p2, "getFilterSettingsFolderPreviewList"

    invoke-virtual {p0, p1, p2}, Lhq6;->u(Lxl8;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v1, 0x208

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lhq6;->i(Lhq6;IZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lxl8;

    move-result-object p1

    const-string v0, "getAudioPlayRecordList"

    invoke-virtual {p0, p1, v0}, Lhq6;->u(Lxl8;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a0()Ljava/util/List;
    .locals 6

    const/16 v0, 0x107

    const-string v1, "getFolderListForFilterSettings"

    invoke-virtual {p0, v0, v1}, Lhq6;->X(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    sget-object v2, Lhq6;->a:Lhq6;

    iget-wide v3, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->bucketId:J

    iget-object v5, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentPath:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lhq6;->Z(JLjava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v1, 0x206

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Lhq6;->i(Lhq6;IZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lxl8;

    move-result-object p1

    const-string v0, "getAudioMVList"

    invoke-virtual {p0, p1, v0}, Lhq6;->u(Lxl8;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b0(I)Lqe6;
    .locals 6

    new-instance p0, Lxk8$n;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lxk8$n;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class p1, Lqe6;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqe6;

    return-object p0
.end method

.method public c0(ZLjava/lang/String;)Ljava/util/List;
    .locals 7

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/16 v1, 0x209

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lhq6;->i(Lhq6;IZLjava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lxl8;

    move-result-object p1

    const-string p2, "getMostFrequentlyPlayedAudioList"

    invoke-virtual {p0, p1, p2}, Lhq6;->u(Lxl8;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public d(ILjava/lang/String;)I
    .locals 2

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lb15$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lb15$a;-><init>(ILjava/lang/String;J)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public d0()Z
    .locals 0

    invoke-static {p0}, Ldu4$a;->c(Ldu4;)Z

    move-result p0

    return p0
.end method

.method public e(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "mediaItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lb15$j;

    invoke-direct {p0, p1}, Lb15$j;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e0(JLjava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lhq6;->A(JLjava/lang/String;Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final f(IZ)Lxl8;
    .locals 0

    new-instance p0, Lxk8$h$a;

    invoke-direct {p0}, Lxk8$h$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$h$a;->a(I)Lxk8$h$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Lxk8$h$a;->c(Z)Lxk8$h$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$h$a;->b()Lxk8$h;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    return-object p0
.end method

.method public f0()Ljava/util/List;
    .locals 7

    new-instance p0, Lxk8$d;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lxk8$d;-><init>(IZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Lhq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    goto/16 :goto_2

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/database/PlayListFolderItem;

    new-instance v2, Lcom/transsion/dbdata/database/PlayList;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/transsion/dbdata/database/PlayList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, v2, Lcom/transsion/dbdata/database/PlayList;->id:I

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getUri()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/transsion/dbdata/database/PlayList;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getListFlag()I

    move-result v3

    iput v3, v2, Lcom/transsion/dbdata/database/PlayList;->listFlag:I

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getUriType()I

    move-result v3

    iput v3, v2, Lcom/transsion/dbdata/database/PlayList;->uriType:I

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->isCustomCover()Z

    move-result v3

    iput-boolean v3, v2, Lcom/transsion/dbdata/database/PlayList;->isCustomCover:Z

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getCategory()I

    move-result v3

    iput v3, v2, Lcom/transsion/dbdata/database/PlayList;->mCategory:I

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getCategory()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    sget-object v3, Lhq6;->a:Lhq6;

    invoke-virtual {v1}, Lcom/transsion/dbdata/database/PlayListFolderItem;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v4}, Lhq6;->e0(JLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    sget-object v1, Lhq6;->a:Lhq6;

    invoke-virtual {v1, v5}, Lhq6;->C(Z)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_2
    sget-object v1, Lhq6;->a:Lhq6;

    invoke-virtual {v1, v5, v4}, Lhq6;->h0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    iput v1, v2, Lcom/transsion/dbdata/database/PlayList;->count:I

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public g0(IILcom/transsion/dbdata/beans/media/AudioItem;Z)Lcom/transsion/dbdata/database/PlayListMediaItem;
    .locals 0

    const-string p0, "audioItem"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lxk8$t;

    invoke-direct {p0, p1, p2}, Lxk8$t;-><init>(II)V

    const-class p1, Lcom/transsion/dbdata/database/PlayListMediaItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/database/PlayListMediaItem;

    return-object p0
.end method

.method public final h(IZLjava/lang/Integer;Ljava/lang/String;)Lxl8;
    .locals 0

    new-instance p0, Lxk8$c$a;

    invoke-direct {p0}, Lxk8$c$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$c$a;->f(I)Lxk8$c$a;

    invoke-virtual {p0, p2}, Lxk8$c$a;->c(Z)Lxk8$c$a;

    invoke-virtual {p0, p4}, Lxk8$c$a;->e(Ljava/lang/String;)Lxk8$c$a;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lxk8$c$a;->g(I)Lxk8$c$a;

    :cond_0
    invoke-virtual {p0}, Lxk8$c$a;->a()Lxk8$c;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    return-object p0
.end method

.method public h0(ZLjava/lang/String;)Ljava/util/List;
    .locals 6

    new-instance p0, Lxk8$u$a;

    invoke-direct {p0}, Lxk8$u$a;-><init>()V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lxk8$u$a;->c(Z)Lxk8$u$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxk8$u$a;->b(Z)Lxk8$u$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$u$a;->a()Lxk8$u;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :goto_2
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/transsion/dbdata/source/data/ktx/AudioFilterKtxKt;->filterAudio$default(Ljava/util/List;ZZZILjava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final i0(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 3

    new-instance p0, Lxk8$m;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iget-object v1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iget-object v2, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, p1}, Lxk8$m;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->r(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/AudioItem;

    return-object p0
.end method

.method public j()Z
    .locals 2

    new-instance p0, Ld82$f;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ld82$f;-><init>(Ljava/util/List;Z)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object v0, Lhq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->c(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public j0(ZLcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 0

    const-string p0, "item"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    invoke-static {p0}, Lcom/alibaba/android/arouter/utils/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p0, Lwe6;->a:Lwe6$a;

    invoke-virtual {p0}, Lwe6$a;->a()Lwe6;

    move-result-object p0

    iget-object p1, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string p2, "data"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lwe6;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public k(ILjava/lang/String;)I
    .locals 0

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$a;

    invoke-direct {p0, p1, p2}, Ld82$a;-><init>(ILjava/lang/String;)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public k0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lhq6;->i0(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l(Ljava/util/List;)Z
    .locals 1

    const-string p0, "items"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$f;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ld82$f;-><init>(Ljava/util/List;Z)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->c(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public l0(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lge6;->a:Lge6;

    invoke-virtual {p0, p1}, Lge6;->e(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public m(ILjava/lang/String;)Z
    .locals 2

    const-string p0, "path"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$c;

    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Ld82$c;-><init>(JLjava/lang/String;)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m0(Lcom/transsion/dbdata/beans/media/MediaItem;)Z
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lwe6;->a:Lwe6$a;

    invoke-virtual {p0}, Lwe6$a;->a()Lwe6;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lwe6;->k(Lcom/transsion/dbdata/beans/media/MediaItem;Z)Z

    move-result p0

    return p0
.end method

.method public n(Lcom/transsion/dbdata/beans/media/AudioItem;)Z
    .locals 3

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$e;

    iget v0, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    int-to-long v0, v0

    iget-object p1, p1, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    const-string v2, "data"

    invoke-static {p1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Ld82$e;-><init>(JLjava/lang/String;Z)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, v0, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public o(J)I
    .locals 1

    new-instance p0, Ld82$g;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ld82$g;-><init>(JZ)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public p(ILcom/transsion/dbdata/beans/media/AudioItem;Z)I
    .locals 1

    const-string p0, "audioItem"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$h;

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Ld82$h;-><init>(IIZZ)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public p0()Landroidx/lifecycle/LiveData;
    .locals 3

    new-instance p0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {p0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    new-instance v0, Lrl8$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrl8$d;-><init>(Z)V

    const-class v1, Lqe6;

    invoke-static {v0, v1}, Lzj7;->c(Lrl8;Ljava/lang/Class;)Lsl8;

    move-result-object v0

    sget-object v1, Lhq6;->b:Lwe6;

    sget-object v2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v1, v2, v0}, Lwe6;->q(Lcom/transsion/dbdata/source/DataSourceScope;Lsl8;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lgq6;

    invoke-direct {v1, p0}, Lgq6;-><init>(Landroidx/lifecycle/MediatorLiveData;)V

    new-instance v2, Lhq6$a;

    invoke-direct {v2, v1}, Lhq6$a;-><init>(Le74;)V

    invoke-virtual {p0, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-object p0
.end method

.method public q(ILjava/util/List;Z)I
    .locals 1

    const-string p0, "mediaIds"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$i;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Ld82$i;-><init>(ILjava/util/List;ZZ)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->c(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public r(Lcom/transsion/dbdata/beans/media/AudioItem;IIZ)I
    .locals 0

    const-string p0, "audioItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$h;

    const/4 p1, 0x0

    const/4 p4, 0x1

    invoke-direct {p0, p2, p3, p1, p4}, Ld82$h;-><init>(IIZZ)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    move-result p0

    return p0
.end method

.method public r0()Ljava/util/List;
    .locals 2

    sget-boolean p0, Lpp3;->y:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object p0

    const-string v0, "music_video"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mmkv/MMKV;->e(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance p0, Lxk8$c$a;

    invoke-direct {p0}, Lxk8$c$a;-><init>()V

    invoke-virtual {p0, v1}, Lxk8$c$a;->c(Z)Lxk8$c$a;

    move-result-object p0

    const/16 v0, 0x205

    invoke-virtual {p0, v0}, Lxk8$c$a;->f(I)Lxk8$c$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$c$a;->a()Lxk8$c;

    move-result-object p0

    const-class v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, v0}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object v0, Lwe6;->a:Lwe6$a;

    invoke-virtual {v0}, Lwe6$a;->a()Lwe6;

    move-result-object v0

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_2

    :cond_1
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public s(Lcom/transsion/dbdata/beans/media/MediaItem;Le74;)V
    .locals 1

    const-string p0, "item"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "delete"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ld82$k;-><init>(Lcom/transsion/dbdata/beans/media/MediaItem;ZLe74;)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    return-void
.end method

.method public s0(ZLcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 7

    const-string v0, "item"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lhq6;->Y()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-gtz p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance p0, Lb15$f;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lb15$f;-><init>(JLcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    goto :goto_0

    :cond_1
    new-instance p0, Ld82$h;

    long-to-int p1, v2

    iget p2, p2, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ld82$h;-><init>(IIZZ)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    :goto_0
    return-void
.end method

.method public t(Ljava/util/List;Le74;)V
    .locals 1

    const-string p0, "items"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "delete"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ld82$l;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ld82$l;-><init>(Ljava/util/List;ZLe74;)V

    invoke-static {p0}, Lzj7;->a(Ld82;)Lg82;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->d(Lcom/transsion/dbdata/source/DataSourceScope;Lg82;)I

    return-void
.end method

.method public t0(Ljava/lang/String;Z)J
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lb15$e;

    invoke-direct {p0, p1, p2}, Lb15$e;-><init>(Ljava/lang/String;Z)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public final u(Lxl8;Ljava/lang/String;)Ljava/util/List;
    .locals 2

    sget-object v0, Lhq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p1}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p2, p1}, Lhq6;->n0(Ljava/lang/String;Ljava/util/List;)V

    if-nez p1, :cond_1

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public u0(Ljava/lang/String;JLcom/transsion/dbdata/beans/media/AudioItem;)I
    .locals 6

    const-string p0, "playlistName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaItem"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lb15$f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lb15$f;-><init>(JLcom/transsion/dbdata/beans/media/MediaItem;ZZ)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public final v(Lxl8;Ljava/lang/String;)Lkotlin/Pair;
    .locals 2

    sget-object v0, Lhq6;->b:Lwe6;

    sget-object v1, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {v0, v1, p1}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lhq6;->n0(Ljava/lang/String;Ljava/util/List;)V

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/Pair;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public v0(Ljava/lang/String;JLjava/util/ArrayList;Z)Ljava/util/List;
    .locals 6

    const-string p0, "playListName"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mediaItems"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lb15$g;

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p2

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lb15$g;-><init>(JLjava/util/List;ZZ)V

    invoke-static {p0}, Lzj7;->b(Lb15;)Le15;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->g(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public w0(I)V
    .locals 1

    sget-object p0, Lhq6;->b:Lwe6;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lwe6;->s(IZ)V

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/util/List;
    .locals 6

    const/16 v0, 0x19

    if-eq p4, v0, :cond_11

    const/16 v0, 0x1a

    if-eq p4, v0, :cond_11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p4, :pswitch_data_0

    invoke-virtual {p0, v1}, Lhq6;->B(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    if-eqz p5, :cond_4

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-lez p1, :cond_4

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, v1}, Lhq6;->e0(JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x30

    if-ne p4, p1, :cond_3

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p4, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p4, :cond_1

    invoke-static {p4, p3, v2}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p4

    if-ne p4, v2, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p0, p1

    :cond_3
    :goto_1
    return-object p0

    :cond_4
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, v0, v1}, Lhq6;->h0(ZLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_8

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/16 p1, 0x2f

    if-ne p4, p1, :cond_8

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p4, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p4, :cond_6

    invoke-static {p4, p3, v2}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p4

    if-ne p4, v2, :cond_6

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    move-object p0, p1

    :cond_8
    :goto_3
    return-object p0

    :pswitch_2
    invoke-virtual {p0, v0}, Lhq6;->C(Z)Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p3, :cond_c

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    const/16 p1, 0x2e

    if-ne p4, p1, :cond_c

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p4, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p4, :cond_a

    invoke-static {p4, p3, v2}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p4

    if-ne p4, v2, :cond_a

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    move-object p0, p1

    :cond_c
    :goto_5
    return-object p0

    :pswitch_3
    invoke-virtual {p0, v1}, Lhq6;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p3, :cond_10

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_d

    goto :goto_7

    :cond_d
    const/16 p1, 0x2d

    if-ne p4, p1, :cond_10

    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object p4, p2

    check-cast p4, Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p4, p4, Lcom/transsion/dbdata/beans/media/MediaItem;->displayName:Ljava/lang/String;

    if-eqz p4, :cond_e

    invoke-static {p4, p3, v2}, Lj1a;->V(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p4

    if-ne p4, v2, :cond_e

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    move-object p0, p1

    :cond_10
    :goto_7
    return-object p0

    :cond_11
    :pswitch_4
    new-instance p0, Lxk8$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lxk8$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)V

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lhq6;->b:Lwe6;

    sget-object p2, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    invoke-virtual {p1, p2, p0}, Lwe6;->p(Lcom/transsion/dbdata/source/DataSourceScope;Lxl8;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_13

    :cond_12
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p0

    :cond_13
    return-object p0

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public x0(ILjava/lang/String;I)I
    .locals 2

    sget-object p0, Lhq6;->b:Lwe6;

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

    new-instance v1, Lb15$b;

    invoke-direct {v1, p1, p2, p3}, Lb15$b;-><init>(ILjava/lang/String;I)V

    invoke-static {v1}, Lzj7;->b(Lb15;)Le15;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lwe6;->h(Lcom/transsion/dbdata/source/DataSourceScope;Le15;)I

    move-result p0

    return p0
.end method

.method public y()Ljava/util/List;
    .locals 5

    const/16 v0, 0x104

    const-string v1, "getAlbumFolderList"

    invoke-virtual {p0, v0, v1}, Lhq6;->X(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/dbdata/beans/media/MediaBucket;

    iget-object v2, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->parentName:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    sget-object v3, Lhq6;->a:Lhq6;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lhq6;->M(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/transsion/dbdata/beans/media/MediaBucket;->count:I

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public y0(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    new-instance p0, Lxk8$w$a;

    invoke-direct {p0}, Lxk8$w$a;-><init>()V

    invoke-virtual {p0, p1}, Lxk8$w$a;->c(Ljava/lang/String;)Lxk8$w$a;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lxk8$w$a;->b(Z)Lxk8$w$a;

    move-result-object p0

    invoke-virtual {p0}, Lxk8$w$a;->a()Lxk8$w;

    move-result-object p0

    const-class p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lzj7;->d(Lxk8;Ljava/lang/Class;)Lxl8;

    move-result-object p0

    sget-object p1, Lwe6;->a:Lwe6$a;

    invoke-virtual {p1}, Lwe6$a;->a()Lwe6;

    move-result-object p1

    sget-object v0, Lcom/transsion/dbdata/source/DataSourceScope;->AUDIO:Lcom/transsion/dbdata/source/DataSourceScope;

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

    check-cast v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    new-instance v1, Lcom/transsion/dbdata/beans/SearchBean;

    invoke-direct {v1}, Lcom/transsion/dbdata/beans/SearchBean;-><init>()V

    const/4 v2, 0x3

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

.method public z()Ljava/util/List;
    .locals 4

    invoke-virtual {p0}, Lhq6;->E()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqe6;

    new-instance v2, Lcom/transsion/dbdata/database/AudioAlbum;

    invoke-virtual {v1}, Lqe6;->f()I

    move-result v3

    invoke-virtual {v1}, Lqe6;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/transsion/dbdata/database/AudioAlbum;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public z0(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "mediaPath"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customCoverPath"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/media/AudioItem;-><init>()V

    iput p1, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->id:I

    iput-object p2, v0, Lcom/transsion/dbdata/beans/media/MediaItem;->data:Ljava/lang/String;

    iput-object p3, v0, Lcom/transsion/dbdata/beans/media/AudioItem;->mCustomCoverPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lhq6;->D0(Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    return p0
.end method
