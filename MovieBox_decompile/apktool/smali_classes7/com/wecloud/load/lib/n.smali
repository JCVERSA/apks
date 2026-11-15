.class public final Lcom/wecloud/load/lib/n;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/n$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/wecloud/load/lib/n$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Ljava/util/Map;

.field private final i:Ljava/lang/String;

.field private final j:J

.field private final k:J

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/wecloud/load/lib/n$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/wecloud/load/lib/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/wecloud/load/lib/n;->m:Lcom/wecloud/load/lib/n$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "method"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "serverIp"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "errorMessage"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "httpHeaders"

    .line 22
    .line 23
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "httpBody"

    .line 27
    .line 28
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "httpProtocol"

    .line 32
    .line 33
    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/wecloud/load/lib/n;->a:Ljava/lang/String;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/wecloud/load/lib/n;->b:Ljava/lang/String;

    .line 42
    .line 43
    iput-boolean p3, p0, Lcom/wecloud/load/lib/n;->c:Z

    .line 44
    .line 45
    iput p4, p0, Lcom/wecloud/load/lib/n;->d:I

    .line 46
    .line 47
    iput-object p5, p0, Lcom/wecloud/load/lib/n;->e:Ljava/lang/String;

    .line 48
    .line 49
    iput-object p6, p0, Lcom/wecloud/load/lib/n;->f:Ljava/lang/String;

    .line 50
    .line 51
    iput p7, p0, Lcom/wecloud/load/lib/n;->g:I

    .line 52
    .line 53
    iput-object p8, p0, Lcom/wecloud/load/lib/n;->h:Ljava/util/Map;

    .line 54
    .line 55
    iput-object p9, p0, Lcom/wecloud/load/lib/n;->i:Ljava/lang/String;

    .line 56
    .line 57
    iput-wide p10, p0, Lcom/wecloud/load/lib/n;->j:J

    .line 58
    .line 59
    iput-wide p12, p0, Lcom/wecloud/load/lib/n;->k:J

    .line 60
    .line 61
    iput-object p14, p0, Lcom/wecloud/load/lib/n;->l:Ljava/lang/String;

    .line 62
    .line 63
    return-void
.end method

.method public static synthetic b(Lcom/wecloud/load/lib/n;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;ILjava/lang/Object;)Lcom/wecloud/load/lib/n;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p15

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/wecloud/load/lib/n;->a:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v2, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    iget-object v3, v0, Lcom/wecloud/load/lib/n;->b:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object/from16 v3, p2

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 23
    .line 24
    if-eqz v4, :cond_2

    .line 25
    .line 26
    iget-boolean v4, v0, Lcom/wecloud/load/lib/n;->c:Z

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move/from16 v4, p3

    .line 30
    .line 31
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 32
    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    iget v5, v0, Lcom/wecloud/load/lib/n;->d:I

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move/from16 v5, p4

    .line 39
    .line 40
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 41
    .line 42
    if-eqz v6, :cond_4

    .line 43
    .line 44
    iget-object v6, v0, Lcom/wecloud/load/lib/n;->e:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move-object/from16 v6, p5

    .line 48
    .line 49
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 50
    .line 51
    if-eqz v7, :cond_5

    .line 52
    .line 53
    iget-object v7, v0, Lcom/wecloud/load/lib/n;->f:Ljava/lang/String;

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_5
    move-object/from16 v7, p6

    .line 57
    .line 58
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 59
    .line 60
    if-eqz v8, :cond_6

    .line 61
    .line 62
    iget v8, v0, Lcom/wecloud/load/lib/n;->g:I

    .line 63
    .line 64
    goto :goto_6

    .line 65
    :cond_6
    move/from16 v8, p7

    .line 66
    .line 67
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 68
    .line 69
    if-eqz v9, :cond_7

    .line 70
    .line 71
    iget-object v9, v0, Lcom/wecloud/load/lib/n;->h:Ljava/util/Map;

    .line 72
    .line 73
    goto :goto_7

    .line 74
    :cond_7
    move-object/from16 v9, p8

    .line 75
    .line 76
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 77
    .line 78
    if-eqz v10, :cond_8

    .line 79
    .line 80
    iget-object v10, v0, Lcom/wecloud/load/lib/n;->i:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_8

    .line 83
    :cond_8
    move-object/from16 v10, p9

    .line 84
    .line 85
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 86
    .line 87
    if-eqz v11, :cond_9

    .line 88
    .line 89
    iget-wide v11, v0, Lcom/wecloud/load/lib/n;->j:J

    .line 90
    .line 91
    goto :goto_9

    .line 92
    :cond_9
    move-wide/from16 v11, p10

    .line 93
    .line 94
    :goto_9
    and-int/lit16 v13, v1, 0x400

    .line 95
    .line 96
    if-eqz v13, :cond_a

    .line 97
    .line 98
    iget-wide v13, v0, Lcom/wecloud/load/lib/n;->k:J

    .line 99
    .line 100
    goto :goto_a

    .line 101
    :cond_a
    move-wide/from16 v13, p12

    .line 102
    .line 103
    :goto_a
    and-int/lit16 v1, v1, 0x800

    .line 104
    .line 105
    if-eqz v1, :cond_b

    .line 106
    .line 107
    iget-object v1, v0, Lcom/wecloud/load/lib/n;->l:Ljava/lang/String;

    .line 108
    .line 109
    goto :goto_b

    .line 110
    :cond_b
    move-object/from16 v1, p14

    .line 111
    .line 112
    :goto_b
    move-object/from16 p1, v2

    .line 113
    .line 114
    move-object/from16 p2, v3

    .line 115
    .line 116
    move/from16 p3, v4

    .line 117
    .line 118
    move/from16 p4, v5

    .line 119
    .line 120
    move-object/from16 p5, v6

    .line 121
    .line 122
    move-object/from16 p6, v7

    .line 123
    .line 124
    move/from16 p7, v8

    .line 125
    .line 126
    move-object/from16 p8, v9

    .line 127
    .line 128
    move-object/from16 p9, v10

    .line 129
    .line 130
    move-wide/from16 p10, v11

    .line 131
    .line 132
    move-wide/from16 p12, v13

    .line 133
    .line 134
    move-object/from16 p14, v1

    .line 135
    .line 136
    invoke-virtual/range {p0 .. p14}, Lcom/wecloud/load/lib/n;->a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Lcom/wecloud/load/lib/n;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)Lcom/wecloud/load/lib/n;
    .locals 16

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "method"

    .line 9
    .line 10
    move-object/from16 v3, p2

    .line 11
    .line 12
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "serverIp"

    .line 16
    .line 17
    move-object/from16 v6, p5

    .line 18
    .line 19
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "errorMessage"

    .line 23
    .line 24
    move-object/from16 v7, p6

    .line 25
    .line 26
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "httpHeaders"

    .line 30
    .line 31
    move-object/from16 v9, p8

    .line 32
    .line 33
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "httpBody"

    .line 37
    .line 38
    move-object/from16 v10, p9

    .line 39
    .line 40
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "httpProtocol"

    .line 44
    .line 45
    move-object/from16 v15, p14

    .line 46
    .line 47
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/wecloud/load/lib/n;

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    move/from16 v4, p3

    .line 54
    .line 55
    move/from16 v5, p4

    .line 56
    .line 57
    move/from16 v8, p7

    .line 58
    .line 59
    move-wide/from16 v11, p10

    .line 60
    .line 61
    move-wide/from16 v13, p12

    .line 62
    .line 63
    invoke-direct/range {v1 .. v15}, Lcom/wecloud/load/lib/n;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;JJLjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wecloud/load/lib/n;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wecloud/load/lib/n;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/n;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/wecloud/load/lib/n;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/wecloud/load/lib/n;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/wecloud/load/lib/n;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->b:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/wecloud/load/lib/n;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-boolean v1, p0, Lcom/wecloud/load/lib/n;->c:Z

    .line 36
    .line 37
    iget-boolean v3, p1, Lcom/wecloud/load/lib/n;->c:Z

    .line 38
    .line 39
    if-eq v1, v3, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Lcom/wecloud/load/lib/n;->d:I

    .line 43
    .line 44
    iget v3, p1, Lcom/wecloud/load/lib/n;->d:I

    .line 45
    .line 46
    if-eq v1, v3, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->e:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/wecloud/load/lib/n;->e:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->f:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/wecloud/load/lib/n;->f:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget v1, p0, Lcom/wecloud/load/lib/n;->g:I

    .line 72
    .line 73
    iget v3, p1, Lcom/wecloud/load/lib/n;->g:I

    .line 74
    .line 75
    if-eq v1, v3, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->h:Ljava/util/Map;

    .line 79
    .line 80
    iget-object v3, p1, Lcom/wecloud/load/lib/n;->h:Ljava/util/Map;

    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->i:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v3, p1, Lcom/wecloud/load/lib/n;->i:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-wide v3, p0, Lcom/wecloud/load/lib/n;->j:J

    .line 101
    .line 102
    iget-wide v5, p1, Lcom/wecloud/load/lib/n;->j:J

    .line 103
    .line 104
    cmp-long v1, v3, v5

    .line 105
    .line 106
    if-eqz v1, :cond_b

    .line 107
    .line 108
    return v2

    .line 109
    :cond_b
    iget-wide v3, p0, Lcom/wecloud/load/lib/n;->k:J

    .line 110
    .line 111
    iget-wide v5, p1, Lcom/wecloud/load/lib/n;->k:J

    .line 112
    .line 113
    cmp-long v1, v3, v5

    .line 114
    .line 115
    if-eqz v1, :cond_c

    .line 116
    .line 117
    return v2

    .line 118
    :cond_c
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->l:Ljava/lang/String;

    .line 119
    .line 120
    iget-object p1, p1, Lcom/wecloud/load/lib/n;->l:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-nez p1, :cond_d

    .line 127
    .line 128
    return v2

    .line 129
    :cond_d
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/n;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/n;->h:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/n;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/wecloud/load/lib/n;->c:Z

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lcom/wecloud/load/lib/n;->d:I

    .line 28
    .line 29
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->e:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->f:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget v1, p0, Lcom/wecloud/load/lib/n;->g:I

    .line 51
    .line 52
    add-int/2addr v0, v1

    .line 53
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    .line 55
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->h:Ljava/util/Map;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    add-int/2addr v0, v1

    .line 62
    mul-int/lit8 v0, v0, 0x1f

    .line 63
    .line 64
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->i:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    add-int/2addr v0, v1

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    .line 72
    .line 73
    iget-wide v1, p0, Lcom/wecloud/load/lib/n;->j:J

    .line 74
    .line 75
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    add-int/2addr v0, v1

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    .line 81
    .line 82
    iget-wide v1, p0, Lcom/wecloud/load/lib/n;->k:J

    .line 83
    .line 84
    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    .line 90
    .line 91
    iget-object v1, p0, Lcom/wecloud/load/lib/n;->l:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    add-int/2addr v0, v1

    .line 98
    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/n;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/wecloud/load/lib/n;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/n;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/wecloud/load/lib/n;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/wecloud/load/lib/n;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wecloud/load/lib/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/wecloud/load/lib/n;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/wecloud/load/lib/n;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/wecloud/load/lib/n;->c:Z

    .line 8
    .line 9
    iget v4, v0, Lcom/wecloud/load/lib/n;->d:I

    .line 10
    .line 11
    iget-object v5, v0, Lcom/wecloud/load/lib/n;->e:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/wecloud/load/lib/n;->f:Ljava/lang/String;

    .line 14
    .line 15
    iget v7, v0, Lcom/wecloud/load/lib/n;->g:I

    .line 16
    .line 17
    iget-object v8, v0, Lcom/wecloud/load/lib/n;->h:Ljava/util/Map;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/wecloud/load/lib/n;->i:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v10, v0, Lcom/wecloud/load/lib/n;->j:J

    .line 22
    .line 23
    iget-wide v12, v0, Lcom/wecloud/load/lib/n;->k:J

    .line 24
    .line 25
    iget-object v14, v0, Lcom/wecloud/load/lib/n;->l:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v15, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v0, "ProbeResult(url="

    .line 33
    .line 34
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ", method="

    .line 41
    .line 42
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", success="

    .line 49
    .line 50
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", statusCode="

    .line 57
    .line 58
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, ", serverIp="

    .line 65
    .line 66
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, ", errorMessage="

    .line 73
    .line 74
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ", errorCode="

    .line 81
    .line 82
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, ", httpHeaders="

    .line 89
    .line 90
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, ", httpBody="

    .line 97
    .line 98
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v0, ", requestTime="

    .line 105
    .line 106
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, ", duration="

    .line 113
    .line 114
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, ", httpProtocol="

    .line 121
    .line 122
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v0, ")"

    .line 129
    .line 130
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0
.end method
