.class public abstract Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/hisavana/net/impl/IHttpCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;-><init>(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    .line 5
    iput-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->b:Landroid/os/Looper;

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->b:Landroid/os/Looper;

    .line 7
    new-instance v0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;

    invoke-direct {v0, p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl$ResponderHandler;-><init>(Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public c(I[B)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x12c

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/io/IOException;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->d(I[BLjava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->t(I[B)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public d(I[BLjava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p2, v0, p1

    .line 13
    .line 14
    const/4 p2, 0x2

    .line 15
    aput-object p3, v0, p2

    .line 16
    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public e(I[BLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x12c

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    new-instance p3, Ljava/io/IOException;

    .line 16
    .line 17
    invoke-direct {p3}, Ljava/io/IOException;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->d(I[BLjava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->u(I[BLjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public f(I[BLokhttp3/Headers;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    const/16 v0, 0x12c

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/io/IOException;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->r(I[BLjava/lang/Throwable;Lokhttp3/Headers;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->v(I[BLokhttp3/Headers;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method protected g(Landroid/os/Message;)V
    .locals 6

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    const-string v1, "HttpCallbackImpl"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x3

    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x1

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    if-eq v0, v5, :cond_3

    .line 12
    .line 13
    if-eq v0, v4, :cond_2

    .line 14
    .line 15
    if-eq v0, v3, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x7

    .line 18
    if-eq v0, p1, :cond_0

    .line 19
    .line 20
    :try_start_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "UnKnown message"

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_1

    .line 30
    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->k()V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->j()V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->m()V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, [Ljava/lang/Object;

    .line 52
    .line 53
    if-eqz p1, :cond_5

    .line 54
    .line 55
    array-length v0, p1

    .line 56
    if-lt v0, v3, :cond_5

    .line 57
    .line 58
    array-length v0, p1

    .line 59
    const/4 v1, 0x4

    .line 60
    if-lt v0, v1, :cond_4

    .line 61
    .line 62
    aget-object v0, p1, v3

    .line 63
    .line 64
    instance-of v1, v0, Lokhttp3/Headers;

    .line 65
    .line 66
    if-eqz v1, :cond_4

    .line 67
    .line 68
    check-cast v0, Lokhttp3/Headers;

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->l(Lokhttp3/Headers;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    aget-object v0, p1, v2

    .line 74
    .line 75
    check-cast v0, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    aget-object v1, p1, v5

    .line 82
    .line 83
    check-cast v1, [B

    .line 84
    .line 85
    aget-object p1, p1, v4

    .line 86
    .line 87
    check-cast p1, Ljava/lang/Throwable;

    .line 88
    .line 89
    invoke-virtual {p0, v0, v1, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->i(I[BLjava/lang/Throwable;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "FAILURE_MESSAGE didn\'t got enough params"

    .line 98
    .line 99
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, [Ljava/lang/Object;

    .line 106
    .line 107
    if-eqz p1, :cond_9

    .line 108
    .line 109
    array-length v0, p1

    .line 110
    if-lt v0, v4, :cond_9

    .line 111
    .line 112
    array-length v0, p1

    .line 113
    if-lt v0, v3, :cond_8

    .line 114
    .line 115
    aget-object v0, p1, v4

    .line 116
    .line 117
    instance-of v1, v0, Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v1, :cond_7

    .line 120
    .line 121
    aget-object v0, p1, v2

    .line 122
    .line 123
    check-cast v0, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    aget-object v1, p1, v5

    .line 130
    .line 131
    check-cast v1, [B

    .line 132
    .line 133
    aget-object p1, p1, v4

    .line 134
    .line 135
    check-cast p1, Ljava/lang/String;

    .line 136
    .line 137
    invoke-virtual {p0, v0, v1, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->o(I[BLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    instance-of v1, v0, Lokhttp3/Headers;

    .line 142
    .line 143
    if-eqz v1, :cond_a

    .line 144
    .line 145
    check-cast v0, Lokhttp3/Headers;

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->l(Lokhttp3/Headers;)V

    .line 148
    .line 149
    .line 150
    aget-object v0, p1, v2

    .line 151
    .line 152
    check-cast v0, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    aget-object p1, p1, v5

    .line 159
    .line 160
    check-cast p1, [B

    .line 161
    .line 162
    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->n(I[B)V

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_8
    aget-object v0, p1, v2

    .line 167
    .line 168
    check-cast v0, Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    aget-object p1, p1, v5

    .line 175
    .line 176
    check-cast p1, [B

    .line 177
    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->n(I[B)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_9
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const-string v0, "SUCCESS_MESSAGE didn\'t got enough params"

    .line 187
    .line 188
    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->p(Ljava/lang/Throwable;)V

    .line 193
    .line 194
    .line 195
    :cond_a
    :goto_1
    return-void
.end method

.method protected h(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public abstract i(I[BLjava/lang/Throwable;)V
.end method

.method public j()V
    .locals 0

    .line 1
    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "HttpCallbackImpl"

    .line 6
    .line 7
    const-string v2, "Request got onPaused"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public l(Lokhttp3/Headers;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract n(I[B)V
.end method

.method public o(I[BLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public p(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "HttpCallbackImpl"

    .line 6
    .line 7
    const-string v2, "User-space exception detected!"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method protected q(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    :cond_1
    :goto_0
    return-void
.end method

.method public r(I[BLjava/lang/Throwable;Lokhttp3/Headers;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p2, v0, p1

    .line 13
    .line 14
    const/4 p2, 0x2

    .line 15
    aput-object p3, v0, p2

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    aput-object p4, v0, p2

    .line 19
    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method protected s(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->g(Landroid/os/Message;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->a:Landroid/os/Handler;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public t(I[B)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p2, v0, p1

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public u(I[BLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p2, v0, p1

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    aput-object p3, v0, p1

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public v(I[BLokhttp3/Headers;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aput-object p1, v0, v1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p2, v0, p1

    .line 13
    .line 14
    const/4 p1, 0x2

    .line 15
    aput-object p3, v0, p1

    .line 16
    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->h(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/net/impl/HttpCallbackImpl;->s(Landroid/os/Message;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
