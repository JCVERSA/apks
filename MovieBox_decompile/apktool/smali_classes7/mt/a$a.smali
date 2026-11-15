.class public abstract Lmt/a$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmt/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lmt/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    if-nez p11, :cond_2

    .line 4
    .line 5
    and-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lgg/a;->a:Lgg/a$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Lgg/a$a;->a()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    move-object v3, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v3, p1

    .line 18
    :goto_0
    and-int/lit16 v0, v0, 0x80

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/16 v0, 0x14

    .line 23
    .line 24
    move v10, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move/from16 v10, p8

    .line 27
    .line 28
    :goto_1
    move-object v2, p0

    .line 29
    move-object v4, p2

    .line 30
    move-object v5, p3

    .line 31
    move-object/from16 v6, p4

    .line 32
    .line 33
    move/from16 v7, p5

    .line 34
    .line 35
    move/from16 v8, p6

    .line 36
    .line 37
    move-object/from16 v9, p7

    .line 38
    .line 39
    move-object/from16 v11, p9

    .line 40
    .line 41
    invoke-interface/range {v2 .. v11}, Lmt/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 47
    .line 48
    const-string v1, "Super calls with default arguments not supported in this target, function: subtitleSearch"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0
.end method
