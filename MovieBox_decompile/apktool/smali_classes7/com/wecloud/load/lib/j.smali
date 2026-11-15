.class public final Lcom/wecloud/load/lib/j;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wecloud/load/lib/j$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/wecloud/load/lib/j;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/wecloud/load/lib/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/wecloud/load/lib/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/wecloud/load/lib/j;->a:Lcom/wecloud/load/lib/j;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/wecloud/load/lib/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
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


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3

    .line 1
    const-string v0, "results"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/wecloud/load/lib/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/wecloud/load/lib/j$a;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/wecloud/load/lib/n;

    .line 32
    .line 33
    const-string v2, "network_probe"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/wecloud/load/lib/j;->c(Lcom/wecloud/load/lib/n;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v0, v2, v1}, Lcom/wecloud/load/lib/j$a;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method public final b(Lcom/wecloud/load/lib/j$a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/wecloud/load/lib/j;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Lcom/wecloud/load/lib/n;)Ljava/util/Map;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "result"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->k()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v2, v4

    .line 21
    :goto_0
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->l()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/16 v5, 0xc8

    .line 26
    .line 27
    if-eq v3, v5, :cond_1

    .line 28
    .line 29
    move v3, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v3, v0

    .line 32
    :goto_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->g()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-nez v6, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move-object v5, v4

    .line 46
    :goto_2
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->f()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v3}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    move-object v4, v3

    .line 59
    :cond_3
    const-string v3, "url"

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->n()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {v3, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const-string v6, "method"

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->i()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->m()Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const-string v8, "success"

    .line 88
    .line 89
    invoke-static {v8, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->l()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    const-string v9, "status_code"

    .line 102
    .line 103
    invoke-static {v9, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->c()J

    .line 108
    .line 109
    .line 110
    move-result-wide v9

    .line 111
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    const-string v10, "duration"

    .line 116
    .line 117
    invoke-static {v10, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->j()J

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    const-string v11, "request_time"

    .line 130
    .line 131
    invoke-static {v11, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->d()I

    .line 136
    .line 137
    .line 138
    move-result v11

    .line 139
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v11

    .line 143
    const-string v12, "error_code"

    .line 144
    .line 145
    invoke-static {v12, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    const-string v12, "error_message"

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->e()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-static {v12, v13}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 156
    .line 157
    .line 158
    move-result-object v12

    .line 159
    const-string v13, "server_ip"

    .line 160
    .line 161
    invoke-static {v13, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v13, "http_headers"

    .line 166
    .line 167
    invoke-static {v13, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    const-string v13, "http_body"

    .line 172
    .line 173
    invoke-static {v13, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    const-string v13, "http_protocol"

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/wecloud/load/lib/n;->h()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {v13, p1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const/16 v13, 0xc

    .line 188
    .line 189
    new-array v13, v13, [Lkotlin/Pair;

    .line 190
    .line 191
    aput-object v3, v13, v0

    .line 192
    .line 193
    aput-object v6, v13, v1

    .line 194
    .line 195
    const/4 v0, 0x2

    .line 196
    aput-object v7, v13, v0

    .line 197
    .line 198
    const/4 v0, 0x3

    .line 199
    aput-object v8, v13, v0

    .line 200
    .line 201
    const/4 v0, 0x4

    .line 202
    aput-object v9, v13, v0

    .line 203
    .line 204
    const/4 v0, 0x5

    .line 205
    aput-object v10, v13, v0

    .line 206
    .line 207
    const/4 v0, 0x6

    .line 208
    aput-object v11, v13, v0

    .line 209
    .line 210
    const/4 v0, 0x7

    .line 211
    aput-object v12, v13, v0

    .line 212
    .line 213
    const/16 v0, 0x8

    .line 214
    .line 215
    aput-object v2, v13, v0

    .line 216
    .line 217
    const/16 v0, 0x9

    .line 218
    .line 219
    aput-object v5, v13, v0

    .line 220
    .line 221
    const/16 v0, 0xa

    .line 222
    .line 223
    aput-object v4, v13, v0

    .line 224
    .line 225
    const/16 v0, 0xb

    .line 226
    .line 227
    aput-object p1, v13, v0

    .line 228
    .line 229
    invoke-static {v13}, Lkotlin/collections/MapsKt;->k([Lkotlin/Pair;)Ljava/util/LinkedHashMap;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    return-object p1
.end method
