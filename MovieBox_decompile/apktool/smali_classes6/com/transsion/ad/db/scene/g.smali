.class public final Lcom/transsion/ad/db/scene/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/ad/db/scene/AdSceneLimitDao;


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
    iput-object p1, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/ad/db/scene/g$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/ad/db/scene/g$a;-><init>(Lcom/transsion/ad/db/scene/g;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/ad/db/scene/g;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/ad/db/scene/g$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/ad/db/scene/g$b;-><init>(Lcom/transsion/ad/db/scene/g;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/ad/db/scene/g;->c:Landroidx/room/e;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic g(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/ad/db/scene/g;->o(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/db/scene/g;->s(Lcom/transsion/ad/db/scene/AdSceneLimit;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/ad/db/scene/g;->r(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/transsion/ad/db/scene/g;->n(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/db/scene/g;->q(Lcom/transsion/ad/db/scene/AdSceneLimit;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Ljava/lang/String;Ly3/b;)Lcom/transsion/ad/db/scene/AdSceneLimit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ad/db/scene/g;->p(Ljava/lang/String;Ly3/b;)Lcom/transsion/ad/db/scene/AdSceneLimit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static m()Ljava/util/List;
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

.method private synthetic n(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$DefaultImpls;->a(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic o(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$DefaultImpls;->b(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic p(Ljava/lang/String;Ly3/b;)Lcom/transsion/ad/db/scene/AdSceneLimit;
    .locals 11

    .line 1
    const-string v0, "SELECT * FROM ad_scene_limit_table WHERE sceneId = ? LIMIT 1"

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
    goto :goto_4

    .line 16
    :cond_0
    invoke-interface {p1, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const-string p0, "sceneId"

    .line 20
    .line 21
    invoke-static {p1, p0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-string v0, "lastDisplayAdDate"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const-string v1, "lastDisplayAdTimestamp"

    .line 32
    .line 33
    invoke-static {p1, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    const-string v2, "displayTimes"

    .line 38
    .line 39
    invoke-static {p1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-interface {p1}, Ly3/e;->C0()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x0

    .line 48
    if-eqz v3, :cond_3

    .line 49
    .line 50
    invoke-interface {p1, p0}, Ly3/e;->isNull(I)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    move-object v6, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    invoke-interface {p1, p0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    move-object v6, p0

    .line 63
    :goto_1
    invoke-interface {p1, v0}, Ly3/e;->isNull(I)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    :goto_2
    move-object v7, v4

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    invoke-interface {p1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    goto :goto_2

    .line 76
    :goto_3
    invoke-interface {p1, v1}, Ly3/e;->getLong(I)J

    .line 77
    .line 78
    .line 79
    move-result-wide v8

    .line 80
    invoke-interface {p1, v2}, Ly3/e;->getLong(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    long-to-int v10, v0

    .line 85
    new-instance v4, Lcom/transsion/ad/db/scene/AdSceneLimit;

    .line 86
    .line 87
    move-object v5, v4

    .line 88
    invoke-direct/range {v5 .. v10}, Lcom/transsion/ad/db/scene/AdSceneLimit;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-interface {p1}, Ly3/e;->close()V

    .line 92
    .line 93
    .line 94
    return-object v4

    .line 95
    :goto_4
    invoke-interface {p1}, Ly3/e;->close()V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method private synthetic q(Lcom/transsion/ad/db/scene/AdSceneLimit;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->b:Landroidx/room/g;

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

.method private synthetic r(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/ad/db/scene/AdSceneLimitDao$DefaultImpls;->c(Lcom/transsion/ad/db/scene/AdSceneLimitDao;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private synthetic s(Lcom/transsion/ad/db/scene/AdSceneLimit;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->c:Landroidx/room/e;

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
    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/ad/db/scene/e;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/ad/db/scene/e;-><init>(Ljava/lang/String;)V

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

.method public b(Ljava/lang/String;Ljava/lang/String;JJILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    move-object v9, p0

    .line 2
    iget-object v10, v9, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    .line 3
    .line 4
    new-instance v11, Lcom/transsion/ad/db/scene/a;

    .line 5
    .line 6
    move-object v0, v11

    .line 7
    move-object v1, p0

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-wide v4, p3

    .line 11
    move-wide/from16 v6, p5

    .line 12
    .line 13
    move/from16 v8, p7

    .line 14
    .line 15
    invoke-direct/range {v0 .. v8}, Lcom/transsion/ad/db/scene/a;-><init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 16
    .line 17
    .line 18
    move-object/from16 v0, p8

    .line 19
    .line 20
    invoke-static {v10, v11, v0}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v7, Lcom/transsion/ad/db/scene/b;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move-object v4, p2

    .line 9
    move-wide v5, p3

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/db/scene/b;-><init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;J)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v7, p5}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/ad/db/scene/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/ad/db/scene/d;-><init>(Lcom/transsion/ad/db/scene/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1, p3}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public e(Lcom/transsion/ad/db/scene/AdSceneLimit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/ad/db/scene/f;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/db/scene/f;-><init>(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;)V

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

.method public f(Lcom/transsion/ad/db/scene/AdSceneLimit;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/db/scene/g;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/ad/db/scene/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/ad/db/scene/c;-><init>(Lcom/transsion/ad/db/scene/g;Lcom/transsion/ad/db/scene/AdSceneLimit;)V

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
