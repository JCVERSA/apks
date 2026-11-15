.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "ProxyServer"

    .line 3
    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 5
    .line 6
    new-instance v3, Ljava/net/ServerSocket;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 9
    .line 10
    invoke-static {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->q(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x0

    .line 19
    const/16 v6, 0x32

    .line 20
    .line 21
    invoke-direct {v3, v5, v6, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->k(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/net/ServerSocket;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-static {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->h(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;I)I

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v3, -0x1

    .line 47
    if-ne v2, v3, :cond_0

    .line 48
    .line 49
    const-string v0, "socket not bound"

    .line 50
    .line 51
    const-string v1, ""

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->o(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 63
    .line 64
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->q(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 69
    .line 70
    invoke-static {v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-static {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/b;->a(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->u(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-nez v2, :cond_1

    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v2, v5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_2

    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 105
    .line 106
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    .line 108
    .line 109
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 110
    .line 111
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 112
    .line 113
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 118
    .line 119
    .line 120
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    if-ne v2, v0, :cond_3

    .line 122
    .line 123
    :try_start_2
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 124
    .line 125
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Ljava/net/ServerSocket;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    .line 130
    .line 131
    .line 132
    move-result-object v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :try_start_3
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 134
    .line 135
    invoke-static {v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 136
    .line 137
    .line 138
    invoke-static {v2}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    goto :goto_1

    .line 144
    :catch_0
    move-exception v2

    .line 145
    const-string v3, "accept error"

    .line 146
    .line 147
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .line 153
    .line 154
    add-int/2addr v5, v0

    .line 155
    const/4 v2, 0x3

    .line 156
    if-gt v5, v2, :cond_3

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    const-string v3, "proxy server crashed!  "

    .line 168
    .line 169
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    const-string v1, "error"

    .line 177
    .line 178
    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :cond_3
    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 182
    .line 183
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 184
    .line 185
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->o(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :catch_1
    move-exception v0

    .line 190
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 191
    .line 192
    if-eqz v2, :cond_4

    .line 193
    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    const-string v3, "create ServerSocket error!  "

    .line 197
    .line 198
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .line 214
    .line 215
    :cond_4
    const-string v1, "create ServerSocket error"

    .line 216
    .line 217
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    .line 225
    .line 226
    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->o(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V

    .line 227
    .line 228
    .line 229
    return-void
.end method
