.class public final Lmh/f;
.super Lokhttp3/EventListener;
.source "source.java"

# interfaces
.implements Lmh/i;


# instance fields
.field private final a:Lokhttp3/EventListener;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Z

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private final o:Lmh/e;

.field private p:Z

.field private q:J

.field private r:I

.field private s:I

.field private t:Ljava/lang/String;

.field private final u:I


# direct methods
.method public constructor <init>(Lokhttp3/EventListener;IZLjava/lang/String;ZLjava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 5
    .line 6
    iput p2, p0, Lmh/f;->b:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lmh/f;->c:Z

    .line 9
    .line 10
    iput-object p6, p0, Lmh/f;->d:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p7, p0, Lmh/f;->e:Z

    .line 13
    .line 14
    iput-boolean p8, p0, Lmh/f;->f:Z

    .line 15
    .line 16
    sget-object p1, Lmh/e;->J:Lmh/e$a;

    .line 17
    .line 18
    invoke-virtual {p1, p2, p4}, Lmh/e$a;->a(ILjava/lang/String;)Lmh/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lmh/f;->o:Lmh/e;

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    if-eqz p5, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p2, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move p2, p1

    .line 33
    :goto_1
    iput-boolean p2, p0, Lmh/f;->p:Z

    .line 34
    .line 35
    const/16 p2, 0x1e0

    .line 36
    .line 37
    iput p2, p0, Lmh/f;->r:I

    .line 38
    .line 39
    iput p2, p0, Lmh/f;->s:I

    .line 40
    .line 41
    const-string p2, "Unknown"

    .line 42
    .line 43
    iput-object p2, p0, Lmh/f;->t:Ljava/lang/String;

    .line 44
    .line 45
    new-instance p2, Lkotlin/ranges/IntRange;

    .line 46
    .line 47
    const/16 p3, 0xa

    .line 48
    .line 49
    invoke-direct {p2, p1, p3}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    .line 53
    .line 54
    invoke-static {p2, p1}, Lkotlin/ranges/RangesKt;->p(Lkotlin/ranges/IntRange;Lkotlin/random/Random;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lmh/f;->u:I

    .line 59
    .line 60
    return-void
.end method

.method private final b()Z
    .locals 5

    .line 1
    sget-object v0, Lmh/k;->a:Lmh/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lmh/k;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0}, Lmh/k;->b()J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    sub-long/2addr v1, v3

    .line 18
    const-wide/16 v3, 0xbb8

    .line 19
    .line 20
    cmp-long v0, v1, v3

    .line 21
    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 28
    return v0
.end method


# virtual methods
.method public a(Lokhttp3/Request;I)V
    .locals 1

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "[onDowngrade]"

    .line 7
    .line 8
    invoke-static {p1}, Lmh/c;->c(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lmh/f;->c:Z

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lmh/f;->p:Z

    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lmh/f;->o:Lmh/e;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lmh/e;->d0(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public callEnd(Lokhttp3/Call;)V
    .locals 3

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "[callEnd]"

    .line 10
    .line 11
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {v0, v1}, Lmh/e;->I(I)V

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Lmh/f;->g:J

    .line 21
    .line 22
    invoke-static {v1, v2}, Lmh/c;->e(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0, v1, v2}, Lmh/e;->c0(J)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lmh/f;->r:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lmh/e;->S(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lmh/e;->m()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/16 v2, 0x130

    .line 39
    .line 40
    if-eq v1, v2, :cond_0

    .line 41
    .line 42
    iget-boolean v1, p0, Lmh/f;->p:Z

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    invoke-static {v0}, Lmh/c;->g(Lmh/e;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ioe"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[callFailed]  "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " : "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lmh/c;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-virtual {v0, v1}, Lmh/e;->I(I)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lmh/f;->b()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    const/16 v1, 0x3fc

    .line 65
    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    sget-object v0, Lmh/k;->a:Lmh/k;

    .line 69
    .line 70
    invoke-virtual {v0}, Lmh/k;->g()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_0

    .line 75
    .line 76
    iput v1, p0, Lmh/f;->s:I

    .line 77
    .line 78
    const-string v0, "Network disconnect"

    .line 79
    .line 80
    iput-object v0, p0, Lmh/f;->t:Ljava/lang/String;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {v0}, Lmh/k;->e()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 88
    .line 89
    const/16 v0, 0x3fd

    .line 90
    .line 91
    iput v0, p0, Lmh/f;->s:I

    .line 92
    .line 93
    const-string v0, "Fake Network"

    .line 94
    .line 95
    iput-object v0, p0, Lmh/f;->t:Ljava/lang/String;

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    sget-object v0, Lmh/a;->a:Lmh/a;

    .line 99
    .line 100
    iget v2, p0, Lmh/f;->r:I

    .line 101
    .line 102
    invoke-virtual {v0, v2, p2}, Lmh/a;->a(ILjava/io/IOException;)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lmh/f;->s:I

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    sget-object v0, Lmh/a;->a:Lmh/a;

    .line 110
    .line 111
    iget v2, p0, Lmh/f;->r:I

    .line 112
    .line 113
    invoke-virtual {v0, v2, p2}, Lmh/a;->a(ILjava/io/IOException;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p0, Lmh/f;->s:I

    .line 118
    .line 119
    :goto_0
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 120
    .line 121
    iget v2, p0, Lmh/f;->s:I

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lmh/e;->S(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 127
    .line 128
    iget-object v2, p0, Lmh/f;->t:Ljava/lang/String;

    .line 129
    .line 130
    const-string v3, "Unknown"

    .line 131
    .line 132
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    invoke-static {p2}, Lmh/c;->f(Ljava/lang/Exception;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    goto :goto_1

    .line 143
    :cond_3
    iget-object v2, p0, Lmh/f;->t:Ljava/lang/String;

    .line 144
    .line 145
    :goto_1
    invoke-virtual {v0, v2}, Lmh/e;->T(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-boolean v0, p0, Lmh/f;->p:Z

    .line 149
    .line 150
    if-nez v0, :cond_6

    .line 151
    .line 152
    iget-boolean v0, p0, Lmh/f;->e:Z

    .line 153
    .line 154
    const/4 v2, 0x0

    .line 155
    if-eqz v0, :cond_4

    .line 156
    .line 157
    iget v0, p0, Lmh/f;->s:I

    .line 158
    .line 159
    const/16 v3, 0x41a

    .line 160
    .line 161
    if-ne v0, v3, :cond_4

    .line 162
    .line 163
    move v0, v2

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    const/4 v0, 0x1

    .line 166
    :goto_2
    iget-boolean v3, p0, Lmh/f;->f:Z

    .line 167
    .line 168
    if-eqz v3, :cond_5

    .line 169
    .line 170
    iget v3, p0, Lmh/f;->s:I

    .line 171
    .line 172
    if-ne v3, v1, :cond_5

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    move v2, v0

    .line 176
    :goto_3
    if-eqz v2, :cond_6

    .line 177
    .line 178
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 179
    .line 180
    invoke-static {v0}, Lmh/c;->g(Lmh/e;)V

    .line 181
    .line 182
    .line 183
    :cond_6
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 184
    .line 185
    if-eqz v0, :cond_7

    .line 186
    .line 187
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 188
    .line 189
    .line 190
    :cond_7
    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 11

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "[callStart]"

    .line 10
    .line 11
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "isDownload"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lmh/f;->o:Lmh/e;

    .line 32
    .line 33
    const-string v3, "true"

    .line 34
    .line 35
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    const-string v3, "T"

    .line 42
    .line 43
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v0, v1

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    goto/16 :goto_4

    .line 54
    .line 55
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 56
    :goto_1
    invoke-virtual {v2, v0}, Lmh/e;->l0(I)V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "offlineAd"

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v2, p0, Lmh/f;->o:Lmh/e;

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {v2, v0}, Lmh/e;->X(I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget-object v3, p0, Lmh/f;->o:Lmh/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    const-string v4, ""

    .line 111
    .line 112
    if-nez v2, :cond_4

    .line 113
    .line 114
    move-object v2, v4

    .line 115
    :cond_4
    :try_start_1
    invoke-virtual {v3, v2}, Lmh/e;->Y(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lmh/f;->o:Lmh/e;

    .line 119
    .line 120
    if-nez v0, :cond_5

    .line 121
    .line 122
    move-object v0, v4

    .line 123
    :cond_5
    invoke-virtual {v2, v0}, Lmh/e;->U(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v2, "call.request().url().toString()"

    .line 139
    .line 140
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lmh/f;->o:Lmh/e;

    .line 144
    .line 145
    iget v3, p0, Lmh/f;->u:I

    .line 146
    .line 147
    const/4 v5, 0x2

    .line 148
    if-gt v3, v5, :cond_6

    .line 149
    .line 150
    move-object v3, v0

    .line 151
    goto :goto_2

    .line 152
    :cond_6
    move-object v3, v4

    .line 153
    :goto_2
    invoke-virtual {v2, v3}, Lmh/e;->P(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lmh/f;->o:Lmh/e;

    .line 157
    .line 158
    iget v3, p0, Lmh/f;->b:I

    .line 159
    .line 160
    if-nez v3, :cond_7

    .line 161
    .line 162
    const-string v3, "?"

    .line 163
    .line 164
    const/4 v6, 0x0

    .line 165
    invoke-static {v0, v3, v1, v5, v6}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    const-string v6, "?"

    .line 172
    .line 173
    const/4 v9, 0x6

    .line 174
    const/4 v10, 0x0

    .line 175
    const/4 v7, 0x0

    .line 176
    const/4 v8, 0x0

    .line 177
    move-object v5, v0

    .line 178
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->o0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 187
    .line 188
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_7
    invoke-virtual {v2, v0}, Lmh/e;->g0(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v1, "infoeyes-tag"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    iget-object v1, p0, Lmh/f;->o:Lmh/e;

    .line 209
    .line 210
    if-nez v0, :cond_8

    .line 211
    .line 212
    iget-object v0, p0, Lmh/f;->d:Ljava/lang/String;

    .line 213
    .line 214
    if-nez v0, :cond_8

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_8
    move-object v4, v0

    .line 218
    :goto_3
    invoke-virtual {v1, v4}, Lmh/e;->O(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    const-string v2, "[get header exception] "

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v2, " : "

    .line 244
    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v0}, Lmh/c;->b(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_5
    invoke-static {}, Lmh/c;->d()J

    .line 263
    .line 264
    .line 265
    move-result-wide v0

    .line 266
    iput-wide v0, p0, Lmh/f;->g:J

    .line 267
    .line 268
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 269
    .line 270
    if-eqz v0, :cond_9

    .line 271
    .line 272
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 273
    .line 274
    .line 275
    :cond_9
    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 3

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inetSocketAddress"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "proxy"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "[connectEnd] inetSocketAddress "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 40
    .line 41
    iget-wide v1, p0, Lmh/f;->j:J

    .line 42
    .line 43
    invoke-static {v1, v2}, Lmh/c;->e(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    invoke-virtual {v0, v1, v2}, Lmh/e;->j0(J)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 51
    .line 52
    if-eqz p4, :cond_0

    .line 53
    .line 54
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    :cond_0
    const-string v1, ""

    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0, v1}, Lmh/e;->Z(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 8

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inetSocketAddress"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "proxy"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "ioe"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v1, "[connectFailed] "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " : "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Lmh/c;->b(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 65
    .line 66
    if-eqz p4, :cond_0

    .line 67
    .line 68
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    :cond_0
    const-string v1, ""

    .line 75
    .line 76
    :cond_1
    invoke-virtual {v0, v1}, Lmh/e;->Z(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 80
    .line 81
    if-eqz v2, :cond_2

    .line 82
    .line 83
    move-object v3, p1

    .line 84
    move-object v4, p2

    .line 85
    move-object v5, p3

    .line 86
    move-object v6, p4

    .line 87
    move-object v7, p5

    .line 88
    invoke-virtual/range {v2 .. v7}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inetSocketAddress"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "proxy"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lmh/c;->d()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lmh/f;->j:J

    .line 24
    .line 25
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    const-string v1, ""

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0, v1}, Lmh/e;->W(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "[connectStart] inetSocketAddress : "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", proxy : "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 71
    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "connection"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[connectionAcquired] connection: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 35
    .line 36
    invoke-interface {p2}, Lokhttp3/Connection;->handshake()Lokhttp3/Handshake;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-virtual {v1}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    :cond_0
    const-string v1, ""

    .line 55
    .line 56
    :cond_1
    invoke-virtual {v0, v1}, Lmh/e;->k0(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 60
    .line 61
    invoke-interface {p2}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lmh/e;->Z(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "connection"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "[connectionReleased]"

    .line 15
    .line 16
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 10

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "domainName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "inetAddressList"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    move-object v1, p3

    .line 20
    check-cast v1, Ljava/lang/Iterable;

    .line 21
    .line 22
    const/16 v8, 0x38

    .line 23
    .line 24
    const/4 v9, 0x0

    .line 25
    const-string v2, ","

    .line 26
    .line 27
    const-string v3, "["

    .line 28
    .line 29
    const-string v4, "]"

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->s0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "[dnsEnd] inetAddressList "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 59
    .line 60
    iget-wide v1, p0, Lmh/f;->h:J

    .line 61
    .line 62
    invoke-static {v1, v2}, Lmh/c;->e(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-virtual {v0, v1, v2}, Lmh/e;->R(J)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 70
    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "domainName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[dnsStart] domainName: "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lmh/c;->d()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p0, Lmh/f;->h:J

    .line 39
    .line 40
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 5

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "[requestBodyEnd] byteCount: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lmh/c;->d()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    iput-wide v0, p0, Lmh/f;->m:J

    .line 34
    .line 35
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 36
    .line 37
    invoke-virtual {v0, p2, p3}, Lmh/e;->b0(J)V

    .line 38
    .line 39
    .line 40
    iget-wide v1, p0, Lmh/f;->m:J

    .line 41
    .line 42
    iget-wide v3, p0, Lmh/f;->k:J

    .line 43
    .line 44
    sub-long/2addr v1, v3

    .line 45
    invoke-virtual {v0, v1, v2}, Lmh/e;->f0(J)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "[requestBodyStart]"

    .line 10
    .line 11
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ioe"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[requestFailed] "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " : "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lmh/c;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 5

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[requestHeadersEnd] request :"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lmh/c;->d()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p0, Lmh/f;->l:J

    .line 39
    .line 40
    iget-object v2, p0, Lmh/f;->o:Lmh/e;

    .line 41
    .line 42
    iget-wide v3, p0, Lmh/f;->k:J

    .line 43
    .line 44
    sub-long/2addr v0, v3

    .line 45
    invoke-virtual {v2, v0, v1}, Lmh/e;->f0(J)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 49
    .line 50
    if-eqz v0, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "[requestHeadersStart]"

    .line 10
    .line 11
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lmh/c;->d()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lmh/f;->k:J

    .line 19
    .line 20
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 4

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "[responseBodyEnd] byteCount: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 30
    .line 31
    invoke-virtual {v0, p2, p3}, Lmh/e;->e0(J)V

    .line 32
    .line 33
    .line 34
    iget-wide v1, p0, Lmh/f;->n:J

    .line 35
    .line 36
    invoke-static {v1, v2}, Lmh/c;->e(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {v0, v1, v2}, Lmh/e;->a0(J)V

    .line 41
    .line 42
    .line 43
    iget-wide v1, p0, Lmh/f;->q:J

    .line 44
    .line 45
    invoke-static {v1, v2}, Lmh/c;->e(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {v0, v1, v2}, Lmh/e;->J(J)V

    .line 50
    .line 51
    .line 52
    long-to-float v1, p2

    .line 53
    const/high16 v2, 0x44800000    # 1024.0f

    .line 54
    .line 55
    div-float/2addr v1, v2

    .line 56
    invoke-virtual {v0}, Lmh/e;->c()J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    long-to-float v2, v2

    .line 61
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 62
    .line 63
    div-float/2addr v2, v3

    .line 64
    div-float/2addr v1, v2

    .line 65
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lmh/e;->M(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 1

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "[responseBodyStart]"

    .line 10
    .line 11
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ioe"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[responseFailed] "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, " : "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lmh/c;->b(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 55
    .line 56
    if-eqz v0, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "response"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "[responseHeadersEnd] code : "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "x-response-cdn"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    const-string v0, ""

    .line 51
    .line 52
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "server-time"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    .line 64
    const-string v1, "0"

    .line 65
    .line 66
    :cond_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, p0, Lmh/f;->o:Lmh/e;

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Lmh/e;->K(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lmh/c;->d()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    iput-wide v3, p0, Lmh/f;->q:J

    .line 83
    .line 84
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 85
    .line 86
    iget-wide v3, p0, Lmh/f;->n:J

    .line 87
    .line 88
    invoke-static {v3, v4}, Lmh/c;->e(J)J

    .line 89
    .line 90
    .line 91
    move-result-wide v3

    .line 92
    invoke-virtual {v0, v3, v4}, Lmh/e;->a0(J)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 96
    .line 97
    iget-wide v3, p0, Lmh/f;->g:J

    .line 98
    .line 99
    invoke-static {v3, v4}, Lmh/c;->e(J)J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    invoke-virtual {v0, v3, v4}, Lmh/e;->L(J)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2}, Lmh/e;->h0(J)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    iput v0, p0, Lmh/f;->r:I

    .line 116
    .line 117
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 118
    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 7

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "[responseHeadersStart]"

    .line 10
    .line 11
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lmh/c;->d()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lmh/f;->n:J

    .line 19
    .line 20
    iget-object v2, p0, Lmh/f;->o:Lmh/e;

    .line 21
    .line 22
    iget-wide v3, p0, Lmh/f;->m:J

    .line 23
    .line 24
    iget-wide v5, p0, Lmh/f;->l:J

    .line 25
    .line 26
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    sub-long/2addr v0, v3

    .line 31
    invoke-virtual {v2, v0, v1}, Lmh/e;->m0(J)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 3

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "[secureConnectEnd]"

    .line 10
    .line 11
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Lokhttp3/Handshake;->tlsVersion()Lokhttp3/TlsVersion;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    :cond_0
    const-string v1, ""

    .line 31
    .line 32
    :cond_1
    invoke-virtual {v0, v1}, Lmh/e;->k0(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lmh/f;->o:Lmh/e;

    .line 36
    .line 37
    iget-wide v1, p0, Lmh/f;->i:J

    .line 38
    .line 39
    invoke-static {v1, v2}, Lmh/c;->e(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {v0, v1, v2}, Lmh/e;->i0(J)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 2

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "[secureConnectStart]"

    .line 10
    .line 11
    invoke-static {v0}, Lmh/c;->c(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lmh/c;->d()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lmh/f;->i:J

    .line 19
    .line 20
    iget-object v0, p0, Lmh/f;->a:Lokhttp3/EventListener;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
