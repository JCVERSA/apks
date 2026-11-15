.class public final Lvi/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lvi/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvi/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lvi/d$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lvi/d$a;-><init>(Lvi/d;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lvi/d;->b:Landroidx/room/g;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic c(Lvi/d;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvi/d;->f(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lvi/d;->g(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static e()Ljava/util/List;
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

.method private synthetic f(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lvi/d;->b:Landroidx/room/g;

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

.method private static synthetic g(Ljava/lang/String;Ly3/b;)Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "\n        SELECT * FROM home_preferences_interval_time\n        WHERE id = ?\n        LIMIT 1\n    "

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v1, v2}, Ly3/e;->g(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-interface {v1, v2, v0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    const-string v0, "id"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const-string v2, "showTime"

    .line 30
    .line 31
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, "closeTime"

    .line 36
    .line 37
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const-string v4, "chooseTime"

    .line 42
    .line 43
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const-string v5, "showIntervalSeconds"

    .line 48
    .line 49
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    const-string v6, "closeIntervalSeconds"

    .line 54
    .line 55
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const-string v7, "chooseIntervalSeconds"

    .line 60
    .line 61
    invoke-static {v1, v7}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    const/4 v9, 0x0

    .line 70
    if-eqz v8, :cond_2

    .line 71
    .line 72
    invoke-interface {v1, v0}, Ly3/e;->isNull(I)Z

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    if-eqz v8, :cond_1

    .line 77
    .line 78
    :goto_1
    move-object v11, v9

    .line 79
    goto :goto_2

    .line 80
    :cond_1
    invoke-interface {v1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    goto :goto_1

    .line 85
    :goto_2
    invoke-interface {v1, v2}, Ly3/e;->getLong(I)J

    .line 86
    .line 87
    .line 88
    move-result-wide v12

    .line 89
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 90
    .line 91
    .line 92
    move-result-wide v14

    .line 93
    invoke-interface {v1, v4}, Ly3/e;->getLong(I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v16

    .line 97
    invoke-interface {v1, v5}, Ly3/e;->getLong(I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v18

    .line 101
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v20

    .line 105
    invoke-interface {v1, v7}, Ly3/e;->getLong(I)J

    .line 106
    .line 107
    .line 108
    move-result-wide v22

    .line 109
    new-instance v9, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;

    .line 110
    .line 111
    move-object v10, v9

    .line 112
    invoke-direct/range {v10 .. v23}, Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;-><init>(Ljava/lang/String;JJJJJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-interface {v1}, Ly3/e;->close()V

    .line 116
    .line 117
    .line 118
    return-object v9

    .line 119
    :goto_3
    invoke-interface {v1}, Ly3/e;->close()V

    .line 120
    .line 121
    .line 122
    throw v0
.end method


# virtual methods
.method public a(Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lvi/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lvi/b;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lvi/b;-><init>(Lvi/d;Lcom/transsion/baselib/db/home/HomePreferencesIntervalTimeDbBean;)V

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

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lvi/d;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lvi/c;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lvi/c;-><init>(Ljava/lang/String;)V

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
