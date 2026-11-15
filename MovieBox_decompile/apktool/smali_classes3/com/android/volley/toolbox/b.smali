.class public Lcom/android/volley/toolbox/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/android/volley/f;


# instance fields
.field protected final a:Lcom/android/volley/toolbox/f;

.field private final b:Lcom/android/volley/toolbox/a;

.field protected final c:Lcom/android/volley/toolbox/ByteArrayPool;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/a;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/volley/toolbox/ByteArrayPool;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/android/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/android/volley/toolbox/b;-><init>(Lcom/android/volley/toolbox/a;Lcom/android/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/toolbox/a;Lcom/android/volley/toolbox/ByteArrayPool;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/volley/toolbox/b;->b:Lcom/android/volley/toolbox/a;

    .line 4
    iput-object p1, p0, Lcom/android/volley/toolbox/b;->a:Lcom/android/volley/toolbox/f;

    .line 5
    iput-object p2, p0, Lcom/android/volley/toolbox/b;->c:Lcom/android/volley/toolbox/ByteArrayPool;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/Request;)Lcom/android/volley/g;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v9

    .line 9
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/volley/Request;->getCacheEntry()Lcom/android/volley/c$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/android/volley/toolbox/d;->c(Lcom/android/volley/c$a;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v3, v1, Lcom/android/volley/toolbox/b;->b:Lcom/android/volley/toolbox/a;

    .line 22
    .line 23
    invoke-virtual {v3, v8, v0}, Lcom/android/volley/toolbox/a;->a(Lcom/android/volley/Request;Ljava/util/Map;)Lcom/android/volley/toolbox/e;

    .line 24
    .line 25
    .line 26
    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    :try_start_1
    invoke-virtual {v3}, Lcom/android/volley/toolbox/e;->d()I

    .line 28
    .line 29
    .line 30
    move-result v12

    .line 31
    invoke-virtual {v3}, Lcom/android/volley/toolbox/e;->c()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/16 v4, 0x130

    .line 36
    .line 37
    if-ne v12, v4, :cond_0

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    sub-long/2addr v4, v9

    .line 44
    invoke-static {v8, v4, v5, v0}, Lcom/android/volley/toolbox/l;->b(Lcom/android/volley/Request;JLjava/util/List;)Lcom/android/volley/g;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    move-object v7, v2

    .line 51
    move-object v6, v3

    .line 52
    move-object v3, v0

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    invoke-virtual {v3}, Lcom/android/volley/toolbox/e;->a()Ljava/io/InputStream;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/android/volley/toolbox/e;->b()I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    iget-object v6, v1, Lcom/android/volley/toolbox/b;->c:Lcom/android/volley/toolbox/ByteArrayPool;

    .line 65
    .line 66
    invoke-static {v4, v5, v6}, Lcom/android/volley/toolbox/l;->c(Ljava/io/InputStream;ILcom/android/volley/toolbox/ByteArrayPool;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v4, 0x0

    .line 72
    new-array v2, v4, [B

    .line 73
    .line 74
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v4

    .line 78
    sub-long/2addr v4, v9

    .line 79
    invoke-static {v4, v5, v8, v2, v12}, Lcom/android/volley/toolbox/l;->d(JLcom/android/volley/Request;[BI)V

    .line 80
    .line 81
    .line 82
    const/16 v4, 0xc8

    .line 83
    .line 84
    if-lt v12, v4, :cond_2

    .line 85
    .line 86
    const/16 v4, 0x12b

    .line 87
    .line 88
    if-gt v12, v4, :cond_2

    .line 89
    .line 90
    new-instance v4, Lcom/android/volley/g;

    .line 91
    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 93
    .line 94
    .line 95
    move-result-wide v5

    .line 96
    sub-long v15, v5, v9

    .line 97
    .line 98
    const/4 v14, 0x0

    .line 99
    move-object v11, v4

    .line 100
    move-object v13, v2

    .line 101
    move-object/from16 v17, v0

    .line 102
    .line 103
    invoke-direct/range {v11 .. v17}, Lcom/android/volley/g;-><init>(I[BZJLjava/util/List;)V

    .line 104
    .line 105
    .line 106
    return-object v4

    .line 107
    :cond_2
    new-instance v0, Ljava/io/IOException;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 110
    .line 111
    .line 112
    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :catch_1
    move-exception v0

    .line 114
    move-object v3, v0

    .line 115
    move-object v6, v2

    .line 116
    move-object v7, v6

    .line 117
    :goto_2
    move-object/from16 v2, p1

    .line 118
    .line 119
    move-wide v4, v9

    .line 120
    invoke-static/range {v2 .. v7}, Lcom/android/volley/toolbox/l;->e(Lcom/android/volley/Request;Ljava/io/IOException;JLcom/android/volley/toolbox/e;[B)Lcom/android/volley/toolbox/l$b;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v8, v0}, Lcom/android/volley/toolbox/l;->a(Lcom/android/volley/Request;Lcom/android/volley/toolbox/l$b;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0
.end method
