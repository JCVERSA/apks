.class public abstract Lcx/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lcx/a;Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x2

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    sget-object p2, Lgg/a;->a:Lgg/a$a;

    .line 8
    .line 9
    invoke-virtual {p2}, Lgg/a$a;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcx/a;->a(Lokhttp3/RequestBody;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: favoriteShortTv"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static synthetic b(Lcx/a;Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-nez p5, :cond_1

    .line 2
    .line 3
    and-int/lit8 p4, p4, 0x1

    .line 4
    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    sget-object p1, Lgg/a;->a:Lgg/a$a;

    .line 8
    .line 9
    invoke-virtual {p1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcx/a;->k(Ljava/lang/String;Lokhttp3/RequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: finishDownloadResource"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static synthetic c(Lcx/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;IIILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move/from16 v0, p14

    .line 2
    .line 3
    if-nez p15, :cond_9

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x8

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    move v6, v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move/from16 v6, p4

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v1, v0, 0x10

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    move v7, v2

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move/from16 v7, p5

    .line 23
    .line 24
    :goto_1
    and-int/lit8 v1, v0, 0x20

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    move v8, v3

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    move/from16 v8, p6

    .line 32
    .line 33
    :goto_2
    and-int/lit8 v1, v0, 0x40

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    move v9, v3

    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move/from16 v9, p7

    .line 40
    .line 41
    :goto_3
    and-int/lit16 v1, v0, 0x80

    .line 42
    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    move v10, v2

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move/from16 v10, p8

    .line 48
    .line 49
    :goto_4
    and-int/lit16 v1, v0, 0x100

    .line 50
    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v4, "download_last_resolution"

    .line 60
    .line 61
    invoke-virtual {v1, v4, v2}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v11, v1

    .line 70
    goto :goto_5

    .line 71
    :cond_5
    move-object/from16 v11, p9

    .line 72
    .line 73
    :goto_5
    and-int/lit16 v1, v0, 0x200

    .line 74
    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    move v12, v3

    .line 78
    goto :goto_6

    .line 79
    :cond_6
    move/from16 v12, p10

    .line 80
    .line 81
    :goto_6
    and-int/lit16 v1, v0, 0x400

    .line 82
    .line 83
    if-eqz v1, :cond_7

    .line 84
    .line 85
    move v13, v3

    .line 86
    goto :goto_7

    .line 87
    :cond_7
    move/from16 v13, p11

    .line 88
    .line 89
    :goto_7
    and-int/lit16 v0, v0, 0x800

    .line 90
    .line 91
    if-eqz v0, :cond_8

    .line 92
    .line 93
    move v14, v3

    .line 94
    goto :goto_8

    .line 95
    :cond_8
    move/from16 v14, p12

    .line 96
    .line 97
    :goto_8
    move-object/from16 v2, p0

    .line 98
    .line 99
    move-object/from16 v3, p1

    .line 100
    .line 101
    move-object/from16 v4, p2

    .line 102
    .line 103
    move-object/from16 v5, p3

    .line 104
    .line 105
    move-object/from16 v15, p13

    .line 106
    .line 107
    invoke-interface/range {v2 .. v15}, Lcx/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;IIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0

    .line 112
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 113
    .line 114
    const-string v1, "Super calls with default arguments not supported in this target, function: getDownloadList"

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method public static synthetic d(Lcx/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    if-nez p9, :cond_1

    .line 2
    .line 3
    and-int/lit8 v0, p8, 0x20

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    move v7, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v7, p6

    .line 11
    :goto_0
    move-object v1, p0

    .line 12
    move-object v2, p1

    .line 13
    move-object v3, p2

    .line 14
    move-object v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move-object v6, p5

    .line 17
    move-object/from16 v8, p7

    .line 18
    .line 19
    invoke-interface/range {v1 .. v8}, Lcx/a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 25
    .line 26
    const-string v1, "Super calls with default arguments not supported in this target, function: getResource"

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
