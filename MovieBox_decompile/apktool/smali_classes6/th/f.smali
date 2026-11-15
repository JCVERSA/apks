.class public final Lth/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lth/a;


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
    iput-object p1, p0, Lth/f;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lth/f$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lth/f$a;-><init>(Lth/f;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lth/f;->b:Landroidx/room/g;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic e(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lth/f;->l(Ljava/lang/String;Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lth/f;Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lth/f;->m(Ljava/util/List;Ly3/b;)Lkotlin/Unit;

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
    invoke-static {p0}, Lth/f;->j(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ly3/b;)Lcom/transsion/ad/db/mcc/LocalMcc;
    .locals 0

    .line 1
    invoke-static {p0}, Lth/f;->k(Ly3/b;)Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static i()Ljava/util/List;
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

.method private static synthetic j(Ly3/b;)Ljava/util/List;
    .locals 14

    .line 1
    const-string v0, "SELECT * FROM local_mcc"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v0, "id"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "Country"

    .line 14
    .line 15
    invoke-static {p0, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "Mcc"

    .line 20
    .line 21
    invoke-static {p0, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "Iso"

    .line 26
    .line 27
    invoke-static {p0, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "CountryCode"

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
    if-eqz v6, :cond_4

    .line 47
    .line 48
    invoke-interface {p0, v0}, Ly3/e;->getLong(I)J

    .line 49
    .line 50
    .line 51
    move-result-wide v6

    .line 52
    long-to-int v9, v6

    .line 53
    invoke-interface {p0, v1}, Ly3/e;->isNull(I)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    const/4 v7, 0x0

    .line 58
    if-eqz v6, :cond_0

    .line 59
    .line 60
    move-object v10, v7

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    invoke-interface {p0, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    move-object v10, v6

    .line 67
    :goto_1
    invoke-interface {p0, v2}, Ly3/e;->isNull(I)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_1

    .line 72
    .line 73
    move-object v11, v7

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    invoke-interface {p0, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    move-object v11, v6

    .line 80
    :goto_2
    invoke-interface {p0, v3}, Ly3/e;->isNull(I)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_2

    .line 85
    .line 86
    move-object v12, v7

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    invoke-interface {p0, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    move-object v12, v6

    .line 93
    :goto_3
    invoke-interface {p0, v4}, Ly3/e;->isNull(I)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_3

    .line 98
    .line 99
    move-object v13, v7

    .line 100
    goto :goto_4

    .line 101
    :cond_3
    invoke-interface {p0, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    move-object v13, v6

    .line 106
    :goto_4
    new-instance v6, Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 107
    .line 108
    move-object v8, v6

    .line 109
    invoke-direct/range {v8 .. v13}, Lcom/transsion/ad/db/mcc/LocalMcc;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    .line 117
    goto :goto_5

    .line 118
    :cond_4
    invoke-interface {p0}, Ly3/e;->close()V

    .line 119
    .line 120
    .line 121
    return-object v5

    .line 122
    :goto_5
    invoke-interface {p0}, Ly3/e;->close()V

    .line 123
    .line 124
    .line 125
    throw v0
.end method

.method private static synthetic k(Ly3/b;)Lcom/transsion/ad/db/mcc/LocalMcc;
    .locals 15

    .line 1
    const-string v0, "SELECT * FROM local_mcc LIMIT 1"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :try_start_0
    const-string v0, "id"

    .line 8
    .line 9
    invoke-static {p0, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "Country"

    .line 14
    .line 15
    invoke-static {p0, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "Mcc"

    .line 20
    .line 21
    invoke-static {p0, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "Iso"

    .line 26
    .line 27
    invoke-static {p0, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "CountryCode"

    .line 32
    .line 33
    invoke-static {p0, v4}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-interface {p0}, Ly3/e;->C0()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v6, 0x0

    .line 42
    if-eqz v5, :cond_4

    .line 43
    .line 44
    invoke-interface {p0, v0}, Ly3/e;->getLong(I)J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    long-to-int v10, v7

    .line 49
    invoke-interface {p0, v1}, Ly3/e;->isNull(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    move-object v11, v6

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-interface {p0, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    move-object v11, v0

    .line 62
    :goto_0
    invoke-interface {p0, v2}, Ly3/e;->isNull(I)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    move-object v12, v6

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    invoke-interface {p0, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    move-object v12, v0

    .line 75
    :goto_1
    invoke-interface {p0, v3}, Ly3/e;->isNull(I)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    move-object v13, v6

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-interface {p0, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v13, v0

    .line 88
    :goto_2
    invoke-interface {p0, v4}, Ly3/e;->isNull(I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    :goto_3
    move-object v14, v6

    .line 95
    goto :goto_4

    .line 96
    :cond_3
    invoke-interface {p0, v4}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    goto :goto_3

    .line 101
    :goto_4
    new-instance v6, Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 102
    .line 103
    move-object v9, v6

    .line 104
    invoke-direct/range {v9 .. v14}, Lcom/transsion/ad/db/mcc/LocalMcc;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    goto :goto_6

    .line 110
    :cond_4
    :goto_5
    invoke-interface {p0}, Ly3/e;->close()V

    .line 111
    .line 112
    .line 113
    return-object v6

    .line 114
    :goto_6
    invoke-interface {p0}, Ly3/e;->close()V

    .line 115
    .line 116
    .line 117
    throw v0
.end method

.method private static synthetic l(Ljava/lang/String;Ly3/b;)Ljava/util/List;
    .locals 13

    .line 1
    const-string v0, "SELECT * FROM local_mcc WHERE Iso = ?"

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
    goto/16 :goto_6

    .line 16
    .line 17
    :cond_0
    invoke-interface {p1, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const-string p0, "id"

    .line 21
    .line 22
    invoke-static {p1, p0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    const-string v0, "Country"

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-string v1, "Mcc"

    .line 33
    .line 34
    invoke-static {p1, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const-string v2, "Iso"

    .line 39
    .line 40
    invoke-static {p1, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    const-string v3, "CountryCode"

    .line 45
    .line 46
    invoke-static {p1, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-interface {p1}, Ly3/e;->C0()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_5

    .line 60
    .line 61
    invoke-interface {p1, p0}, Ly3/e;->getLong(I)J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    long-to-int v8, v5

    .line 66
    invoke-interface {p1, v0}, Ly3/e;->isNull(I)Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    const/4 v6, 0x0

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    move-object v9, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    invoke-interface {p1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    move-object v9, v5

    .line 80
    :goto_2
    invoke-interface {p1, v1}, Ly3/e;->isNull(I)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    move-object v10, v6

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    invoke-interface {p1, v1}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    move-object v10, v5

    .line 93
    :goto_3
    invoke-interface {p1, v2}, Ly3/e;->isNull(I)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-eqz v5, :cond_3

    .line 98
    .line 99
    move-object v11, v6

    .line 100
    goto :goto_4

    .line 101
    :cond_3
    invoke-interface {p1, v2}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    move-object v11, v5

    .line 106
    :goto_4
    invoke-interface {p1, v3}, Ly3/e;->isNull(I)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_4

    .line 111
    .line 112
    move-object v12, v6

    .line 113
    goto :goto_5

    .line 114
    :cond_4
    invoke-interface {p1, v3}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    move-object v12, v5

    .line 119
    :goto_5
    new-instance v5, Lcom/transsion/ad/db/mcc/LocalMcc;

    .line 120
    .line 121
    move-object v7, v5

    .line 122
    invoke-direct/range {v7 .. v12}, Lcom/transsion/ad/db/mcc/LocalMcc;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    invoke-interface {p1}, Ly3/e;->close()V

    .line 130
    .line 131
    .line 132
    return-object v4

    .line 133
    :goto_6
    invoke-interface {p1}, Ly3/e;->close()V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method private synthetic m(Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lth/f;->b:Landroidx/room/g;

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
.method public a(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lth/f;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lth/c;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lth/c;-><init>(Ljava/lang/String;)V

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

.method public b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lth/f;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lth/e;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lth/e;-><init>(Lth/f;Ljava/util/List;)V

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

.method public c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lth/f;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lth/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lth/b;-><init>()V

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

.method public d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lth/f;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lth/d;

    .line 4
    .line 5
    invoke-direct {v1}, Lth/d;-><init>()V

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
