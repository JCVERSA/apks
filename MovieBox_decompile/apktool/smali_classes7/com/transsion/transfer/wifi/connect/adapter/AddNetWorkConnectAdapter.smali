.class public final Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;
.super Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;
.source "source.java"


# instance fields
.field private e:I

.field private f:Z

.field private g:I

.field private h:Z

.field private i:Landroid/net/Network;

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/util/List;

.field private n:J

.field private final o:Ljava/lang/Object;

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    iput v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->j:I

    .line 10
    .line 11
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->k:I

    .line 12
    .line 13
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 14
    .line 15
    const-wide/16 v0, 0x3e8

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->n:J

    .line 18
    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->o:Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v0, 0x5

    .line 27
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->p:I

    .line 28
    .line 29
    const/16 v0, 0xf

    .line 30
    .line 31
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->q:I

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic l(Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->n(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final m(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> blindConnect() --> Connect Step 4 No Need Scan Result,Force Connect "

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x2

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    if-ne p1, v0, :cond_4

    .line 32
    .line 33
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget v1, Lcom/transsion/transfer/R$string;->wifi_direct_prefix:I

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v1, "getString(...)"

    .line 48
    .line 49
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p2, p1, v2, v3, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const-string v1, "WEP"

    .line 57
    .line 58
    const-string v2, "EAP"

    .line 59
    .line 60
    const-string v3, "PSK"

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-direct {p0, p2, p3, v3}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ne p1, v0, :cond_0

    .line 69
    .line 70
    invoke-direct {p0, p2, p3, v2}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    :cond_0
    if-ne p1, v0, :cond_4

    .line 75
    .line 76
    invoke-direct {p0, p2, p3, v1}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_2

    .line 86
    .line 87
    const-string p1, "OPEN"

    .line 88
    .line 89
    invoke-direct {p0, p2, p3, p1}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    invoke-direct {p0, p2, p3, v3}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-ne p1, v0, :cond_3

    .line 99
    .line 100
    invoke-direct {p0, p2, p3, v2}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    :cond_3
    if-ne p1, v0, :cond_4

    .line 105
    .line 106
    invoke-direct {p0, p2, p3, v1}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    :cond_4
    :goto_0
    return p1
.end method

.method private final n(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$connectNetWork$1;->label:I

    .line 54
    .line 55
    const-wide/16 v4, 0x1f4

    .line 56
    .line 57
    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-ne p1, v1, :cond_3

    .line 62
    .line 63
    return-object v1

    .line 64
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->s()V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x2

    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x0

    .line 70
    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 71
    .line 72
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    .line 73
    .line 74
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 75
    .line 76
    .line 77
    const/4 v4, -0x1

    .line 78
    iput v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 79
    .line 80
    iput-boolean v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 81
    .line 82
    sget-object v4, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    invoke-virtual {v6}, Ldu/a;->p()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    goto :goto_2

    .line 99
    :catchall_0
    move-exception v2

    .line 100
    goto/16 :goto_5

    .line 101
    .line 102
    :cond_4
    move-object v6, v0

    .line 103
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v5, " --> connectNetWork() --> \u8fde\u63a5\u7f51\u7edc --> Connect Step 1 START_CONNECT --> Target SSID = "

    .line 112
    .line 113
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {v4, v5, v1, p1, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :goto_3
    sget-object v4, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 127
    .line 128
    invoke-virtual {v4}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    const/4 v6, 0x3

    .line 137
    if-eq v5, v6, :cond_6

    .line 138
    .line 139
    iget v5, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 140
    .line 141
    iget v6, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->j:I

    .line 142
    .line 143
    mul-int/2addr v6, p1

    .line 144
    if-ge v5, v6, :cond_6

    .line 145
    .line 146
    iget-boolean v5, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .line 148
    if-nez v5, :cond_6

    .line 149
    .line 150
    :try_start_1
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 151
    .line 152
    sget-object v5, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 153
    .line 154
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iget v7, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 159
    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v6, " --> connectNetWork() --> wait wifi open, time = "

    .line 169
    .line 170
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v6

    .line 180
    invoke-static {v5, v6, v1, p1, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 188
    .line 189
    .line 190
    const-wide/16 v4, 0x15e

    .line 191
    .line 192
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 193
    .line 194
    .line 195
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 196
    .line 197
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    goto :goto_4

    .line 202
    :catchall_1
    move-exception v4

    .line 203
    :try_start_2
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 204
    .line 205
    invoke-static {v4}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-static {v4}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    :goto_4
    invoke-static {v4}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    if-nez v4, :cond_5

    .line 218
    .line 219
    iget v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 220
    .line 221
    add-int/2addr v4, v3

    .line 222
    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 226
    .line 227
    return-object p1

    .line 228
    :cond_6
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->t()V

    .line 229
    .line 230
    .line 231
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 232
    .line 233
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    goto :goto_6

    .line 238
    :goto_5
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 239
    .line 240
    invoke-static {v2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    :goto_6
    invoke-static {v2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 249
    .line 250
    .line 251
    move-result-object v2

    .line 252
    if-nez v2, :cond_7

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_7
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    const-string v4, " --> connectNetWork() --> it = "

    .line 270
    .line 271
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-static {v3, v2, v1, p1, v0}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    if-eqz p1, :cond_8

    .line 289
    .line 290
    const/16 v0, 0x7ee

    .line 291
    .line 292
    invoke-interface {p1, v0}, Lcom/transsion/transfer/wifi/connect/b;->b(I)V

    .line 293
    .line 294
    .line 295
    :cond_8
    :goto_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 296
    .line 297
    return-object p1
.end method

.method private final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, -0x1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->o:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    sget-object v4, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 8
    .line 9
    invoke-virtual {v4}, Lcom/transsion/transfer/wifi/util/WifiUtils;->j()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x2

    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/transsion/transfer/wifi/util/WifiUtils;->j()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance p3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v1, "Current MB SSID had Connected. current SSID = "

    .line 33
    .line 34
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, p2, v0, v7, v6}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    return v0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto/16 :goto_3

    .line 51
    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto/16 :goto_2

    .line 54
    .line 55
    :cond_0
    :try_start_3
    iget v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->k:I

    .line 56
    .line 57
    iput v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 58
    .line 59
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    .line 60
    .line 61
    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 62
    .line 63
    .line 64
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    .line 65
    .line 66
    const-string v5, "\"%s\""

    .line 67
    .line 68
    new-array v8, v1, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p1, v8, v0

    .line 71
    .line 72
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v5, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v5, "format(...)"

    .line 81
    .line 82
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object p1, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 86
    .line 87
    const p1, 0xf4240

    .line 88
    .line 89
    .line 90
    iput p1, v4, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 91
    .line 92
    sget-object p1, Lcom/transsion/transfer/wifi/util/a;->a:Lcom/transsion/transfer/wifi/util/a;

    .line 93
    .line 94
    invoke-virtual {p1, v4, p3, p2}, Lcom/transsion/transfer/wifi/util/a;->f(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .line 96
    .line 97
    move p1, v0

    .line 98
    move p3, v2

    .line 99
    :goto_0
    :try_start_4
    iget v5, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->p:I

    .line 100
    .line 101
    if-ge p1, v5, :cond_2

    .line 102
    .line 103
    iget-boolean v5, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->h:Z

    .line 104
    .line 105
    if-nez v5, :cond_2

    .line 106
    .line 107
    sget-object v5, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 108
    .line 109
    invoke-virtual {v5}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 114
    .line 115
    .line 116
    move-result p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 117
    if-eq p3, v2, :cond_1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    add-int/2addr p1, v1

    .line 121
    const-wide/16 v8, 0x15e

    .line 122
    .line 123
    :try_start_5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_1
    move-exception p1

    .line 128
    move v2, p3

    .line 129
    goto/16 :goto_2

    .line 130
    .line 131
    :catch_1
    move-exception v5

    .line 132
    :try_start_6
    sget-object v8, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    new-instance v10, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v9, " --> connectToWifi() --> addNetwork Interrupt = "

    .line 147
    .line 148
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-static {v8, v5, v0, v7, v6}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_2
    :goto_1
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v5, " --> connectToWifi() --> new network id:"

    .line 177
    .line 178
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    invoke-static {p1, v5, v0, v7, v6}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    if-ne p3, v2, :cond_3

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string p2, " --> connectToWifi() --> add ssid to network failure!"

    .line 206
    .line 207
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-static {p1, p2, v0, v7, v6}, Lcom/transsion/transfer/wifi/util/g;->h(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 215
    .line 216
    .line 217
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 218
    return p3

    .line 219
    :catch_2
    move-exception p1

    .line 220
    move v2, p3

    .line 221
    goto :goto_3

    .line 222
    :cond_3
    :try_start_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-nez p1, :cond_4

    .line 227
    .line 228
    sget-object p1, Lcom/transsion/transfer/wifi/util/a;->a:Lcom/transsion/transfer/wifi/util/a;

    .line 229
    .line 230
    sget-object p2, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 231
    .line 232
    invoke-virtual {p2}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    invoke-virtual {p1, p2, v4}, Lcom/transsion/transfer/wifi/util/a;->g(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)I

    .line 237
    .line 238
    .line 239
    :cond_4
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 240
    .line 241
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    if-eqz p2, :cond_5

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 252
    .line 253
    .line 254
    :cond_5
    iput p3, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->k:I

    .line 255
    .line 256
    iget p2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 257
    .line 258
    if-eq p2, v2, :cond_6

    .line 259
    .line 260
    if-eq p2, p3, :cond_6

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    iget v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 267
    .line 268
    invoke-virtual {p2, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 269
    .line 270
    .line 271
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    if-eqz p2, :cond_7

    .line 276
    .line 277
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 278
    .line 279
    .line 280
    move-result-object p2

    .line 281
    invoke-virtual {p2, p3, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    :cond_7
    if-nez v0, :cond_8

    .line 286
    .line 287
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 292
    .line 293
    .line 294
    :cond_8
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->x()V

    .line 295
    .line 296
    .line 297
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 298
    .line 299
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 300
    goto :goto_4

    .line 301
    :goto_2
    :try_start_a
    monitor-exit v3

    .line 302
    throw p1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 303
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 304
    .line 305
    .line 306
    move p3, v2

    .line 307
    :goto_4
    return p3
.end method

.method private final p(I)Ljava/lang/reflect/Method;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    sget-object v2, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 4
    .line 5
    invoke-virtual {v2}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v3, :cond_3

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/ArrayIteratorKt;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v3, v4

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/reflect/Method;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    const-string v7, "connect"

    .line 46
    .line 47
    invoke-static {v7, v6, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_0

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_0

    .line 58
    .line 59
    array-length v7, v6

    .line 60
    if-lez v7, :cond_0

    .line 61
    .line 62
    aget-object v6, v6, v0

    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string v7, "int"

    .line 69
    .line 70
    invoke-static {v7, v6, v1}, Lkotlin/text/StringsKt;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_0

    .line 75
    .line 76
    move-object v3, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    if-eqz v3, :cond_2

    .line 79
    .line 80
    :try_start_0
    sget-object v2, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const/4 v5, 0x2

    .line 91
    new-array v5, v5, [Ljava/lang/Object;

    .line 92
    .line 93
    aput-object p1, v5, v0

    .line 94
    .line 95
    aput-object v4, v5, v1

    .line 96
    .line 97
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    return-object v4

    .line 106
    :cond_2
    :goto_1
    move-object v4, v3

    .line 107
    :cond_3
    return-object v4
.end method

.method private final q()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Ldu/a;->p()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :cond_0
    move-object v1, v2

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-virtual {v3}, Ldu/a;->o()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-nez v3, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v2, v3

    .line 32
    :cond_3
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->m(ILjava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 37
    .line 38
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, " --> doBlindConnect() --> Connect Step 5 No Need Scan Result,Force Connect Result="

    .line 55
    .line 56
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x2

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 73
    .line 74
    const-wide/16 v5, 0x15e

    .line 75
    .line 76
    const/4 v7, -0x1

    .line 77
    if-eq v1, v7, :cond_8

    .line 78
    .line 79
    sget-object v1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->j()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    if-eqz v8, :cond_4

    .line 90
    .line 91
    invoke-virtual {v8}, Ldu/a;->p()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    move-object v8, v4

    .line 97
    :goto_1
    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const-string v8, " -- netId = "

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 110
    .line 111
    .line 112
    move-result-object v9

    .line 113
    if-eqz v9, :cond_5

    .line 114
    .line 115
    invoke-virtual {v9}, Ldu/a;->p()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move-object v9, v4

    .line 121
    :goto_2
    iget v10, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 122
    .line 123
    new-instance v11, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v1, " --> doBlindConnect() --> Connect Step 6.0 connected wifi = "

    .line 132
    .line 133
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v1, "  --  isOkRetryConnect:"

    .line 146
    .line 147
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 166
    .line 167
    .line 168
    move-result-object v9

    .line 169
    if-eqz v9, :cond_7

    .line 170
    .line 171
    invoke-virtual {v9}, Ldu/a;->p()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    goto :goto_3

    .line 176
    :cond_7
    move-object v9, v4

    .line 177
    :goto_3
    iget v10, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 178
    .line 179
    new-instance v11, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v1, " --> doBlindConnect() --> Connect Step 6.1 didn\'t connect wifi\uff0creEnableNetWork ssid: "

    .line 188
    .line 189
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, " "

    .line 202
    .line 203
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iget v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 214
    .line 215
    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->w(I)V

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :cond_8
    iput-object v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->m:Ljava/util/List;

    .line 225
    .line 226
    :goto_4
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->r()Landroid/net/NetworkInfo$DetailedState;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    const/4 v1, 0x1

    .line 231
    if-eqz v0, :cond_a

    .line 232
    .line 233
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 234
    .line 235
    if-eq v0, v8, :cond_a

    .line 236
    .line 237
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 238
    .line 239
    if-ne v0, v8, :cond_9

    .line 240
    .line 241
    goto :goto_5

    .line 242
    :cond_9
    move v0, v2

    .line 243
    goto :goto_6

    .line 244
    :cond_a
    :goto_5
    move v0, v1

    .line 245
    :goto_6
    move v8, v2

    .line 246
    :goto_7
    if-eqz v0, :cond_e

    .line 247
    .line 248
    iget v9, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->q:I

    .line 249
    .line 250
    if-ge v8, v9, :cond_e

    .line 251
    .line 252
    iget-boolean v9, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->h:Z

    .line 253
    .line 254
    if-nez v9, :cond_e

    .line 255
    .line 256
    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->r()Landroid/net/NetworkInfo$DetailedState;

    .line 260
    .line 261
    .line 262
    move-result-object v9

    .line 263
    if-eqz v9, :cond_d

    .line 264
    .line 265
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 266
    .line 267
    if-eq v9, v0, :cond_c

    .line 268
    .line 269
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 270
    .line 271
    if-ne v9, v0, :cond_b

    .line 272
    .line 273
    goto :goto_8

    .line 274
    :cond_b
    move v0, v2

    .line 275
    goto :goto_9

    .line 276
    :cond_c
    :goto_8
    move v0, v1

    .line 277
    :cond_d
    :goto_9
    add-int/lit8 v8, v8, 0x1

    .line 278
    .line 279
    goto :goto_7

    .line 280
    :catch_1
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 282
    .line 283
    .line 284
    :cond_e
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->j()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v5

    .line 290
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-nez v6, :cond_10

    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    if-eqz v6, :cond_f

    .line 301
    .line 302
    invoke-virtual {v6}, Ldu/a;->p()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v6

    .line 306
    goto :goto_a

    .line 307
    :cond_f
    move-object v6, v4

    .line 308
    :goto_a
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v5

    .line 312
    goto :goto_b

    .line 313
    :cond_10
    move v5, v2

    .line 314
    :goto_b
    const/16 v6, 0x7f1

    .line 315
    .line 316
    if-eqz v5, :cond_12

    .line 317
    .line 318
    iget v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 319
    .line 320
    if-eq v0, v7, :cond_11

    .line 321
    .line 322
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    new-instance v5, Ljava/lang/StringBuilder;

    .line 329
    .line 330
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    const-string v1, " --> doBlindConnect() --> Connect Step 9 addNetSucceed"

    .line 337
    .line 338
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    if-eqz v0, :cond_14

    .line 353
    .line 354
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 355
    .line 356
    invoke-interface {v0, v1}, Lcom/transsion/transfer/wifi/connect/b;->d(I)V

    .line 357
    .line 358
    .line 359
    goto/16 :goto_d

    .line 360
    .line 361
    :cond_11
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    new-instance v5, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v1, " --> doBlindConnect() --> Connect Step 9 SHOW_RETRY"

    .line 376
    .line 377
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_14

    .line 392
    .line 393
    invoke-interface {v0, v6}, Lcom/transsion/transfer/wifi/connect/b;->b(I)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_d

    .line 397
    .line 398
    :cond_12
    sget-object v5, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 399
    .line 400
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v8

    .line 404
    iget v9, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 405
    .line 406
    new-instance v10, Ljava/lang/StringBuilder;

    .line 407
    .line 408
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    const-string v8, " --> doBlindConnect() --> Connect Step 9.1 blindConnectCounts\uff1a"

    .line 415
    .line 416
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    invoke-static {v5, v8, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 427
    .line 428
    .line 429
    iget v8, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 430
    .line 431
    iget v9, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->p:I

    .line 432
    .line 433
    if-ge v8, v9, :cond_13

    .line 434
    .line 435
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 440
    .line 441
    .line 442
    :try_start_2
    iget-wide v5, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->n:J

    .line 443
    .line 444
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 445
    .line 446
    .line 447
    goto :goto_c

    .line 448
    :catch_2
    move-exception v0

    .line 449
    sget-object v5, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 450
    .line 451
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v6

    .line 455
    new-instance v8, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    const-string v6, " --> doBlindConnect() --> blindConnectCounts InterruptedException: "

    .line 464
    .line 465
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-static {v5, v0, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 476
    .line 477
    .line 478
    :goto_c
    iput v7, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 479
    .line 480
    iput-boolean v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 481
    .line 482
    iget v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 483
    .line 484
    add-int/2addr v0, v1

    .line 485
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 486
    .line 487
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->t()V

    .line 488
    .line 489
    .line 490
    goto :goto_d

    .line 491
    :cond_13
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v0

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v0, " --> doBlindConnect() --> Connect Step 9.1 SHOW_RETRY"

    .line 504
    .line 505
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    invoke-static {v5, v0, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    if-eqz v0, :cond_14

    .line 520
    .line 521
    invoke-interface {v0, v6}, Lcom/transsion/transfer/wifi/connect/b;->b(I)V

    .line 522
    .line 523
    .line 524
    :cond_14
    :goto_d
    return-void
.end method

.method private final s()V
    .locals 5

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/c;->a:Lcom/transsion/transfer/wifi/util/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/c;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "getApplicationContext(...)"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/transsion/transfer/wifi/util/c;->d(Landroid/content/Context;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    const-wide/32 v2, 0x200000

    .line 27
    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-gez v0, :cond_0

    .line 32
    .line 33
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " --> initParameter() --> Transsion Phone lowMemLimit"

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x2

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static {v0, v1, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    const-wide/16 v0, 0x5dc

    .line 63
    .line 64
    iput-wide v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->n:J

    .line 65
    .line 66
    const/16 v0, 0x1e

    .line 67
    .line 68
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->q:I

    .line 69
    .line 70
    const/16 v0, 0x14

    .line 71
    .line 72
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->j:I

    .line 73
    .line 74
    const/16 v0, 0x8

    .line 75
    .line 76
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->p:I

    .line 77
    .line 78
    :cond_0
    return-void
.end method

.method private final t()V
    .locals 14

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {v3}, Ldu/a;->p()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v3, v4

    .line 21
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " --> processWifiConnect() --> Connect Step 2 CONNECTION_INITIALIZED --> ssid = "

    .line 30
    .line 31
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " --> startScan()"

    .line 38
    .line 39
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v5, 0x2

    .line 48
    invoke-static {v1, v2, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object v2, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {v2}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v7, "getConfiguredNetworks(...)"

    .line 81
    .line 82
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    new-instance v9, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v7, " --> processWifiConnect() --> Connect Step 2.1  --> currentConnectId = "

    .line 102
    .line 103
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v7, " --> existingConfigs.size = "

    .line 110
    .line 111
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-static {v1, v7, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    const/4 v7, -0x1

    .line 133
    if-eqz v2, :cond_4

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 140
    .line 141
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 142
    .line 143
    const-string v9, "SSID"

    .line 144
    .line 145
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    const/4 v12, 0x4

    .line 149
    const/4 v13, 0x0

    .line 150
    const-string v9, "\""

    .line 151
    .line 152
    const-string v10, ""

    .line 153
    .line 154
    const/4 v11, 0x0

    .line 155
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v8

    .line 159
    iget-object v9, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 162
    .line 163
    .line 164
    move-result v10

    .line 165
    if-nez v10, :cond_1

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    if-eqz v10, :cond_2

    .line 172
    .line 173
    invoke-virtual {v10}, Ldu/a;->p()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    goto :goto_1

    .line 178
    :cond_2
    move-object v10, v4

    .line 179
    :goto_1
    invoke-static {v10, v8, v3, v5, v4}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_1

    .line 184
    .line 185
    iget v1, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 186
    .line 187
    iput v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 188
    .line 189
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    iget v10, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 196
    .line 197
    new-instance v11, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    const-string v2, " --> processWifiConnect() --> Connect Step 2.2  currentConnectId = "

    .line 206
    .line 207
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v2, " -- netId = "

    .line 214
    .line 215
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v2, " -- pwd = "

    .line 222
    .line 223
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-static {v1, v2, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    sget v10, Lcom/transsion/transfer/R$string;->wifi_direct_prefix:I

    .line 245
    .line 246
    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    const-string v10, "getString(...)"

    .line 251
    .line 252
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-static {v8, v2, v3, v5, v4}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    const-string v10, ", netId = "

    .line 260
    .line 261
    if-eqz v2, :cond_3

    .line 262
    .line 263
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_3

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    iget v6, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 274
    .line 275
    new-instance v9, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v2, " --> processWifiConnect() --> Connect Step 2.3  error pwd type save WifiConfiguration SSID = "

    .line 284
    .line 285
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v1, v2, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 302
    .line 303
    .line 304
    iput v7, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 305
    .line 306
    iput-boolean v3, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 307
    .line 308
    goto :goto_2

    .line 309
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    iget v9, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 314
    .line 315
    new-instance v11, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v2, " --> processWifiConnect() --> Connect Step 2.4  reEnableNetWork WifiConfiguration SSID = "

    .line 324
    .line 325
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-static {v1, v2, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 342
    .line 343
    .line 344
    iput v6, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 345
    .line 346
    sget-object v1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 347
    .line 348
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 353
    .line 354
    .line 355
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 356
    .line 357
    invoke-direct {p0, v1}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->w(I)V

    .line 358
    .line 359
    .line 360
    iput-boolean v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 361
    .line 362
    :cond_4
    :goto_2
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 363
    .line 364
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    iget v6, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 369
    .line 370
    iget-boolean v8, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 371
    .line 372
    new-instance v9, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    const-string v2, " --> processWifiConnect() --> Connect Step 2.4-1  \u5217\u8868\u904d\u5386\u7ed3\u675f --> netId = "

    .line 381
    .line 382
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v2, " -- findOldConfig = "

    .line 389
    .line 390
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-static {v1, v2, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    iget-boolean v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 404
    .line 405
    if-nez v1, :cond_f

    .line 406
    .line 407
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->j:I

    .line 408
    .line 409
    move v2, v3

    .line 410
    :goto_3
    if-ge v2, v1, :cond_f

    .line 411
    .line 412
    sget-object v6, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 413
    .line 414
    invoke-virtual {v6}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 415
    .line 416
    .line 417
    move-result-object v6

    .line 418
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    iput-object v6, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->m:Ljava/util/List;

    .line 423
    .line 424
    if-eqz v6, :cond_a

    .line 425
    .line 426
    sget-object v8, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 427
    .line 428
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v9

    .line 432
    iget-object v10, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->m:Ljava/util/List;

    .line 433
    .line 434
    if-eqz v10, :cond_5

    .line 435
    .line 436
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 437
    .line 438
    .line 439
    move-result v10

    .line 440
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v10

    .line 444
    goto :goto_4

    .line 445
    :cond_5
    move-object v10, v4

    .line 446
    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    .line 447
    .line 448
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .line 450
    .line 451
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    const-string v9, " --> processWifiConnect() --> Connect Step 2.5  Start WifiScan Retry counts:+ i +, ScanResultList Size: "

    .line 455
    .line 456
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v9

    .line 466
    invoke-static {v8, v9, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 467
    .line 468
    .line 469
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 470
    .line 471
    .line 472
    move-result-object v6

    .line 473
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 474
    .line 475
    .line 476
    move-result v8

    .line 477
    if-eqz v8, :cond_a

    .line 478
    .line 479
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    move-result-object v8

    .line 483
    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 484
    .line 485
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 486
    .line 487
    .line 488
    move-result-object v9

    .line 489
    if-eqz v9, :cond_7

    .line 490
    .line 491
    invoke-virtual {v9}, Ldu/a;->p()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v9

    .line 495
    goto :goto_5

    .line 496
    :cond_7
    move-object v9, v4

    .line 497
    :goto_5
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 498
    .line 499
    invoke-static {v9, v10, v3, v5, v4}, Lkotlin/text/StringsKt;->I(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 500
    .line 501
    .line 502
    move-result v9

    .line 503
    if-eqz v9, :cond_6

    .line 504
    .line 505
    sget-object v9, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 506
    .line 507
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v10

    .line 511
    iget-object v11, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 512
    .line 513
    iget-object v12, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 514
    .line 515
    new-instance v13, Ljava/lang/StringBuilder;

    .line 516
    .line 517
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    const-string v10, " --> processWifiConnect() --> Connect Step 3 Find XShare HotSpot , Start Connect to Target WIFI , SSID = "

    .line 524
    .line 525
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v10, " +  capabilities =  "

    .line 532
    .line 533
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v10

    .line 543
    invoke-static {v9, v10, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 547
    .line 548
    .line 549
    move-result-object v10

    .line 550
    if-eqz v10, :cond_8

    .line 551
    .line 552
    invoke-virtual {v10}, Ldu/a;->p()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v10

    .line 556
    goto :goto_6

    .line 557
    :cond_8
    move-object v10, v4

    .line 558
    :goto_6
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 559
    .line 560
    .line 561
    move-result-object v11

    .line 562
    if-eqz v11, :cond_9

    .line 563
    .line 564
    invoke-virtual {v11}, Ldu/a;->o()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v11

    .line 568
    goto :goto_7

    .line 569
    :cond_9
    move-object v11, v4

    .line 570
    :goto_7
    iget-object v8, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 571
    .line 572
    invoke-direct {p0, v10, v11, v8}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .line 574
    .line 575
    move-result v8

    .line 576
    iput v8, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 577
    .line 578
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v8

    .line 582
    iget v10, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 583
    .line 584
    new-instance v11, Ljava/lang/StringBuilder;

    .line 585
    .line 586
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v8, " --> processWifiConnect() --> Connect Step 3.1 Connect to Target WIFI Finished -- netId = "

    .line 593
    .line 594
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v8

    .line 604
    invoke-static {v9, v8, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 605
    .line 606
    .line 607
    iget v8, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 608
    .line 609
    if-eq v8, v7, :cond_6

    .line 610
    .line 611
    :cond_a
    iget v6, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 612
    .line 613
    if-eq v6, v7, :cond_b

    .line 614
    .line 615
    goto :goto_b

    .line 616
    :cond_b
    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 617
    .line 618
    iget-wide v8, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->n:J

    .line 619
    .line 620
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 621
    .line 622
    .line 623
    rem-int/lit8 v6, v2, 0x3

    .line 624
    .line 625
    if-nez v6, :cond_c

    .line 626
    .line 627
    sget-object v6, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 628
    .line 629
    invoke-virtual {v6}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 630
    .line 631
    .line 632
    move-result-object v6

    .line 633
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 634
    .line 635
    .line 636
    goto :goto_8

    .line 637
    :catchall_0
    move-exception v6

    .line 638
    goto :goto_9

    .line 639
    :cond_c
    :goto_8
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 640
    .line 641
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    goto :goto_a

    .line 646
    :goto_9
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 647
    .line 648
    invoke-static {v6}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v6

    .line 652
    invoke-static {v6}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v6

    .line 656
    :goto_a
    invoke-static {v6}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 657
    .line 658
    .line 659
    move-result-object v6

    .line 660
    if-nez v6, :cond_d

    .line 661
    .line 662
    add-int/2addr v2, v0

    .line 663
    goto/16 :goto_3

    .line 664
    .line 665
    :cond_d
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 666
    .line 667
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v1

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    const-string v1, " --> processWifiConnect() --> CONFIGURED_WIFI InterruptedException --> it = "

    .line 680
    .line 681
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    invoke-static {v0, v1, v3, v5, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    if-eqz v0, :cond_e

    .line 699
    .line 700
    const/16 v1, 0x7ef

    .line 701
    .line 702
    invoke-interface {v0, v1}, Lcom/transsion/transfer/wifi/connect/b;->b(I)V

    .line 703
    .line 704
    .line 705
    :cond_e
    return-void

    .line 706
    :cond_f
    :goto_b
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->u()V

    .line 707
    .line 708
    .line 709
    return-void
.end method

.method private final u()V
    .locals 11

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> processWifiScanResult() --> Connect Step 4 processWifiScanResult findOldConfig = "

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x2

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 36
    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->q()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_8

    .line 43
    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->r()Landroid/net/NetworkInfo$DetailedState;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 52
    .line 53
    if-eq v0, v5, :cond_2

    .line 54
    .line 55
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 56
    .line 57
    if-ne v0, v5, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v0, v2

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_0
    move v0, v1

    .line 63
    :goto_1
    move v5, v2

    .line 64
    :goto_2
    if-eqz v0, :cond_6

    .line 65
    .line 66
    iget v6, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->q:I

    .line 67
    .line 68
    if-ge v5, v6, :cond_6

    .line 69
    .line 70
    iget-boolean v6, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->h:Z

    .line 71
    .line 72
    if-nez v6, :cond_6

    .line 73
    .line 74
    const-wide/16 v6, 0x15e

    .line 75
    .line 76
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->r()Landroid/net/NetworkInfo$DetailedState;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-eqz v6, :cond_5

    .line 84
    .line 85
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 86
    .line 87
    if-eq v6, v0, :cond_4

    .line 88
    .line 89
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 90
    .line 91
    if-ne v6, v0, :cond_3

    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    move v0, v2

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    :goto_3
    move v0, v1

    .line 97
    :cond_5
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 98
    .line 99
    goto :goto_2

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_6
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->j()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-nez v6, :cond_8

    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    if-eqz v6, :cond_7

    .line 121
    .line 122
    invoke-virtual {v6}, Ldu/a;->p()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    goto :goto_5

    .line 127
    :cond_7
    move-object v6, v4

    .line 128
    :goto_5
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    goto :goto_6

    .line 133
    :cond_8
    move v5, v2

    .line 134
    :goto_6
    const/16 v6, 0x7f0

    .line 135
    .line 136
    const/4 v7, -0x1

    .line 137
    if-eqz v5, :cond_a

    .line 138
    .line 139
    iget v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 140
    .line 141
    if-eq v0, v7, :cond_9

    .line 142
    .line 143
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v1, " --> processWifiScanResult() --> Connect Step 7 addNetSucceed"

    .line 158
    .line 159
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_c

    .line 174
    .line 175
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 176
    .line 177
    invoke-interface {v0, v1}, Lcom/transsion/transfer/wifi/connect/b;->d(I)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_8

    .line 181
    .line 182
    :cond_9
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, " --> processWifiScanResult() --> Connect Step 7 SHOW_RETRY"

    .line 197
    .line 198
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    invoke-interface {v0, v6}, Lcom/transsion/transfer/wifi/connect/b;->b(I)V

    .line 215
    .line 216
    .line 217
    goto/16 :goto_8

    .line 218
    .line 219
    :cond_a
    sget-object v5, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v8

    .line 225
    iget v9, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 226
    .line 227
    new-instance v10, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v8, " --> processWifiScanResult() --> Connect Step 7.1 blindConnectCounts = "

    .line 236
    .line 237
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    invoke-static {v5, v8, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 248
    .line 249
    .line 250
    iget v8, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 251
    .line 252
    iget v9, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->p:I

    .line 253
    .line 254
    if-ge v8, v9, :cond_b

    .line 255
    .line 256
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 261
    .line 262
    .line 263
    :try_start_1
    iget-wide v5, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->n:J

    .line 264
    .line 265
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    .line 267
    .line 268
    goto :goto_7

    .line 269
    :catch_1
    move-exception v0

    .line 270
    sget-object v5, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 271
    .line 272
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    new-instance v8, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v6, " --> processWifiScanResult() --> blindConnectCounts InterruptedException: "

    .line 285
    .line 286
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v5, v0, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    :goto_7
    iput v7, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->e:I

    .line 300
    .line 301
    iput-boolean v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->f:Z

    .line 302
    .line 303
    iget v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 304
    .line 305
    add-int/2addr v0, v1

    .line 306
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 307
    .line 308
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->q()V

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_b
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    const-string v0, " --> processWifiScanResult() --> Connect Step 7.1 SHOW_RETRY"

    .line 325
    .line 326
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v5, v0, v2, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->h()Lcom/transsion/transfer/wifi/connect/b;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    if-eqz v0, :cond_c

    .line 341
    .line 342
    invoke-interface {v0, v6}, Lcom/transsion/transfer/wifi/connect/b;->b(I)V

    .line 343
    .line 344
    .line 345
    :cond_c
    :goto_8
    return-void
.end method

.method private final v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v4, " --> reConnect() --> ssid:"

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v4, ", pass:"

    .line 27
    .line 28
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v4, ", type:"

    .line 35
    .line 36
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v3, v4, v2, v1, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const-wide/16 v3, 0x12c

    .line 50
    .line 51
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return p1

    .line 59
    :catch_0
    move-exception p1

    .line 60
    sget-object p2, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p3, " --> reConnect() --> reConnect InterruptedException: "

    .line 75
    .line 76
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-static {p2, p1, v2, v1, v0}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    const/4 p1, -0x1

    .line 90
    return p1
.end method

.method private final w(I)V
    .locals 3

    .line 1
    :try_start_0
    iput p1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->k:I

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "reEnableNetWork() --> set network id = "

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->j(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq v0, v1, :cond_0

    .line 27
    .line 28
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->k:I

    .line 29
    .line 30
    if-eq v0, v1, :cond_0

    .line 31
    .line 32
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    const/16 v1, 0x17

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    if-gt v0, v1, :cond_2

    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->p(I)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    const/4 p1, 0x0

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    :goto_1
    if-nez p1, :cond_3

    .line 83
    .line 84
    sget-object p1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reassociate()Z

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    goto :goto_3

    .line 97
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_3
    return-void
.end method

.method private final x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->o:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 5
    .line 6
    iget v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->k:I

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v4, "removeOldNetwork() --> removeOldNetwork mLastNetworkId = "

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, " --> mCurrentNetworkId = "

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->j(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    iget v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->k:I

    .line 42
    .line 43
    if-eq v1, v2, :cond_1

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "removeOldNetwork() --> remove network id:"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v1}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->j(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    move v2, v1

    .line 67
    :goto_0
    const/16 v3, 0xa

    .line 68
    .line 69
    if-ge v1, v3, :cond_0

    .line 70
    .line 71
    if-nez v2, :cond_0

    .line 72
    .line 73
    :try_start_1
    sget-object v3, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iget v4, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->l:I

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v4, "removeOldNetwork() --> removeNetwork Result = "

    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {p0, v3}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->j(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v1

    .line 107
    goto :goto_2

    .line 108
    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    :try_start_2
    sget-object v1, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->m()Landroid/net/wifi/WifiManager;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 118
    .line 119
    .line 120
    :cond_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 124
    :goto_2
    monitor-exit v0

    .line 125
    throw v1
.end method


# virtual methods
.method public c()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->i:Landroid/net/Network;

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    iput-object v2, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->i:Landroid/net/Network;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v3

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "connectivity"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v4, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 30
    .line 31
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v3, Landroid/net/ConnectivityManager;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    .line 37
    .line 38
    .line 39
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v4, " --> releaseDefaultNetwork() --> end"

    .line 54
    .line 55
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v3, v4, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_2

    .line 72
    :goto_1
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 73
    .line 74
    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :goto_2
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_1
    sget-object v4, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v5, " --> releaseDefaultNetwork() --> it = "

    .line 104
    .line 105
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-static {v4, v3, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :goto_3
    return-void
.end method

.method public d()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->g:I

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;->h:Z

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->e()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->i()Ldu/a;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " --> connect() --> \u7cfb\u7edf\u7ea7\u63a5\u5165\u65b9\u5f00\u59cb\u6dfb\u52a0\u7f51\u7edc = "

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x2

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-static {v1, v2, v0, v3, v4}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/connect/adapter/BaseWifiConnectAdapter;->g()Lkotlinx/coroutines/n0;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    .line 47
    new-instance v8, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$doConnect$1;

    .line 48
    .line 49
    invoke-direct {v8, p0, v4}, Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter$doConnect$1;-><init>(Lcom/transsion/transfer/wifi/connect/adapter/AddNetWorkConnectAdapter;Lkotlin/coroutines/Continuation;)V

    .line 50
    .line 51
    .line 52
    const/4 v9, 0x3

    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    const/4 v7, 0x0

    .line 56
    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method public final r()Landroid/net/NetworkInfo$DetailedState;
    .locals 2

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "connectivity"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "null cannot be cast to non-null type android.net.ConnectivityManager"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0
.end method
