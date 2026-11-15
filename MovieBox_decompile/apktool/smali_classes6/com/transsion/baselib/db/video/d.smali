.class public final Lcom/transsion/baselib/db/video/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;


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
    iput-object p1, p0, Lcom/transsion/baselib/db/video/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/baselib/db/video/d$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/d$a;-><init>(Lcom/transsion/baselib/db/video/d;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/baselib/db/video/d;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/baselib/db/video/d$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/video/d$b;-><init>(Lcom/transsion/baselib/db/video/d;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/baselib/db/video/d;->c:Landroidx/room/e;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic e(Lcom/transsion/baselib/db/video/d;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/d;->i(Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/baselib/db/video/d;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/video/d;->k(Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/ShortTvFavoriteState;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/baselib/db/video/d;->j(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/ShortTvFavoriteState;

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

.method private synthetic i(Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/d;->b:Landroidx/room/g;

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

.method private static synthetic j(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/video/ShortTvFavoriteState;
    .locals 7

    .line 1
    const-string v0, "SELECT * FROM ShortTvFavoriteState WHERE subjectId=?"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p1, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_5

    .line 16
    :cond_0
    invoke-interface {p1, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const-string p0, "subjectId"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-string v1, "favoriteNum"

    .line 26
    .line 27
    invoke-static {p1, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const-string v2, "hasFavorite"

    .line 32
    .line 33
    invoke-static {p1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    const-string v3, "favoriteTime"

    .line 38
    .line 39
    invoke-static {p1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-interface {p1}, Ly3/e;->C0()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    if-eqz v4, :cond_5

    .line 49
    .line 50
    new-instance v4, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;

    .line 51
    .line 52
    invoke-direct {v4}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, p0}, Ly3/e;->isNull(I)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    .line 61
    move-object p0, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-interface {p1, p0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    :goto_1
    invoke-virtual {v4, p0}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setSubjectId(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v1}, Ly3/e;->isNull(I)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 75
    .line 76
    move-object p0, v5

    .line 77
    goto :goto_2

    .line 78
    :cond_2
    invoke-interface {p1, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    :goto_2
    invoke-virtual {v4, p0}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setFavoriteNum(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v2}, Ly3/e;->getLong(I)J

    .line 86
    .line 87
    .line 88
    move-result-wide v1

    .line 89
    long-to-int p0, v1

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    const/4 v0, 0x0

    .line 94
    :goto_3
    invoke-virtual {v4, v0}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setHasFavorite(Z)V

    .line 95
    .line 96
    .line 97
    invoke-interface {p1, v3}, Ly3/e;->isNull(I)Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_4

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_4
    invoke-interface {p1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    :goto_4
    invoke-virtual {v4, v5}, Lcom/transsion/baselib/db/video/ShortTvFavoriteState;->setFavoriteTime(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    .line 111
    move-object v5, v4

    .line 112
    :cond_5
    invoke-interface {p1}, Ly3/e;->close()V

    .line 113
    .line 114
    .line 115
    return-object v5

    .line 116
    :goto_5
    invoke-interface {p1}, Ly3/e;->close()V

    .line 117
    .line 118
    .line 119
    throw p0
.end method

.method private synthetic k(Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/d;->c:Landroidx/room/e;

    .line 2
    .line 3
    invoke-virtual {v0, p2, p1}, Landroidx/room/e;->c(Ly3/b;Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/video/d;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/video/b;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/baselib/db/video/b;-><init>(Ljava/lang/String;)V

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

.method public b(Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/video/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/video/a;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/a;-><init>(Lcom/transsion/baselib/db/video/d;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;)V

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

.method public c(Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/video/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/video/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/video/c;-><init>(Lcom/transsion/baselib/db/video/d;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;)V

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

.method public d(Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao$DefaultImpls;->a(Lcom/transsion/baselib/db/video/IShortTvFavoriteStateDao;Lcom/transsion/baselib/db/video/ShortTvFavoriteState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
