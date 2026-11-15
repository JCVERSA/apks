.class public final Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;
.super Lcom/transsion/transfer/wifi/create/adapter/b;
.source "source.java"


# instance fields
.field private final d:I

.field private e:I

.field private f:I

.field private final g:Lkotlin/Lazy;

.field private h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xa

    .line 5
    .line 6
    iput v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->d:I

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/transfer/wifi/create/adapter/j;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/create/adapter/j;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->g:Lkotlin/Lazy;

    .line 18
    .line 19
    return-void
.end method

.method private static final A(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    iget-object p2, p2, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    .line 7
    .line 8
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, " --> requestConnectionInfo() --> Group Owner Address = "

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v3, v4, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->v(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Ldu/a;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v4, v5}, Ldu/a;->H(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Ldu/a;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v4, p1}, Ldu/a;->G(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Ldu/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Ldu/a;->F(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p1, " --> requestConnectionInfo() --> \u6700\u7ec8ip\u4e3a correctIp = "

    .line 95
    .line 96
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {v3, p1, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    new-instance v7, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestConnectionInfo$1$1$1;

    .line 116
    .line 117
    invoke-direct {v7, p0, v2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestConnectionInfo$1$1$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    .line 118
    .line 119
    .line 120
    const/4 v8, 0x3

    .line 121
    const/4 v9, 0x0

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    new-instance p2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string p1, " --> requestConnectionInfo() --> \u83b7\u53d6\u53ef\u8fde\u63a5Ip\u5931\u8d25 --> correctIp \u4e3a\u7a7a"

    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-static {v3, p1, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->D()V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_4
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string p2, " --> requestConnectionInfo() --> \u83b7\u53d6\u53ef\u8fde\u63a5\u4fe1\u606f\u5931\u8d25 (p2pInfo == null)"

    .line 171
    .line 172
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-static {p1, p2, v1, v0, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->D()V

    .line 183
    .line 184
    .line 185
    :cond_5
    :goto_0
    return-void
.end method

.method private final B(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->label:I

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
    iput v1, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v5, :cond_1

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->f:I

    .line 57
    .line 58
    iget v2, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->d:I

    .line 59
    .line 60
    if-lt p1, v2, :cond_3

    .line 61
    .line 62
    const/16 p1, 0x65

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->x(I)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 68
    .line 69
    return-object p1

    .line 70
    :cond_3
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget v7, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->f:I

    .line 77
    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, " --> requestGroupInfo() --> Wi-Fi P2P \u521b\u5efa\u6210\u529f\u4e4b\u540e\uff0c\u5c06\u81ea\u5df1\u6dfb\u52a0\u5230\u7fa4\u7ec4 --> \u7b2c"

    .line 87
    .line 88
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, " \u6b21\u83b7\u53d6\u70ed\u70b9\u76f8\u5173\u4fe1\u606f"

    .line 95
    .line 96
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {p1, v2, v4, v3, v6}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iput v5, v0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$requestGroupInfo$1;->label:I

    .line 107
    .line 108
    const-wide/16 v7, 0x12c

    .line 109
    .line 110
    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p1, v1, :cond_4

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 118
    .line 119
    if-eqz p1, :cond_6

    .line 120
    .line 121
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_5

    .line 126
    .line 127
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 128
    .line 129
    new-instance v1, Lcom/transsion/transfer/wifi/create/adapter/k;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/transsion/transfer/wifi/create/adapter/k;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 135
    .line 136
    .line 137
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    move-object p1, v6

    .line 141
    :goto_2
    if-nez p1, :cond_7

    .line 142
    .line 143
    :cond_6
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v0, " --> requestGroupInfo() --> p2pChannel == null --> \u5931\u8d25\u91cd\u8bd5 --> retryCreate()"

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {p1, v0, v4, v3, v6}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    .line 170
    .line 171
    .line 172
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    return-object p1
.end method

.method private static final C(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    sget-object v3, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v4, " --> requestGroupInfo() --> requestGroupInfo() --> \u83b7\u53d6Group\u4fe1\u606f\u6210\u529f,\u5f00\u59cb\u83b7\u53d6\u8fde\u63a5\u4fe1\u606f"

    .line 21
    .line 22
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-static {v3, v4, v2, v1, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->z(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v3, " --> requestGroupInfo() --> \u83b7\u53d6Group\u4fe1\u606f\u5931\u8d25 --> wifiP2pGroup == null"

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {p1, v3, v2, v1, v0}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->D()V

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method private final D()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$retry$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, v1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$retry$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final E()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    .line 6
    .line 7
    iget v2, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->d:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    if-gt v0, v2, :cond_2

    .line 13
    .line 14
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    iget v6, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    .line 21
    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v2, " --> retryCreate() --> \u91cd\u65b0\u521b\u5efa\u70ed\u70b9 -- \u5931\u8d25\u6b21\u6570 = "

    .line 31
    .line 32
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2, v4, v3, v5}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    .line 46
    .line 47
    if-le v0, v1, :cond_1

    .line 48
    .line 49
    const/4 v1, 0x5

    .line 50
    if-ne v0, v1, :cond_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    new-instance v9, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$retryCreate$1;

    .line 60
    .line 61
    invoke-direct {v9, p0, v5}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$retryCreate$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    .line 62
    .line 63
    .line 64
    const/4 v10, 0x3

    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v8, 0x0

    .line 68
    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->r()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget v2, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->e:I

    .line 83
    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " --> retryCreate() --> \u91cd\u8bd5\u6b21\u6570 = "

    .line 93
    .line 94
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, "\uff0c\u5224\u5b9a\u521b\u5efa\u70ed\u70b9\u5931\u8d25"

    .line 101
    .line 102
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-static {v0, v1, v4, v3, v5}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/16 v0, 0x66

    .line 113
    .line 114
    invoke-direct {p0, v0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->x(I)V

    .line 115
    .line 116
    .line 117
    :cond_3
    :goto_1
    return-void
.end method

.method private final F()V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x2

    .line 5
    new-instance v4, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$a;

    .line 6
    .line 7
    invoke-direct {v4, p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$a;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    .line 8
    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 14
    .line 15
    .line 16
    move-result-object v6

    .line 17
    if-eqz v6, :cond_3

    .line 18
    .line 19
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    const-string v7, "setDeviceName"

    .line 24
    .line 25
    new-array v8, v1, [Ljava/lang/Class;

    .line 26
    .line 27
    const-class v9, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 28
    .line 29
    aput-object v9, v8, v2

    .line 30
    .line 31
    const-class v9, Ljava/lang/String;

    .line 32
    .line 33
    aput-object v9, v8, v0

    .line 34
    .line 35
    const-class v9, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .line 36
    .line 37
    aput-object v9, v8, v3

    .line 38
    .line 39
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    sget-object v7, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Ldu/a;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    if-eqz v10, :cond_0

    .line 56
    .line 57
    invoke-virtual {v10}, Ldu/a;->p()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v10

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_3

    .line 64
    :cond_0
    move-object v10, v5

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Ldu/a;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    if-eqz v11, :cond_1

    .line 70
    .line 71
    invoke-virtual {v11}, Ldu/a;->m()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move-object v11, v5

    .line 77
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v8, " --> setDeviceName() --> API < 29 -- Android"

    .line 86
    .line 87
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v8, "\u8bbe\u5907(Q\u4ee5\u4e0a\u4e0b) \u521b\u5efa --> WIFI\u540d\u79f0 = "

    .line 94
    .line 95
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v8, " -- WIFI\u9891\u6bb5 = "

    .line 102
    .line 103
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    invoke-static {v7, v8, v2, v3, v5}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    iget-object v8, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Ldu/a;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    if-eqz v9, :cond_2

    .line 127
    .line 128
    invoke-virtual {v9}, Ldu/a;->p()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v9

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    move-object v9, v5

    .line 134
    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 135
    .line 136
    aput-object v8, v1, v2

    .line 137
    .line 138
    aput-object v9, v1, v0

    .line 139
    .line 140
    aput-object v4, v1, v3

    .line 141
    .line 142
    invoke-virtual {v6, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    goto :goto_4

    .line 152
    :goto_3
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 153
    .line 154
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    if-nez v0, :cond_4

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_4
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v4, " --> setDeviceName() --> Build.VERSION.SDK_INT < Q --> \u53cd\u5c04\u521b\u5efa\u5931\u8d25 -->exception = "

    .line 184
    .line 185
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v0, " --> \u5931\u8d25\u91cd\u8bd5"

    .line 192
    .line 193
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v1, v0, v2, v3, v5}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    .line 204
    .line 205
    .line 206
    :goto_5
    return-void
.end method

.method private static final G()Landroid/net/wifi/p2p/WifiP2pManager;
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
    const-string v1, "wifip2p"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return-object v0
.end method

.method public static synthetic j(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->C(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->A(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;Landroid/net/wifi/p2p/WifiP2pInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->G()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic m(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic o(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->B(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->f:I

    .line 2
    .line 3
    return-void
.end method

.method private final r()V
    .locals 7

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v4, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v4, v0, p0, v3}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$closeWifiAndReCreateHot$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Lkotlin/coroutines/Continuation;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private final s()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroup$1$1;

    .line 13
    .line 14
    invoke-direct {v3, p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroup$1$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v1

    .line 24
    :goto_0
    if-nez v0, :cond_2

    .line 25
    .line 26
    :cond_1
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, " --> createGroup() --> p2pChannel == null --> \u5931\u8d25\u91cd\u8bd5"

    .line 41
    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x2

    .line 51
    invoke-static {v0, v2, v3, v4, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method private final t(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/transsion/transfer/wifi/create/adapter/h;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$createGroupQ$1$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, v0, p1, v3}, Lcom/transsion/transfer/wifi/create/adapter/i;->a(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v1

    .line 28
    :goto_0
    if-nez p1, :cond_2

    .line 29
    .line 30
    :cond_1
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " --> createGroupQ() --> p2pChannel == null --> \u5931\u8d25\u91cd\u8bd5"

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const/4 v2, 0x0

    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-static {p1, v0, v2, v3, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method private final u()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Ldu/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ldu/a;->p()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :cond_1
    const/4 v2, 0x0

    .line 17
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 18
    .line 19
    sget-object v3, Lcom/transsion/transfer/wifi/util/b;->a:Lcom/transsion/transfer/wifi/util/b;

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Lcom/transsion/transfer/wifi/util/b;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 v4, 0x8

    .line 26
    .line 27
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "substring(...)"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v3

    .line 42
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 43
    .line 44
    invoke-static {v3}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    :goto_0
    invoke-static {v3}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-nez v4, :cond_2

    .line 57
    .line 58
    move-object v1, v3

    .line 59
    :cond_2
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {}, Lcom/transsion/transfer/wifi/create/adapter/d;->a()Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v3, v0}, Lcom/transsion/transfer/wifi/create/adapter/e;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3, v1}, Lcom/transsion/transfer/wifi/create/adapter/f;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const-string v4, "setPassphrase(...)"

    .line 74
    .line 75
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->e()Ldu/a;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    const/4 v5, 0x2

    .line 83
    const/4 v6, 0x1

    .line 84
    if-eqz v4, :cond_3

    .line 85
    .line 86
    invoke-virtual {v4}, Ldu/a;->a()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-ne v4, v6, :cond_3

    .line 91
    .line 92
    invoke-static {v3, v5}, Lcom/transsion/transfer/wifi/create/adapter/g;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    .line 93
    .line 94
    .line 95
    const-string v4, "5G"

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-static {v3, v6}, Lcom/transsion/transfer/wifi/create/adapter/g;->a(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;

    .line 99
    .line 100
    .line 101
    const-string v4, "2.4G"

    .line 102
    .line 103
    :goto_1
    sget-object v6, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 110
    .line 111
    new-instance v9, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v7, " --> createWifiP2pGroup() --> API >= 29 -- Android"

    .line 120
    .line 121
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v7, "\u8bbe\u5907(Q\u53ca\u5176\u4ee5\u4e0a) \u521b\u5efa --> WIFI\u540d\u79f0 = "

    .line 128
    .line 129
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v0, " -- \u5bc6\u7801 = "

    .line 136
    .line 137
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " -- WIFI\u9891\u6bb5 = "

    .line 144
    .line 145
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    const/4 v1, 0x0

    .line 156
    invoke-static {v6, v0, v2, v5, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-direct {p0, v3}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->t(Landroid/net/wifi/p2p/WifiP2pConfig$Builder;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method

.method private final v(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/transfer/wifi/util/WifiUtils;->g(Ljava/net/InetAddress;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x2

    .line 13
    const/4 v4, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " --> getCorrectIp() --> ip --> getCorrectOwnerAddress() = "

    .line 31
    .line 32
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/transsion/transfer/wifi/util/WifiUtils;->l()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    sget-object v0, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, " --> getCorrectIp() --> ip --> localIP() = "

    .line 65
    .line 66
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1, v4, v3, v2}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-object p1
.end method

.method private final w()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->g:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 8
    .line 9
    return-object v0
.end method

.method private final x(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->c()Lkotlinx/coroutines/n0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$onFail$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p0, p1, v1}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter$onFail$1;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final z(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    new-instance v3, Lcom/transsion/transfer/wifi/create/adapter/l;

    .line 13
    .line 14
    invoke-direct {v3, p0, p1}, Lcom/transsion/transfer/wifi/create/adapter/l;-><init>(Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v1

    .line 24
    :goto_0
    if-nez p1, :cond_2

    .line 25
    .line 26
    :cond_1
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, " --> requestConnectionInfo() --> p2pChannel == null --> \u5931\u8d25\u91cd\u8bd5 --> retryCreate()"

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x2

    .line 51
    invoke-static {p1, v0, v2, v3, v1}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->E()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object p1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, " --> createWifiHot() --> start"

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static {p1, v0, v1, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v0, v4, v5, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v0, v3

    .line 54
    :goto_0
    iput-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 55
    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    sget-object v4, Lcom/transsion/transfer/wifi/util/WifiUtils;->a:Lcom/transsion/transfer/wifi/util/WifiUtils;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/transsion/transfer/wifi/util/WifiUtils;->s()Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    const-string v5, " --> createWifiHot() --> Android"

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    new-instance v6, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, "\u8bbe\u5907(Q\u4ee5\u4e0b) \u5f00\u59cb\u521b\u5efaP2P WIFI\u70ed\u70b9"

    .line 87
    .line 88
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {p1, v0, v1, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->F()V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    new-instance v6, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v0, "\u8bbe\u5907(Q\u53ca\u5176\u4ee5\u4e0a) \u5f00\u59cb\u521b\u5efaP2P WIFI\u70ed\u70b9"

    .line 121
    .line 122
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {p1, v0, v1, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->b(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->u()V

    .line 133
    .line 134
    .line 135
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    return-object p1
.end method

.method public f()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->y()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/wifi/create/adapter/b;->g(Lkotlinx/coroutines/n0;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/transsion/transfer/wifi/create/adapter/b;->h(Lcom/transsion/transfer/wifi/create/a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 12
    .line 13
    return-void
.end method

.method public y()V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    sget-object v1, Lcom/transsion/transfer/wifi/util/i;->a:Lcom/transsion/transfer/wifi/util/i;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->w()Landroid/net/wifi/p2p/WifiP2pManager;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iget-object v3, p0, Lcom/transsion/transfer/wifi/create/adapter/P2PWifiAdapter;->h:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    invoke-virtual/range {v1 .. v7}, Lcom/transsion/transfer/wifi/util/i;->d(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZZZZ)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    sget-object v1, Lcom/transsion/transfer/wifi/util/g;->a:Lcom/transsion/transfer/wifi/util/g;

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/transfer/wifi/create/adapter/b;->b()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, " --> releaseWifiP2P() --> \u5173\u95edP2P\u9891\u6bb5\u5f02\u5e38 -- it = "

    .line 58
    .line 59
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v2, 0x2

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-static {v1, v0, v4, v2, v3}, Lcom/transsion/transfer/wifi/util/g;->d(Lcom/transsion/transfer/wifi/util/g;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method
