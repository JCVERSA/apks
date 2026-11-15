.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;
.super Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;,
        Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;
    }
.end annotation


# instance fields
.field private final Fmk:Ljava/net/Socket;

.field private final Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

.field private volatile dNu:Z

.field private final sef:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

.field private volatile uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->b:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->dNu:Z

    .line 10
    .line 11
    iget-object v0, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->c:Ljava/net/Socket;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$b;->d:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->sef:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    .line 18
    .line 19
    invoke-static {}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 24
    .line 25
    return-void
.end method

.method private Dq()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;
    .locals 4

    .line 1
    const-string v0, "TAG_PROXY_ProxyTask"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->a(Ljava/io/InputStream;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 24
    .line 25
    iget v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget-object v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/TKC;

    .line 34
    .line 35
    :goto_0
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    const-string v2, "cache is null"

    .line 40
    .line 41
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$EjP; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catch_0
    move-exception v2

    .line 46
    goto :goto_2

    .line 47
    :catch_1
    move-exception v2

    .line 48
    goto :goto_3

    .line 49
    :cond_1
    :goto_1
    return-object v1

    .line 50
    :goto_2
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    .line 51
    .line 52
    invoke-static {v3}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 53
    .line 54
    .line 55
    sget-boolean v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 56
    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :goto_3
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    .line 75
    .line 76
    invoke-static {v3}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 77
    .line 78
    .line 79
    sget-boolean v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 80
    .line 81
    if-eqz v3, :cond_3

    .line 82
    .line 83
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_3
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_4
    return-object v1
.end method

.method private EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uA()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 15
    .line 16
    iget v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->e:I

    .line 17
    .line 18
    const-string v4, "GET"

    .line 19
    .line 20
    invoke-virtual {p0, p2, v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;IILjava/lang/String;)Lj6/c;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    :try_start_0
    invoke-static {v3, v6, v4}, Lh6/a;->h(Lj6/c;ZZ)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    const-string v7, ", rawKey: "

    .line 35
    .line 36
    if-nez v4, :cond_d

    .line 37
    .line 38
    :try_start_1
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 39
    .line 40
    iget-object v8, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS()I

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    invoke-virtual {v4, v8, v9}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v3}, Lh6/a;->b(Lj6/c;)I

    .line 51
    .line 52
    .line 53
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const-string v9, "TAG_PROXY_ProxyTask"

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    :try_start_2
    iget v10, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    .line 59
    .line 60
    if-eq v10, v8, :cond_2

    .line 61
    .line 62
    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 63
    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Content-Length not match, old: "

    .line 69
    .line 70
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v2, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, ", "

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, ", key: "

    .line 87
    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    goto/16 :goto_8

    .line 106
    .line 107
    :cond_1
    :goto_0
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v9, "Content-Length not match, old length: "

    .line 112
    .line 113
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget v9, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    .line 117
    .line 118
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v9, ", new length: "

    .line 122
    .line 123
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v7, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v7, ", currentUrl: "

    .line 138
    .line 139
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p2, ", previousInfo: "

    .line 146
    .line 147
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-object p2, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->e:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1

    .line 163
    :cond_2
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->b()Z

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-nez p2, :cond_3

    .line 168
    .line 169
    invoke-static {v3, v2}, Lh6/a;->g(Lj6/c;I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    .line 174
    .line 175
    .line 176
    sget-object v2, Lh6/a;->b:Ljava/nio/charset/Charset;

    .line 177
    .line 178
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    array-length v2, p2

    .line 183
    invoke-virtual {p1, p2, v6, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a([BII)V

    .line 184
    .line 185
    .line 186
    :cond_3
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    .line 187
    .line 188
    .line 189
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 190
    .line 191
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 192
    .line 193
    invoke-virtual {p2, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->a(Ljava/lang/String;)Ljava/io/File;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    iget-boolean v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->dNu:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    .line 199
    const-string v4, ", from: "

    .line 200
    .line 201
    if-eqz v2, :cond_4

    .line 202
    .line 203
    if-eqz p2, :cond_4

    .line 204
    .line 205
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 206
    .line 207
    .line 208
    move-result-wide v7

    .line 209
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 210
    .line 211
    .line 212
    move-result v2

    .line 213
    int-to-long v10, v2

    .line 214
    cmp-long v2, v7, v10

    .line 215
    .line 216
    if-ltz v2, :cond_4

    .line 217
    .line 218
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 219
    .line 220
    iget-object v7, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 221
    .line 222
    iget-object v8, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 223
    .line 224
    iget-object v8, v8, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 225
    .line 226
    iget v8, v8, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    .line 227
    .line 228
    invoke-static {v3, v2, v7, v8}, Lh6/a;->d(Lj6/c;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 229
    .line 230
    .line 231
    :try_start_4
    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;

    .line 232
    .line 233
    const-string v7, "rwd"

    .line 234
    .line 235
    invoke-direct {v2, p2, v7}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 236
    .line 237
    .line 238
    :try_start_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    int-to-long v7, v7

    .line 243
    invoke-virtual {v2, v7, v8}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->c(J)V
    :try_end_5
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :catchall_1
    move-exception p1

    .line 248
    move-object v5, v2

    .line 249
    goto/16 :goto_8

    .line 250
    .line 251
    :catch_0
    move-object v2, v5

    .line 252
    :goto_1
    :try_start_6
    sget-boolean v7, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 253
    .line 254
    if-eqz v7, :cond_6

    .line 255
    .line 256
    new-instance v7, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v8, "can write to cache file in network task, cache file size: "

    .line 259
    .line 260
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 264
    .line 265
    .line 266
    move-result-wide v10

    .line 267
    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 278
    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_4
    :try_start_7
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 282
    .line 283
    if-eqz v2, :cond_5

    .line 284
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v7, "can\'t write to cache file in network task, cache file size: "

    .line 288
    .line 289
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 293
    .line 294
    .line 295
    move-result-wide v7

    .line 296
    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 303
    .line 304
    .line 305
    move-result p2

    .line 306
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p2

    .line 313
    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 314
    .line 315
    .line 316
    :cond_5
    move-object v2, v5

    .line 317
    :cond_6
    :goto_2
    :try_start_8
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 318
    .line 319
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS()I

    .line 322
    .line 323
    .line 324
    move-result v7

    .line 325
    invoke-virtual {p2, v4, v7}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    .line 326
    .line 327
    .line 328
    move-result-object p2

    .line 329
    if-nez p2, :cond_7

    .line 330
    .line 331
    move p2, v6

    .line 332
    goto :goto_3

    .line 333
    :cond_7
    iget p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    .line 334
    .line 335
    :goto_3
    const/16 v4, 0x2000

    .line 336
    .line 337
    new-array v4, v4, [B

    .line 338
    .line 339
    invoke-virtual {v3}, Lj6/c;->a()Ljava/io/InputStream;

    .line 340
    .line 341
    .line 342
    move-result-object v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 343
    move v8, v6

    .line 344
    :goto_4
    :try_start_9
    invoke-virtual {v7, v4}, Ljava/io/InputStream;->read([B)I

    .line 345
    .line 346
    .line 347
    move-result v10

    .line 348
    if-ltz v10, :cond_b

    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    .line 351
    .line 352
    .line 353
    if-lez v10, :cond_a

    .line 354
    .line 355
    invoke-virtual {p1, v4, v6, v10}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->d([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 356
    .line 357
    .line 358
    add-int/2addr v8, v10

    .line 359
    if-eqz v2, :cond_9

    .line 360
    .line 361
    :try_start_a
    invoke-virtual {v2, v4, v6, v10}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->d([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 362
    .line 363
    .line 364
    goto :goto_7

    .line 365
    :catchall_2
    move-exception v10

    .line 366
    :try_start_b
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 367
    .line 368
    .line 369
    :try_start_c
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 370
    .line 371
    if-eqz v2, :cond_8

    .line 372
    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    const-string v11, "append to cache file error in network task!!! "

    .line 376
    .line 377
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v10

    .line 384
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 392
    .line 393
    .line 394
    goto :goto_6

    .line 395
    :catchall_3
    move-exception p1

    .line 396
    :goto_5
    move v6, v8

    .line 397
    goto :goto_8

    .line 398
    :cond_8
    :goto_6
    move-object v2, v5

    .line 399
    goto :goto_7

    .line 400
    :catchall_4
    move-exception p1

    .line 401
    move-object v5, v2

    .line 402
    goto :goto_5

    .line 403
    :cond_9
    :goto_7
    :try_start_d
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    invoke-virtual {p0, p2, v10}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj(II)V

    .line 408
    .line 409
    .line 410
    :cond_a
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    .line 411
    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_b
    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 415
    .line 416
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 417
    .line 418
    .line 419
    invoke-virtual {v3}, Lj6/c;->a()Ljava/io/InputStream;

    .line 420
    .line 421
    .line 422
    move-result-object p1

    .line 423
    invoke-static {p1}, Lh6/a;->m(Ljava/io/Closeable;)V

    .line 424
    .line 425
    .line 426
    if-eqz v2, :cond_c

    .line 427
    .line 428
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V

    .line 429
    .line 430
    .line 431
    :cond_c
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 432
    .line 433
    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 434
    .line 435
    .line 436
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    .line 437
    .line 438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 439
    .line 440
    .line 441
    move-result-wide v2

    .line 442
    sub-long/2addr v2, v0

    .line 443
    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 444
    .line 445
    .line 446
    return-void

    .line 447
    :cond_d
    :try_start_e
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;

    .line 448
    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    .line 461
    .line 462
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v4, ", url: "

    .line 466
    .line 467
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    move-result-object p2

    .line 477
    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 481
    :goto_8
    invoke-virtual {v3}, Lj6/c;->a()Ljava/io/InputStream;

    .line 482
    .line 483
    .line 484
    move-result-object p2

    .line 485
    invoke-static {p2}, Lh6/a;->m(Ljava/io/Closeable;)V

    .line 486
    .line 487
    .line 488
    if-eqz v5, :cond_e

    .line 489
    .line 490
    invoke-virtual {v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V

    .line 491
    .line 492
    .line 493
    :cond_e
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 494
    .line 495
    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 496
    .line 497
    .line 498
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP:Ljava/util/concurrent/atomic/AtomicLong;

    .line 499
    .line 500
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 501
    .line 502
    .line 503
    move-result-wide v2

    .line 504
    sub-long/2addr v2, v0

    .line 505
    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 506
    .line 507
    .line 508
    throw p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    return-object p0
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;

    iget-object v0, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$b;->a:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V

    return-void

    .line 28
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V

    return-void
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Ljava/io/File;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;
        }
    .end annotation

    .line 40
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 41
    invoke-direct {p0, p1, p3, p4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)[B

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    array-length v2, v0

    invoke-virtual {p3, v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a([BII)V

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 44
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object p1

    if-nez p1, :cond_4

    .line 45
    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz p1, :cond_2

    .line 46
    const-string p1, "TAG_PROXY_ProxyTask"

    const-string v2, "failed to get video header info from db"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_2
    invoke-direct {p0, v0, p3, p4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)[B

    .line 48
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v3, v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-virtual {p1, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 49
    :cond_3
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "failed to get header, rawKey: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_4
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget v4, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 51
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    if-eqz v2, :cond_5

    .line 52
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 53
    :cond_5
    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;-><init>()V

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 54
    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->e(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->h(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->k(Ljava/lang/String;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

    iget-object v4, p4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->i(Ljava/util/List;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    new-instance v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;

    invoke-direct {v3, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$a;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V

    .line 56
    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$b;)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$a;->j()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    move-result-object v2

    .line 58
    iput-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    .line 59
    new-instance v3, Lcom/bytedance/sdk/component/Dq/Jcg;

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-direct {v3, v2, v0, v4, v5}, Lcom/bytedance/sdk/component/Dq/Jcg;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;II)V

    .line 60
    new-instance v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$2;

    const-string v4, "processCacheNetWorkConcurrent"

    invoke-direct {v2, p0, v4, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Jcg;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/Dq/vS;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    .line 61
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_7

    .line 62
    const-string v2, "TAG_PROXY_ProxyTask"

    const-string v4, "fire download in process cache task"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move-object v3, v0

    :cond_7
    :goto_1
    const/16 v2, 0x2000

    .line 63
    new-array v2, v2, [B

    .line 64
    :try_start_0
    new-instance v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;

    const-string v5, "r"

    invoke-direct {v4, p2, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 65
    :try_start_1
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->c(J)V

    .line 66
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->e:I

    if-lez p2, :cond_8

    iget p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->e:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v4

    goto/16 :goto_8

    :cond_8
    iget p1, p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    .line 67
    :goto_2
    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    if-ge p2, p1, :cond_10

    .line 68
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    .line 69
    invoke-virtual {v4, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->a([B)I

    move-result p2

    if-gtz p2, :cond_f

    .line 70
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    if-eqz p2, :cond_b

    .line 71
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->uA()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;

    move-result-object v0

    if-nez v0, :cond_a

    .line 72
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->Dq()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    .line 73
    :cond_9
    throw v0

    .line 74
    :cond_a
    throw v0

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    .line 75
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->EjP()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    .line 76
    :cond_c
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    .line 77
    iget-object v0, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->Fmk:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    iget-object p2, p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;->Fmk:Ljava/lang/Object;

    const-wide/16 v5, 0x3e8

    invoke-virtual {p2, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    .line 79
    :catch_0
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :goto_5
    :try_start_4
    monitor-exit v0

    throw p1

    .line 80
    :cond_d
    :goto_6
    sget-boolean p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz p1, :cond_e

    .line 81
    const-string p1, "TAG_PROXY_ProxyTask"

    const-string p2, "download task has finished!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_e
    new-instance p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "illegal state download task has finished, rawKey: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", url: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_f
    invoke-virtual {p3, v2, v1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->d([BII)V

    .line 84
    :goto_7
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    goto :goto_2

    .line 85
    :cond_10
    sget-boolean p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz p2, :cond_11

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "read cache file complete: "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    :cond_11
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TKC()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    invoke-virtual {v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V

    if-eqz v3, :cond_12

    .line 89
    :try_start_5
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    :cond_12
    return-void

    :catchall_3
    move-exception p1

    :goto_8
    if-eqz v0, :cond_13

    .line 90
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq;->b()V

    :cond_13
    if-eqz v3, :cond_14

    .line 91
    :try_start_6
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 92
    :catchall_4
    :cond_14
    throw p1
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;
        }
    .end annotation

    .line 2
    const-string v0, "TAG_PROXY_ProxyTask"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TEQ:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 3
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->HiB()V

    .line 4
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->TEQ:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d;->d()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;

    move-result-object v1

    const/4 v3, 0x1

    .line 5
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    :try_end_0
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    .line 6
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v2, :cond_0

    .line 7
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    sget-boolean v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v1, :cond_1

    .line 9
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :catch_2
    move-exception v1

    .line 10
    sget-boolean v3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v3, :cond_2

    .line 11
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_2
    iput-boolean v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->dNu:Z

    .line 13
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    goto :goto_0

    :catch_3
    move-exception p1

    .line 14
    sget-boolean v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v1, :cond_3

    .line 15
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :catch_4
    move-exception v2

    .line 16
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_4

    .line 17
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;->b()V

    .line 18
    :cond_4
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    sget-boolean v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v1, :cond_0

    .line 20
    const-string v1, "Canceled"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    const-string v1, "okhttp call canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_5
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 23
    :cond_6
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    goto :goto_0

    .line 24
    :catch_5
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;->a()V

    .line 25
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    goto/16 :goto_0

    :cond_7
    return v2
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 29
    sget-boolean p3, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 30
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    invoke-static {p1, p2}, Lh6/a;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lh6/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, -0x1

    .line 31
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1, p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;IILjava/lang/String;)Lj6/c;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 32
    :cond_1
    :try_start_0
    invoke-static {p1, v1, v1}, Lh6/a;->h(Lj6/c;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 33
    iget-object p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    iget-object v1, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    iget v1, v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    invoke-static {p1, p3, v0, v1}, Lh6/a;->d(Lj6/c;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    move-result-object p3

    .line 34
    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v0, :cond_2

    .line 35
    const-string v0, "TAG_PROXY_ProxyTask"

    const-string v1, "get header from network"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    move-result p2

    invoke-static {p3, p2}, Lh6/a;->f(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;I)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lh6/a;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    invoke-virtual {p1}, Lj6/c;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lh6/a;->m(Ljava/io/Closeable;)V

    return-object p2

    .line 38
    :cond_3
    :try_start_1
    new-instance p2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rawKey: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/TKC;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :goto_1
    invoke-virtual {p1}, Lj6/c;->a()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lh6/a;->m(Ljava/io/Closeable;)V

    throw p2
.end method

.method private TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Dq$Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;,
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/sP;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->dNu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->c(Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 22
    .line 23
    iget-object v5, v5, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 24
    .line 25
    iget v5, v5, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    .line 26
    .line 27
    invoke-virtual {v3, v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    int-to-long v5, v5

    .line 40
    cmp-long v5, v1, v5

    .line 41
    .line 42
    if-lez v5, :cond_2

    .line 43
    .line 44
    sget-boolean v5, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 45
    .line 46
    if-eqz v5, :cond_0

    .line 47
    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v6, "cache hit, remainSize: "

    .line 51
    .line 52
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    int-to-long v6, v4

    .line 56
    sub-long/2addr v1, v6

    .line 57
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Ljava/io/File;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->c()I

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/EjP;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 8
    .line 9
    iget v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p0, v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/d$a;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    array-length v1, p2

    .line 24
    invoke-virtual {p1, p2, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;->a([BII)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private uA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uvD:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    .line 94
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->uA()V

    return-void
.end method

.method public run()V
    .locals 7

    .line 1
    const-string v0, "TAG_PROXY_ProxyTask"

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Dq()Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->sef:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-interface {v2, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 18
    .line 19
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->b(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->g:I

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->sP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->uA:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;

    .line 33
    .line 34
    iget-object v4, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA;->c:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;

    .line 35
    .line 36
    iget v4, v4, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/uA$a;->a:I

    .line 37
    .line 38
    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$e;->c(Ljava/lang/String;I)Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    iget-object v3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 45
    .line 46
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->c(Ljava/lang/String;)Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    iget v2, v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$d;->c:I

    .line 57
    .line 58
    int-to-long v5, v2

    .line 59
    cmp-long v2, v3, v5

    .line 60
    .line 61
    if-gez v2, :cond_3

    .line 62
    .line 63
    :cond_2
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->f(ZLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :try_start_0
    invoke-direct {p0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$d;)Z
    :try_end_0
    .catch Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/TKC/Sj; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception v1

    .line 79
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 80
    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    .line 93
    .line 94
    if-eqz v2, :cond_4

    .line 95
    .line 96
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;

    .line 104
    .line 105
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Dq:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj/a;->d(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Zq:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Jcg()Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    const/4 v2, 0x0

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->f(ZLjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Sj()V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->Fmk:Ljava/net/Socket;

    .line 124
    .line 125
    invoke-static {v0}, Lh6/a;->q(Ljava/net/Socket;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;->sef:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;

    .line 129
    .line 130
    if-eqz v0, :cond_5

    .line 131
    .line 132
    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V

    .line 133
    .line 134
    .line 135
    :cond_5
    return-void
.end method
