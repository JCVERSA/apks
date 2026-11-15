.class public final Lcom/transsion/ad/db/MbAdDatabase$m;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/db/MbAdDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/db/MbAdDatabase$m;-><init>()V

    return-void
.end method

.method private final a(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;
    .locals 14

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getApplicationContext(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-class v0, Lcom/transsion/ad/db/MbAdDatabase;

    .line 11
    .line 12
    const-string v1, "mb-ad-plans-db"

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Landroidx/room/s;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->k0()Lcom/transsion/ad/db/MbAdDatabase$d;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->l0()Lcom/transsion/ad/db/MbAdDatabase$e;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->m0()Lcom/transsion/ad/db/MbAdDatabase$f;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->n0()Lcom/transsion/ad/db/MbAdDatabase$g;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->o0()Lcom/transsion/ad/db/MbAdDatabase$h;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->p0()Lcom/transsion/ad/db/MbAdDatabase$i;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->q0()Lcom/transsion/ad/db/MbAdDatabase$j;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->r0()Lcom/transsion/ad/db/MbAdDatabase$k;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->s0()Lcom/transsion/ad/db/MbAdDatabase$l;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->h0()Lcom/transsion/ad/db/MbAdDatabase$a;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->i0()Lcom/transsion/ad/db/MbAdDatabase$b;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->j0()Lcom/transsion/ad/db/MbAdDatabase$c;

    .line 63
    .line 64
    .line 65
    move-result-object v11

    .line 66
    const/16 v12, 0xc

    .line 67
    .line 68
    new-array v12, v12, [Lx3/b;

    .line 69
    .line 70
    const/4 v13, 0x0

    .line 71
    aput-object v0, v12, v13

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    aput-object v1, v12, v0

    .line 75
    .line 76
    const/4 v0, 0x2

    .line 77
    aput-object v2, v12, v0

    .line 78
    .line 79
    const/4 v0, 0x3

    .line 80
    aput-object v3, v12, v0

    .line 81
    .line 82
    const/4 v0, 0x4

    .line 83
    aput-object v4, v12, v0

    .line 84
    .line 85
    const/4 v0, 0x5

    .line 86
    aput-object v5, v12, v0

    .line 87
    .line 88
    const/4 v0, 0x6

    .line 89
    aput-object v6, v12, v0

    .line 90
    .line 91
    const/4 v0, 0x7

    .line 92
    aput-object v7, v12, v0

    .line 93
    .line 94
    const/16 v0, 0x8

    .line 95
    .line 96
    aput-object v8, v12, v0

    .line 97
    .line 98
    const/16 v0, 0x9

    .line 99
    .line 100
    aput-object v9, v12, v0

    .line 101
    .line 102
    const/16 v0, 0xa

    .line 103
    .line 104
    aput-object v10, v12, v0

    .line 105
    .line 106
    const/16 v0, 0xb

    .line 107
    .line 108
    aput-object v11, v12, v0

    .line 109
    .line 110
    invoke-virtual {p1, v12}, Landroidx/room/RoomDatabase$a;->b([Lx3/b;)Landroidx/room/RoomDatabase$a;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v0, Lcom/transsion/ad/db/MbAdDatabase$m$a;

    .line 115
    .line 116
    invoke-direct {v0}, Lcom/transsion/ad/db/MbAdDatabase$m$a;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$a;->a(Landroidx/room/RoomDatabase$b;)Landroidx/room/RoomDatabase$a;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$a;->d()Landroidx/room/RoomDatabase;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/transsion/ad/db/MbAdDatabase;

    .line 128
    .line 129
    return-object p1
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->g0()Lcom/transsion/ad/db/MbAdDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    invoke-static {}, Lcom/transsion/ad/db/MbAdDatabase;->g0()Lcom/transsion/ad/db/MbAdDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lcom/transsion/ad/db/MbAdDatabase;->p:Lcom/transsion/ad/db/MbAdDatabase$m;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Lcom/transsion/ad/db/MbAdDatabase$m;->a(Landroid/content/Context;)Lcom/transsion/ad/db/MbAdDatabase;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Lcom/transsion/ad/db/MbAdDatabase;->t0(Lcom/transsion/ad/db/MbAdDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    move-object v0, p1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    .line 33
    goto :goto_2

    .line 34
    :goto_1
    monitor-exit p0

    .line 35
    throw p1

    .line 36
    :cond_1
    :goto_2
    return-object v0
.end method
