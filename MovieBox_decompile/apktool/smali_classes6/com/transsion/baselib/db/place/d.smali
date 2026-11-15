.class public final Lcom/transsion/baselib/db/place/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/db/place/PlaceDao;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/baselib/db/place/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/baselib/db/place/d$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/place/d$a;-><init>(Lcom/transsion/baselib/db/place/d;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/baselib/db/place/d;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/baselib/db/place/d$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/place/d$b;-><init>(Lcom/transsion/baselib/db/place/d;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/baselib/db/place/d;->c:Landroidx/room/e;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic e(Lcom/transsion/baselib/db/place/d;Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/place/d;->k(Ljava/util/List;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/db/place/d;->i(Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/baselib/db/place/d;->j(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static h()Ljava/util/List;
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

.method private static synthetic i(Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM place_list"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    invoke-interface {p0}, Ly3/e;->C0()Z

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    invoke-interface {p0}, Ly3/e;->close()V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-interface {p0}, Ly3/e;->close()V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method private static synthetic j(Ly3/b;)Ljava/util/List;
    .locals 15

    .line 1
    const-string v0, "SELECT * FROM place_list"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v0, "latitude"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "longitude"

    .line 14
    .line 15
    invoke-static {p0, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "name"

    .line 20
    .line 21
    invoke-static {p0, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "address"

    .line 26
    .line 27
    invoke-static {p0, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "distance"

    .line 32
    .line 33
    invoke-static {p0, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-interface {p0}, Ly3/e;->C0()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    invoke-interface {p0, v0}, Ly3/e;->getDouble(I)D

    .line 49
    .line 50
    .line 51
    move-result-wide v8

    .line 52
    invoke-interface {p0, v1}, Ly3/e;->getDouble(I)D

    .line 53
    .line 54
    .line 55
    move-result-wide v10

    .line 56
    invoke-interface {p0, v2}, Ly3/e;->isNull(I)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    const/4 v7, 0x0

    .line 61
    if-eqz v6, :cond_0

    .line 62
    .line 63
    move-object v12, v7

    .line 64
    goto :goto_1

    .line 65
    :cond_0
    invoke-interface {p0, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    move-object v12, v6

    .line 70
    :goto_1
    invoke-interface {p0, v3}, Ly3/e;->isNull(I)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_1

    .line 75
    .line 76
    move-object v13, v7

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    invoke-interface {p0, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    move-object v13, v6

    .line 83
    :goto_2
    invoke-interface {p0, v4}, Ly3/e;->isNull(I)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_2

    .line 88
    .line 89
    move-object v14, v7

    .line 90
    goto :goto_3

    .line 91
    :cond_2
    invoke-interface {p0, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    move-object v14, v6

    .line 96
    :goto_3
    new-instance v6, Lcom/transsion/baselib/db/place/PlaceDBBean;

    .line 97
    .line 98
    move-object v7, v6

    .line 99
    invoke-direct/range {v7 .. v14}, Lcom/transsion/baselib/db/place/PlaceDBBean;-><init>(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    goto :goto_4

    .line 108
    :cond_3
    invoke-interface {p0}, Ly3/e;->close()V

    .line 109
    .line 110
    .line 111
    return-object v5

    .line 112
    :goto_4
    invoke-interface {p0}, Ly3/e;->close()V

    .line 113
    .line 114
    .line 115
    throw v0
.end method

.method private synthetic k(Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/place/d;->b:Landroidx/room/g;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/g;->c(Ly3/b;Ljava/lang/Iterable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/place/d;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/place/a;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/baselib/db/place/a;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {v0, v2, v3, v1, p1}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/place/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/place/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/place/c;-><init>(Lcom/transsion/baselib/db/place/d;Ljava/util/List;)V

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

.method public c(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/place/PlaceDao$DefaultImpls;->a(Lcom/transsion/baselib/db/place/PlaceDao;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/place/d;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/place/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/baselib/db/place/b;-><init>()V

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
