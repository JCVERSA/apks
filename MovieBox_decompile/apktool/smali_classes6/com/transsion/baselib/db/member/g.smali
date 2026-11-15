.class public final Lcom/transsion/baselib/db/member/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/baselib/db/member/MemberResolutionDao;


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
    iput-object p1, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance p1, Lcom/transsion/baselib/db/member/g$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/transsion/baselib/db/member/g$a;-><init>(Lcom/transsion/baselib/db/member/g;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/baselib/db/member/g;->b:Landroidx/room/g;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic g(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/baselib/db/member/g;->q(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;IILy3/b;)Lcom/transsion/baselib/db/member/MemberResolutionBean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/baselib/db/member/g;->o(Ljava/lang/String;IILy3/b;)Lcom/transsion/baselib/db/member/MemberResolutionBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lcom/transsion/baselib/db/member/g;Lcom/transsion/baselib/db/member/MemberResolutionBean;Ly3/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/baselib/db/member/g;->n(Lcom/transsion/baselib/db/member/MemberResolutionBean;Ly3/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(ZLjava/lang/String;IILy3/b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/member/g;->r(ZLjava/lang/String;IILy3/b;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/transsion/baselib/db/member/g;->s(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(ZLjava/lang/String;IILy3/b;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/baselib/db/member/g;->p(ZLjava/lang/String;IILy3/b;)Ljava/lang/Integer;

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

.method private synthetic n(Lcom/transsion/baselib/db/member/MemberResolutionBean;Ly3/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->b:Landroidx/room/g;

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

.method private static synthetic o(Ljava/lang/String;IILy3/b;)Lcom/transsion/baselib/db/member/MemberResolutionBean;
    .locals 11

    .line 1
    const-string v0, "\n        SELECT * FROM member_resolution\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n        LIMIT 1\n    "

    .line 2
    .line 3
    invoke-interface {p3, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {p3, v0}, Ly3/e;->g(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto/16 :goto_9

    .line 16
    .line 17
    :cond_0
    invoke-interface {p3, v0, p0}, Ly3/e;->i(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p0, 0x2

    .line 21
    int-to-long v1, p1

    .line 22
    invoke-interface {p3, p0, v1, v2}, Ly3/e;->c(IJ)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x3

    .line 26
    int-to-long p1, p2

    .line 27
    invoke-interface {p3, p0, p1, p2}, Ly3/e;->c(IJ)V

    .line 28
    .line 29
    .line 30
    const-string p0, "subjectId"

    .line 31
    .line 32
    invoke-static {p3, p0}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const-string p1, "ep"

    .line 37
    .line 38
    invoke-static {p3, p1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const-string p2, "se"

    .line 43
    .line 44
    invoke-static {p3, p2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    const-string v1, "vipResolutionTip"

    .line 49
    .line 50
    invoke-static {p3, v1}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const-string v2, "isUnlock"

    .line 55
    .line 56
    invoke-static {p3, v2}, Landroidx/room/util/i;->c(Ly3/e;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-interface {p3}, Ly3/e;->C0()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x0

    .line 65
    if-eqz v3, :cond_8

    .line 66
    .line 67
    invoke-interface {p3, p0}, Ly3/e;->isNull(I)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    move-object v6, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {p3, p0}, Ly3/e;->q0(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    move-object v6, p0

    .line 80
    :goto_1
    invoke-interface {p3, p1}, Ly3/e;->getLong(I)J

    .line 81
    .line 82
    .line 83
    move-result-wide p0

    .line 84
    long-to-int v7, p0

    .line 85
    invoke-interface {p3, p2}, Ly3/e;->getLong(I)J

    .line 86
    .line 87
    .line 88
    move-result-wide p0

    .line 89
    long-to-int v8, p0

    .line 90
    invoke-interface {p3, v1}, Ly3/e;->isNull(I)Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_2

    .line 95
    .line 96
    move-object p0, v4

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    invoke-interface {p3, v1}, Ly3/e;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide p0

    .line 102
    long-to-int p0, p0

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    :goto_2
    const/4 p1, 0x0

    .line 108
    if-nez p0, :cond_3

    .line 109
    .line 110
    move-object v9, v4

    .line 111
    goto :goto_4

    .line 112
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    if-eqz p0, :cond_4

    .line 117
    .line 118
    move p0, v0

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move p0, p1

    .line 121
    :goto_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    move-object v9, p0

    .line 126
    :goto_4
    invoke-interface {p3, v2}, Ly3/e;->isNull(I)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    if-eqz p0, :cond_5

    .line 131
    .line 132
    move-object p0, v4

    .line 133
    goto :goto_5

    .line 134
    :cond_5
    invoke-interface {p3, v2}, Ly3/e;->getLong(I)J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    long-to-int p0, v1

    .line 139
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    :goto_5
    if-nez p0, :cond_6

    .line 144
    .line 145
    :goto_6
    move-object v10, v4

    .line 146
    goto :goto_8

    .line 147
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_7

    .line 152
    .line 153
    goto :goto_7

    .line 154
    :cond_7
    move v0, p1

    .line 155
    :goto_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    goto :goto_6

    .line 160
    :goto_8
    new-instance v4, Lcom/transsion/baselib/db/member/MemberResolutionBean;

    .line 161
    .line 162
    move-object v5, v4

    .line 163
    invoke-direct/range {v5 .. v10}, Lcom/transsion/baselib/db/member/MemberResolutionBean;-><init>(Ljava/lang/String;IILjava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .line 165
    .line 166
    :cond_8
    invoke-interface {p3}, Ly3/e;->close()V

    .line 167
    .line 168
    .line 169
    return-object v4

    .line 170
    :goto_9
    invoke-interface {p3}, Ly3/e;->close()V

    .line 171
    .line 172
    .line 173
    throw p0
.end method

.method private static synthetic p(ZLjava/lang/String;IILy3/b;)Ljava/lang/Integer;
    .locals 4

    .line 1
    const-string v0, "\n        UPDATE member_resolution\n        SET isUnlock = ?\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n    "

    .line 2
    .line 3
    invoke-interface {p4, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    int-to-long v2, p0

    .line 9
    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0}, Ly3/e;->g(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v0, p0, p1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x3

    .line 25
    int-to-long p1, p2

    .line 26
    invoke-interface {v0, p0, p1, p2}, Ly3/e;->c(IJ)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x4

    .line 30
    int-to-long p1, p3

    .line 31
    invoke-interface {v0, p0, p1, p2}, Ly3/e;->c(IJ)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ly3/e;->C0()Z

    .line 35
    .line 36
    .line 37
    invoke-static {p4}, Landroidx/room/util/h;->b(Ly3/b;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-interface {v0}, Ly3/e;->close()V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :goto_1
    invoke-interface {v0}, Ly3/e;->close()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method private synthetic q(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/baselib/db/member/MemberResolutionDao$DefaultImpls;->a(Lcom/transsion/baselib/db/member/MemberResolutionDao;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method private static synthetic r(ZLjava/lang/String;IILy3/b;)Ljava/lang/Integer;
    .locals 4

    .line 1
    const-string v0, "\n        UPDATE member_resolution\n        SET vipResolutionTip = ?\n        WHERE subjectId = ?\n          AND se = ?\n          AND ep = ?\n    "

    .line 2
    .line 3
    invoke-interface {p4, v0}, Ly3/b;->F0(Ljava/lang/String;)Ly3/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    int-to-long v2, p0

    .line 9
    :try_start_0
    invoke-interface {v0, v1, v2, v3}, Ly3/e;->c(IJ)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x2

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0, p0}, Ly3/e;->g(I)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v0, p0, p1}, Ly3/e;->i(ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    const/4 p0, 0x3

    .line 25
    int-to-long p1, p2

    .line 26
    invoke-interface {v0, p0, p1, p2}, Ly3/e;->c(IJ)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x4

    .line 30
    int-to-long p1, p3

    .line 31
    invoke-interface {v0, p0, p1, p2}, Ly3/e;->c(IJ)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0}, Ly3/e;->C0()Z

    .line 35
    .line 36
    .line 37
    invoke-static {p4}, Landroidx/room/util/h;->b(Ly3/b;)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-interface {v0}, Ly3/e;->close()V

    .line 46
    .line 47
    .line 48
    return-object p0

    .line 49
    :goto_1
    invoke-interface {v0}, Ly3/e;->close()V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method private synthetic s(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/transsion/baselib/db/member/MemberResolutionDao$DefaultImpls;->b(Lcom/transsion/baselib/db/member/MemberResolutionDao;Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v7, Lcom/transsion/baselib/db/member/b;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/transsion/baselib/db/member/b;-><init>(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZ)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v7, p5}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public b(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/member/a;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/baselib/db/member/a;-><init>(Ljava/lang/String;II)V

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

.method public c(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/member/f;

    .line 4
    .line 5
    invoke-direct {v1, p4, p1, p2, p3}, Lcom/transsion/baselib/db/member/f;-><init>(ZLjava/lang/String;II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-static {v0, p1, p2, v1, p5}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public d(Lcom/transsion/baselib/db/member/MemberResolutionBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    .line 5
    .line 6
    new-instance v1, Lcom/transsion/baselib/db/member/e;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1}, Lcom/transsion/baselib/db/member/e;-><init>(Lcom/transsion/baselib/db/member/g;Lcom/transsion/baselib/db/member/MemberResolutionBean;)V

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

.method public e(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v1, Lcom/transsion/baselib/db/member/d;

    .line 4
    .line 5
    invoke-direct {v1, p4, p1, p2, p3}, Lcom/transsion/baselib/db/member/d;-><init>(ZLjava/lang/String;II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    const/4 p2, 0x1

    .line 10
    invoke-static {v0, p1, p2, v1, p5}, Landroidx/room/util/b;->f(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public f(Ljava/lang/String;IIZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/member/g;->a:Landroidx/room/RoomDatabase;

    .line 2
    .line 3
    new-instance v7, Lcom/transsion/baselib/db/member/c;

    .line 4
    .line 5
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    move v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/transsion/baselib/db/member/c;-><init>(Lcom/transsion/baselib/db/member/g;Ljava/lang/String;IIZ)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v7, p5}, Landroidx/room/util/b;->e(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
