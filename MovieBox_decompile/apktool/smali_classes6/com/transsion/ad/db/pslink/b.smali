.class public final Lcom/transsion/ad/db/pslink/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/ad/db/pslink/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Lcom/transsion/ad/db/pslink/AttributionPoint$b;

.field private final d:Landroidx/room/e;

.field private final e:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/ad/db/pslink/AttributionPoint$b;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/ad/db/pslink/AttributionPoint$b;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/ad/db/pslink/b;->c:Lcom/transsion/ad/db/pslink/AttributionPoint$b;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/b;->a:Landroidx/room/RoomDatabase;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/ad/db/pslink/b$a;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/ad/db/pslink/b$a;-><init>(Lcom/transsion/ad/db/pslink/b;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/b;->b:Landroidx/room/g;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/ad/db/pslink/b$b;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/transsion/ad/db/pslink/b$b;-><init>(Lcom/transsion/ad/db/pslink/b;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/b;->d:Landroidx/room/e;

    .line 26
    .line 27
    new-instance p1, Lcom/transsion/ad/db/pslink/b$c;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Lcom/transsion/ad/db/pslink/b$c;-><init>(Lcom/transsion/ad/db/pslink/b;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/transsion/ad/db/pslink/b;->e:Landroidx/room/e;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic f(Lcom/transsion/ad/db/pslink/b;Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/db/pslink/b;->o(Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/ad/db/pslink/b;JJLy3/b;)Lcom/transsion/ad/db/pslink/AttributionPoint;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/ad/db/pslink/b;->n(JJLy3/b;)Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/ad/db/pslink/b;Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/db/pslink/b;->m(Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/ad/db/pslink/b;Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/ad/db/pslink/b;->q(Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/transsion/ad/db/pslink/b;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Ly3/b;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/ad/db/pslink/b;->p(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Ly3/b;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic k(Lcom/transsion/ad/db/pslink/b;)Lcom/transsion/ad/db/pslink/AttributionPoint$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/ad/db/pslink/b;->c:Lcom/transsion/ad/db/pslink/AttributionPoint$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static l()Ljava/util/List;
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

.method private synthetic m(Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b;->d:Landroidx/room/e;

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

.method private synthetic n(JJLy3/b;)Lcom/transsion/ad/db/pslink/AttributionPoint;
    .locals 19

    .line 1
    const-string v0, "SELECT * FROM attribution_points WHERE ? - updateTimestamp >= ? ORDER BY CASE type WHEN \'CLICK\' THEN 0 ELSE 1 END, failCount ASC, updateTimestamp DESC LIMIT 1"

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    invoke-interface {v1, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v0, 0x1

    .line 10
    move-wide/from16 v2, p1

    .line 11
    .line 12
    :try_start_0
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    move-wide/from16 v2, p3

    .line 17
    .line 18
    invoke-interface {v1, v0, v2, v3}, Ly3/e;->c(IJ)V

    .line 19
    .line 20
    .line 21
    const-string v0, "id"

    .line 22
    .line 23
    invoke-static {v1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const-string v2, "psId"

    .line 28
    .line 29
    invoke-static {v1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const-string v3, "failCount"

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const-string v4, "reportUrl"

    .line 40
    .line 41
    invoke-static {v1, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    const-string v5, "type"

    .line 46
    .line 47
    invoke-static {v1, v5}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const-string v6, "updateTimestamp"

    .line 52
    .line 53
    invoke-static {v1, v6}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    invoke-interface {v1}, Ly3/e;->C0()Z

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    const/4 v8, 0x0

    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    invoke-interface {v1, v0}, Ly3/e;->getLong(I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v9

    .line 68
    long-to-int v12, v9

    .line 69
    invoke-interface {v1, v2}, Ly3/e;->isNull(I)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    move-object v13, v8

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    invoke-interface {v1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    move-object v13, v0

    .line 82
    :goto_0
    invoke-interface {v1, v3}, Ly3/e;->getLong(I)J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    long-to-int v14, v2

    .line 87
    invoke-interface {v1, v4}, Ly3/e;->isNull(I)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    move-object v15, v8

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-interface {v1, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    move-object v15, v0

    .line 100
    :goto_1
    invoke-interface {v1, v5}, Ly3/e;->isNull(I)Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    .line 106
    :goto_2
    move-object/from16 v2, p0

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_2
    invoke-interface {v1, v5}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 113
    goto :goto_2

    .line 114
    :goto_3
    :try_start_1
    iget-object v0, v2, Lcom/transsion/ad/db/pslink/b;->c:Lcom/transsion/ad/db/pslink/AttributionPoint$b;

    .line 115
    .line 116
    invoke-virtual {v0, v8}, Lcom/transsion/ad/db/pslink/AttributionPoint$b;->b(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;

    .line 117
    .line 118
    .line 119
    move-result-object v16

    .line 120
    invoke-interface {v1, v6}, Ly3/e;->getLong(I)J

    .line 121
    .line 122
    .line 123
    move-result-wide v17

    .line 124
    new-instance v8, Lcom/transsion/ad/db/pslink/AttributionPoint;

    .line 125
    .line 126
    move-object v11, v8

    .line 127
    invoke-direct/range {v11 .. v18}, Lcom/transsion/ad/db/pslink/AttributionPoint;-><init>(ILjava/lang/String;ILjava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    goto :goto_4

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto :goto_5

    .line 133
    :catchall_1
    move-exception v0

    .line 134
    move-object/from16 v2, p0

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_3
    move-object/from16 v2, p0

    .line 138
    .line 139
    :goto_4
    invoke-interface {v1}, Ly3/e;->close()V

    .line 140
    .line 141
    .line 142
    return-object v8

    .line 143
    :goto_5
    invoke-interface {v1}, Ly3/e;->close()V

    .line 144
    .line 145
    .line 146
    throw v0
.end method

.method private synthetic o(Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b;->b:Landroidx/room/g;

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

.method private synthetic p(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Ly3/b;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    const-string v0, "SELECT EXISTS(SELECT 1 FROM attribution_points WHERE psId = ? AND type = ? AND reportUrl = ?)"

    .line 2
    .line 3
    invoke-interface {p4, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p4, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_6

    .line 16
    :cond_0
    invoke-interface {p4, v0, p1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p1, p0, Lcom/transsion/ad/db/pslink/b;->c:Lcom/transsion/ad/db/pslink/AttributionPoint$b;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/transsion/ad/db/pslink/AttributionPoint$b;->a(Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p2, 0x2

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    invoke-interface {p4, p2}, Ly3/e;->g(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-interface {p4, p2, p1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :goto_1
    const/4 p1, 0x3

    .line 36
    if-nez p3, :cond_2

    .line 37
    .line 38
    invoke-interface {p4, p1}, Ly3/e;->g(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    invoke-interface {p4, p1, p3}, Ly3/e;->i(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_2
    invoke-interface {p4}, Ly3/e;->C0()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 p2, 0x0

    .line 50
    if-eqz p1, :cond_6

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-interface {p4, p1}, Ly3/e;->isNull(I)Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-eqz p3, :cond_3

    .line 58
    .line 59
    move-object p3, p2

    .line 60
    goto :goto_3

    .line 61
    :cond_3
    invoke-interface {p4, p1}, Ly3/e;->getLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    long-to-int p3, v1

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    :goto_3
    if-nez p3, :cond_4

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_4
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_5

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    move v0, p1

    .line 81
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_6
    :goto_5
    invoke-interface {p4}, Ly3/e;->close()V

    .line 86
    .line 87
    .line 88
    return-object p2

    .line 89
    :goto_6
    invoke-interface {p4}, Ly3/e;->close()V

    .line 90
    .line 91
    .line 92
    throw p1
.end method

.method private synthetic q(Lcom/transsion/ad/db/pslink/AttributionPoint;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b;->e:Landroidx/room/e;

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
.method public a(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lvh/i;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lvh/i;-><init>(Lcom/transsion/ad/db/pslink/b;Lcom/transsion/ad/db/pslink/AttributionPoint;)V

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

.method public b(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lvh/k;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lvh/k;-><init>(Lcom/transsion/ad/db/pslink/b;Lcom/transsion/ad/db/pslink/AttributionPoint;)V

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

.method public c(Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lvh/g;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lvh/g;-><init>(Lcom/transsion/ad/db/pslink/b;Ljava/lang/String;Lcom/transsion/ad/db/pslink/AttributionPoint$AttributionType;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-static {v0, p1, p2, v1, p4}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public d(JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v7, Lvh/j;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-wide v3, p1

    .line 8
    move-wide v5, p3

    .line 9
    invoke-direct/range {v1 .. v6}, Lvh/j;-><init>(Lcom/transsion/ad/db/pslink/b;JJ)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-static {v0, p1, p2, v7, p5}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public e(Lcom/transsion/ad/db/pslink/AttributionPoint;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ad/db/pslink/b;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lvh/h;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lvh/h;-><init>(Lcom/transsion/ad/db/pslink/b;Lcom/transsion/ad/db/pslink/AttributionPoint;)V

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
