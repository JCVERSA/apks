.class public Lcom/transsion/api/gateway/dns/GateWayDns;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field public static a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/transsion/api/gateway/dns/GateWayDns;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/transsion/api/gateway/dns/GateWayDns;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/transsion/api/gateway/dns/GateWayDns;->mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/transsion/api/gateway/dns/GateWayDns;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/transsion/api/gateway/dns/GateWayDns;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/transsion/api/gateway/dns/GateWayDns;->mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->mInstance:Lcom/transsion/api/gateway/dns/GateWayDns;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public getIsUseGatewayDns()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 2
    .line 3
    const-string v1, "look up"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/transsion/api/gateway/config/b;->a()Lcom/transsion/api/gateway/config/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Lcom/transsion/api/gateway/config/b;->a:Lcom/transsion/api/gateway/config/a;

    .line 13
    .line 14
    iget-boolean v0, v0, Lcom/transsion/api/gateway/config/a;->a:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 19
    .line 20
    const-string v1, "dns function closed"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    invoke-static {p1}, Lcom/transsion/api/gateway/utils/GatewayUtils;->canUseGateWay(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/api/gateway/dns/GateWayDns;->getIsUseGatewayDns()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 52
    .line 53
    const-string v1, "use dns"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 59
    .line 60
    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    return-object p1

    .line 65
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/transsion/api/gateway/dns/c;->a()Lcom/transsion/api/gateway/dns/c;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    const-class v1, Lcom/transsion/api/gateway/dns/c;

    .line 78
    .line 79
    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v2, Lcom/transsion/api/gateway/dns/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    const/4 v3, 0x0

    .line 87
    move-object v4, v3

    .line 88
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_5

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/transsion/api/gateway/dns/b;

    .line 99
    .line 100
    iget-object v6, v5, Lcom/transsion/api/gateway/dns/b;->a:Ljava/lang/String;

    .line 101
    .line 102
    if-nez v6, :cond_4

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_3

    .line 110
    .line 111
    move-object v4, v5

    .line 112
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p1

    .line 114
    goto/16 :goto_5

    .line 115
    .line 116
    :cond_5
    if-eqz v4, :cond_6

    .line 117
    .line 118
    new-instance v3, Lcom/transsion/api/gateway/dns/b;

    .line 119
    .line 120
    invoke-direct {v3, v4}, Lcom/transsion/api/gateway/dns/b;-><init>(Lcom/transsion/api/gateway/dns/b;)V

    .line 121
    .line 122
    .line 123
    monitor-exit v1

    .line 124
    goto :goto_1

    .line 125
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :goto_1
    if-eqz v3, :cond_8

    .line 127
    .line 128
    iget-object v1, v3, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 129
    .line 130
    if-eqz v1, :cond_8

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-nez v1, :cond_7

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_7
    iget-object v1, v3, Lcom/transsion/api/gateway/dns/b;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    .line 141
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_8

    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Lcom/transsion/api/gateway/dns/d;

    .line 156
    .line 157
    :try_start_1
    iget-object v2, v2, Lcom/transsion/api/gateway/dns/d;->b:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v2}, Lcom/transsion/api/gateway/utils/GatewayUtils;->textToNumericFormatV4(Ljava/lang/String;)[B

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {p1, v2}, Ljava/net/InetAddress;->getByAddress(Ljava/lang/String;[B)Ljava/net/InetAddress;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :catch_0
    move-exception v2

    .line 172
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-lez v1, :cond_a

    .line 181
    .line 182
    sget-object p1, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 183
    .line 184
    const-string v1, "use nodns ips"

    .line 185
    .line 186
    invoke-virtual {p1, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_9

    .line 198
    .line 199
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    check-cast v1, Ljava/net/InetAddress;

    .line 204
    .line 205
    sget-object v2, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 206
    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v2, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_9
    return-object v0

    .line 235
    :cond_a
    sget-object v0, Lcom/transsion/api/gateway/utils/GatewayUtils;->L:Lcom/transsion/api/gateway/utils/ObjectLogUtils;

    .line 236
    .line 237
    const-string v1, "use dns"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Lcom/transsion/api/gateway/utils/ObjectLogUtils;->d(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    .line 243
    .line 244
    invoke-interface {v0, p1}, Lokhttp3/Dns;->lookup(Ljava/lang/String;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    return-object p1

    .line 249
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    throw p1
.end method

.method public setIsUseGatewayDns(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/api/gateway/dns/GateWayDns;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
