.class public final Lcom/transsion/shorttv/db/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;


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
    iput-object p1, p0, Lcom/transsion/shorttv/db/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/shorttv/db/d$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/shorttv/db/d$a;-><init>(Lcom/transsion/shorttv/db/d;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/shorttv/db/d;->b:Landroidx/room/g;

    .line 12
    .line 13
    new-instance p1, Lcom/transsion/shorttv/db/d$b;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/transsion/shorttv/db/d$b;-><init>(Lcom/transsion/shorttv/db/d;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/transsion/shorttv/db/d;->c:Landroidx/room/e;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic e(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/db/d;->k(Lcom/transsion/shorttv/db/e;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Ly3/b;)Lcom/transsion/shorttv/db/e;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/db/d;->j(Ljava/lang/String;Ly3/b;)Lcom/transsion/shorttv/db/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/shorttv/db/d;->i(Lcom/transsion/shorttv/db/e;Ly3/b;)Lkotlin/Unit;

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

.method private synthetic i(Lcom/transsion/shorttv/db/e;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->b:Landroidx/room/g;

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

.method private static synthetic j(Ljava/lang/String;Ly3/b;)Lcom/transsion/shorttv/db/e;
    .locals 3

    .line 1
    const-string v0, "SELECT * FROM short_tv_ad_unlock_state WHERE subjectId=?"

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
    goto :goto_3

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
    const-string v0, "unlockedEps"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-interface {p1}, Ly3/e;->C0()Z

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
    invoke-interface {p1, p0}, Ly3/e;->isNull(I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    move-object p0, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {p1, p0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_1
    invoke-interface {p1, v0}, Ly3/e;->isNull(I)Z

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
    invoke-interface {p1, v0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_2
    new-instance v0, Lcom/transsion/shorttv/db/e;

    .line 62
    .line 63
    invoke-direct {v0, p0, v2}, Lcom/transsion/shorttv/db/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    move-object v2, v0

    .line 67
    :cond_3
    invoke-interface {p1}, Ly3/e;->close()V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :goto_3
    invoke-interface {p1}, Ly3/e;->close()V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method private synthetic k(Lcom/transsion/shorttv/db/e;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->c:Landroidx/room/e;

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
    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/shorttv/db/a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/transsion/shorttv/db/a;-><init>(Ljava/lang/String;)V

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

.method public b(Lcom/transsion/shorttv/db/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/shorttv/db/ShortTvAdUnlockDao$DefaultImpls;->a(Lcom/transsion/shorttv/db/ShortTvAdUnlockDao;Lcom/transsion/shorttv/db/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c(Lcom/transsion/shorttv/db/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/shorttv/db/b;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/shorttv/db/b;-><init>(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;)V

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

.method public d(Lcom/transsion/shorttv/db/e;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/shorttv/db/d;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/shorttv/db/c;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/shorttv/db/c;-><init>(Lcom/transsion/shorttv/db/d;Lcom/transsion/shorttv/db/e;)V

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
