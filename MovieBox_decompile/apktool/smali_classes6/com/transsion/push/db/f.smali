.class public final Lcom/transsion/push/db/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/push/db/a;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;

.field private final c:Landroidx/room/e;

.field private final d:Landroidx/room/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/push/db/f;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/push/db/f$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/push/db/f$a;-><init>(Lcom/transsion/push/db/f;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/push/db/f;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/push/db/f$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/push/db/f$b;-><init>(Lcom/transsion/push/db/f;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/push/db/f;->c:Landroidx/room/e;

    .line 19
    .line 20
    new-instance p1, Lcom/transsion/push/db/f$c;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/transsion/push/db/f$c;-><init>(Lcom/transsion/push/db/f;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/push/db/f;->d:Landroidx/room/e;

    .line 26
    .line 27
    return-void
.end method

.method public static synthetic e(Ly3/b;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/push/db/f;->l(Ly3/b;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/push/db/f;Lcom/transsion/push/bean/PermanentItemBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/db/f;->k(Lcom/transsion/push/bean/PermanentItemBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/push/db/f;Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/push/db/f;->m(Ljava/util/List;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/push/db/f;->j(Ly3/b;)Lkotlin/Unit;

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

.method private static synthetic j(Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "DELETE FROM PERMANENT_ITEM"

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

.method private synthetic k(Lcom/transsion/push/bean/PermanentItemBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/db/f;->c:Landroidx/room/e;

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

.method private static synthetic l(Ly3/b;)Ljava/util/List;
    .locals 14

    .line 1
    const-string v0, "SELECT * FROM permanent_item"

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
    const-string v1, "deeplink"

    .line 14
    .line 15
    invoke-static {p0, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "subject_id"

    .line 20
    .line 21
    invoke-static {p0, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const-string v3, "image"

    .line 26
    .line 27
    invoke-static {p0, v3}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const-string v4, "title"

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
    new-instance v6, Lcom/transsion/push/bean/PermanentItemBean;

    .line 107
    .line 108
    move-object v8, v6

    .line 109
    invoke-direct/range {v8 .. v13}, Lcom/transsion/push/bean/PermanentItemBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

.method private synthetic m(Ljava/util/List;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/push/db/f;->b:Landroidx/room/g;

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
    iget-object v0, p0, Lcom/transsion/push/db/f;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/push/db/c;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/push/db/c;-><init>()V

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
    iget-object v0, p0, Lcom/transsion/push/db/f;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/push/db/e;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/push/db/e;-><init>(Lcom/transsion/push/db/f;Ljava/util/List;)V

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
    iget-object v0, p0, Lcom/transsion/push/db/f;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/push/db/b;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/transsion/push/db/b;-><init>()V

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

.method public d(Lcom/transsion/push/bean/PermanentItemBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/push/db/f;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/push/db/d;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/push/db/d;-><init>(Lcom/transsion/push/db/f;Lcom/transsion/push/bean/PermanentItemBean;)V

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
