.class public final Lcom/transsion/baselib/db/video/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Lri/b;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lri/b;

    .line 5
    .line 6
    invoke-direct {v0}, Lri/b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/baselib/db/video/q;->c:Lri/b;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/baselib/db/video/q$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/q$a;-><init>(Lcom/transsion/baselib/db/video/q;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/baselib/db/video/q;->b:Landroidx/room/g;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic f(Lcom/transsion/baselib/db/video/q;Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/q;->m(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/baselib/db/video/q;Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/q;->l(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/baselib/db/video/q;Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/baselib/db/video/q;->k(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic i(Lcom/transsion/baselib/db/video/q;)Lri/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/baselib/db/video/q;->c:Lri/b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static j()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private synthetic k(Ly3/b;)Ljava/util/List;
    .locals 6

    .line 1
    const-string v0, "SELECT * FROM ugc_collection_video_group"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :try_start_0
    const-string v0, "collectionId"

    .line 8
    .line 9
    invoke-static {p1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "ugcVideoIds"

    .line 14
    .line 15
    invoke-static {p1, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-interface {p1}, Ly3/e;->C0()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    invoke-interface {p1, v0}, Ly3/e;->isNull(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    invoke-interface {p1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    :goto_1
    invoke-interface {p1, v1}, Ly3/e;->isNull(I)Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_1
    invoke-interface {p1, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    :goto_2
    iget-object v5, p0, Lcom/transsion/baselib/db/video/q;->c:Lri/b;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    new-instance v5, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    .line 61
    .line 62
    invoke-direct {v5, v3, v4}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    invoke-interface {p1}, Ly3/e;->close()V

    .line 72
    .line 73
    .line 74
    return-object v2

    .line 75
    :goto_3
    invoke-interface {p1}, Ly3/e;->close()V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method private synthetic l(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;
    .locals 3

    .line 1
    const-string v0, "SELECT * FROM ugc_collection_video_group WHERE collectionId = ? LIMIT 1"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p2, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    invoke-interface {p2, v0, p1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const-string p1, "collectionId"

    .line 20
    .line 21
    invoke-static {p2, p1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const-string v0, "ugcVideoIds"

    .line 26
    .line 27
    invoke-static {p2, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-interface {p2}, Ly3/e;->C0()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-interface {p2, p1}, Ly3/e;->isNull(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    move-object p1, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {p2, p1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    invoke-interface {p2, v0}, Ly3/e;->isNull(I)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-interface {p2, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_2
    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->c:Lri/b;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Lri/b;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v2, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;

    .line 68
    .line 69
    invoke-direct {v2, p1, v0}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-interface {p2}, Ly3/e;->close()V

    .line 73
    .line 74
    .line 75
    return-object v2

    .line 76
    :goto_3
    invoke-interface {p2}, Ly3/e;->close()V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method private synthetic m(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->b:Landroidx/room/g;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->d(Ly3/b;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$DefaultImpls;->a(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public b(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/video/p;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/p;-><init>(Lcom/transsion/baselib/db/video/q;Lcom/transsion/baselib/db/video/UGCCollectionVideoGroup;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao$DefaultImpls;->b(Lcom/transsion/baselib/db/video/UGCCollectionVideoGroupDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/o;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/o;-><init>(Lcom/transsion/baselib/db/video/q;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, p1, v2, v1, p2}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/q;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/n;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/transsion/baselib/db/video/n;-><init>(Lcom/transsion/baselib/db/video/q;)V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
