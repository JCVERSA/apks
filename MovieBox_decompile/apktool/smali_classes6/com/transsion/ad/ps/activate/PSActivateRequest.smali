.class public final Lcom/transsion/ad/ps/activate/PSActivateRequest;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/ad/ps/activate/PSActivateRequest;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/ps/activate/PSActivateRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;->a:Lcom/transsion/ad/ps/activate/PSActivateRequest;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/ad/ps/activate/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/ad/ps/activate/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;->b:Lkotlin/Lazy;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lzh/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->i()Lzh/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/transsion/ad/ps/activate/PSActivateRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ad/ps/activate/PSActivateRequest;)Lzh/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->h()Lzh/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e(J)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/transsion/ad/ps/activate/PSActivateRequest;->d:J

    .line 2
    .line 3
    return-void
.end method

.method private final f()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getSimpleName(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private final h()Lzh/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lzh/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final i()Lzh/a;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lzh/a;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lzh/a;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final g(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/ad/MBAd;->a:Lcom/transsion/ad/MBAd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/MBAd;->b()Lcom/transsion/ad/MBAd$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/transsion/ad/MBAd$a;->i()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->f()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0}, Lcom/transsion/ad/MBAd;->b()Lcom/transsion/ad/MBAd$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/transsion/ad/MBAd$a;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, " --> getPsActivateList() --> openPsActivateAd = "

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " --> \u6ca1\u6709\u5f00\u542fPS\u6fc0\u6d3b\u5e7f\u544a\uff0c\u76f4\u63a5\u8fd4\u56de"

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    const/4 v7, 0x6

    .line 62
    const/4 v8, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    const/4 v6, 0x0

    .line 65
    invoke-static/range {v3 .. v8}, Lxh/a;->k(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_1
    sget-object v0, Lcom/transsion/ad/strategy/v;->a:Lcom/transsion/ad/strategy/v;

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/v;->a()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->f()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p1, " --> getPsActivateList() --> \u9752\u5c11\u5e74\u6a21\u5f0f\u4e0d\u8bf7\u6c42\u6fc0\u6d3b\u5e7f\u544a"

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    const/4 v7, 0x6

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/4 v6, 0x0

    .line 106
    invoke-static/range {v3 .. v8}, Lxh/a;->k(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 110
    .line 111
    return-object p1

    .line 112
    :cond_2
    sget-object v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    if-eqz v1, :cond_3

    .line 119
    .line 120
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->f()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p1, " --> getPsActivateList() --> isRequesting = "

    .line 135
    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    const/4 v7, 0x6

    .line 147
    const/4 v8, 0x0

    .line 148
    const/4 v5, 0x0

    .line 149
    const/4 v6, 0x0

    .line 150
    invoke-static/range {v3 .. v8}, Lxh/a;->k(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 154
    .line 155
    return-object p1

    .line 156
    :cond_3
    const/4 v1, 0x1

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 158
    .line 159
    .line 160
    sget-wide v3, Lcom/transsion/ad/ps/activate/PSActivateRequest;->d:J

    .line 161
    .line 162
    const-wide/16 v5, 0x0

    .line 163
    .line 164
    cmp-long v1, v3, v5

    .line 165
    .line 166
    if-lez v1, :cond_4

    .line 167
    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 169
    .line 170
    .line 171
    move-result-wide v3

    .line 172
    sget-wide v5, Lcom/transsion/ad/ps/activate/PSActivateRequest;->d:J

    .line 173
    .line 174
    sub-long/2addr v3, v5

    .line 175
    const-wide/32 v5, 0x6ddd00

    .line 176
    .line 177
    .line 178
    cmp-long v1, v3, v5

    .line 179
    .line 180
    if-gez v1, :cond_4

    .line 181
    .line 182
    sget-object v3, Lxh/a;->a:Lxh/a;

    .line 183
    .line 184
    invoke-direct {p0}, Lcom/transsion/ad/ps/activate/PSActivateRequest;->f()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string p1, " --> getPsActivateList() --> \u4e24\u6b21\u8bf7\u6c42\u5c0f\u4e8e2H"

    .line 197
    .line 198
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    const/4 v7, 0x6

    .line 206
    const/4 v8, 0x0

    .line 207
    const/4 v5, 0x0

    .line 208
    const/4 v6, 0x0

    .line 209
    invoke-static/range {v3 .. v8}, Lxh/a;->k(Lxh/a;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    const/4 p1, 0x0

    .line 213
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    .line 215
    .line 216
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 217
    .line 218
    return-object p1

    .line 219
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 220
    .line 221
    .line 222
    move-result-wide v0

    .line 223
    sput-wide v0, Lcom/transsion/ad/ps/activate/PSActivateRequest;->d:J

    .line 224
    .line 225
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    new-instance v1, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$2;

    .line 230
    .line 231
    invoke-direct {v1, v2}, Lcom/transsion/ad/ps/activate/PSActivateRequest$getPsActivateList$2;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 232
    .line 233
    .line 234
    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/i;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-ne p1, v0, :cond_5

    .line 243
    .line 244
    return-object p1

    .line 245
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 246
    .line 247
    return-object p1
.end method
