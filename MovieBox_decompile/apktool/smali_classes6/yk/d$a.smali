.class public abstract Lyk/d$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lyk/d;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    if-nez p9, :cond_4

    .line 2
    .line 3
    and-int/lit8 v0, p8, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lgg/a;->a:Lgg/a$a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lgg/a$a;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v2, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v2, p1

    .line 16
    :goto_0
    and-int/lit8 v0, p8, 0x2

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    move v3, v0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v3, p2

    .line 24
    :goto_1
    and-int/lit8 v0, p8, 0x10

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/16 v0, 0xa

    .line 29
    .line 30
    move v6, v0

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v6, p5

    .line 33
    :goto_2
    and-int/lit8 v0, p8, 0x20

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    move-object v7, v0

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move-object v7, p6

    .line 41
    :goto_3
    move-object v1, p0

    .line 42
    move-object v4, p3

    .line 43
    move v5, p4

    .line 44
    move-object/from16 v8, p7

    .line 45
    .line 46
    invoke-interface/range {v1 .. v8}, Lyk/d;->b(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 52
    .line 53
    const-string v1, "Super calls with default arguments not supported in this target, function: getRankList"

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public static synthetic b(Lyk/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    if-nez p8, :cond_4

    .line 2
    .line 3
    and-int/lit8 p8, p7, 0x1

    .line 4
    .line 5
    if-eqz p8, :cond_0

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
    move-object v1, p1

    .line 14
    and-int/lit8 p1, p7, 0x2

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p2, "0"

    .line 19
    .line 20
    :cond_1
    move-object v2, p2

    .line 21
    and-int/lit8 p1, p7, 0x8

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    const-string p4, "1"

    .line 26
    .line 27
    :cond_2
    move-object v4, p4

    .line 28
    and-int/lit8 p1, p7, 0x10

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    const/16 p5, 0xa

    .line 33
    .line 34
    :cond_3
    move v5, p5

    .line 35
    move-object v0, p0

    .line 36
    move-object v3, p3

    .line 37
    move-object v6, p6

    .line 38
    invoke-interface/range {v0 .. v6}, Lyk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 44
    .line 45
    const-string p1, "Super calls with default arguments not supported in this target, function: getUGCRankList"

    .line 46
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method
