.class public abstract Lcom/transsion/http/impl/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsion/http/impl/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/http/impl/q$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Z

.field private d:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/transsion/http/impl/q;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/transsion/http/impl/q;-><init>(Landroid/os/Looper;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Z)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/transsion/http/impl/q;->d:Landroid/os/Looper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    const-string v0, "use looper thread, must call Looper.prepare() first!"

    .line 5
    invoke-static {v1, v0}, Lkl/b;->a(ZLjava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/transsion/http/impl/q;->d:Landroid/os/Looper;

    .line 7
    new-instance v0, Lcom/transsion/http/impl/q$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/http/impl/q$a;-><init>(Lcom/transsion/http/impl/q;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    :cond_2
    const-string p1, "use pool thread, looper should be null!"

    .line 8
    invoke-static {v1, p1}, Lkl/b;->a(ZLjava/lang/String;)V

    .line 9
    iput-object v0, p0, Lcom/transsion/http/impl/q;->d:Landroid/os/Looper;

    .line 10
    iput-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    .line 11
    :goto_0
    iput-boolean p2, p0, Lcom/transsion/http/impl/q;->c:Z

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
    invoke-virtual {p0, v0, v1}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

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
    invoke-virtual {p0, v0, v1}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

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
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/http/impl/q;->d(I[BLjava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/http/impl/q;->v(I[B)V

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
    invoke-virtual {p0, p1, v0}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final e()V
    .locals 2

    .line 1
    const/4 v0, 0x6

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method protected f(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

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

.method protected g(Landroid/os/Message;)V
    .locals 6

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    const-string v4, "HttpCallbackImpl"

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->o()V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto/16 :goto_0

    .line 20
    .line 21
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->l()V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p1, [Ljava/lang/Object;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    array-length v0, p1

    .line 33
    if-ne v0, v3, :cond_0

    .line 34
    .line 35
    aget-object p1, p1, v2

    .line 36
    .line 37
    check-cast p1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->q(I)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_1

    .line 47
    .line 48
    :cond_0
    sget-object p1, Ljl/a;->a:Ljl/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    const-string v0, "RETRY_MESSAGE didn\'t get enough params"

    .line 51
    .line 52
    :try_start_2
    invoke-interface {p1, v4, v0}, Ljl/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, [Ljava/lang/Object;

    .line 60
    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    array-length v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    if-lt v0, v1, :cond_1

    .line 65
    .line 66
    :try_start_3
    aget-object v0, p1, v2

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Long;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    aget-object p1, p1, v3

    .line 75
    .line 76
    check-cast p1, Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/http/impl/q;->p(JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :catchall_1
    move-exception p1

    .line 87
    :try_start_4
    sget-object v0, Ljl/a;->a:Ljl/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .line 89
    const-string v1, "custom onProgress contains an error"

    .line 90
    .line 91
    :try_start_5
    invoke-interface {v0, v4, v1, p1}, Ljl/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    sget-object p1, Ljl/a;->a:Ljl/c;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 96
    .line 97
    const-string v0, "PROGRESS_MESSAGE didn\'t got enough params"

    .line 98
    .line 99
    :try_start_6
    invoke-interface {p1, v4, v0}, Ljl/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :pswitch_4
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->n()V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :pswitch_5
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->r()V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, [Ljava/lang/Object;

    .line 114
    .line 115
    if-eqz p1, :cond_2

    .line 116
    .line 117
    array-length v0, p1

    .line 118
    const/4 v5, 0x3

    .line 119
    if-lt v0, v5, :cond_2

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
    aget-object v2, p1, v3

    .line 130
    .line 131
    check-cast v2, [B

    .line 132
    .line 133
    aget-object p1, p1, v1

    .line 134
    .line 135
    check-cast p1, Ljava/lang/Throwable;

    .line 136
    .line 137
    invoke-virtual {p0, v0, v2, p1}, Lcom/transsion/http/impl/q;->m(I[BLjava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    sget-object p1, Ljl/a;->a:Ljl/c;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 142
    .line 143
    const-string v0, "FAILURE_MESSAGE didn\'t got enough params"

    .line 144
    .line 145
    :try_start_7
    invoke-interface {p1, v4, v0}, Ljl/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast p1, [Ljava/lang/Object;

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    array-length v0, p1

    .line 156
    if-lt v0, v1, :cond_3

    .line 157
    .line 158
    aget-object v0, p1, v2

    .line 159
    .line 160
    check-cast v0, Ljava/lang/Integer;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    aget-object p1, p1, v3

    .line 167
    .line 168
    check-cast p1, [B

    .line 169
    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/transsion/http/impl/q;->s(I[B)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_3
    sget-object p1, Ljl/a;->a:Ljl/c;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 175
    .line 176
    const-string v0, "SUCCESS_MESSAGE didn\'t got enough params"

    .line 177
    .line 178
    :try_start_8
    invoke-interface {p1, v4, v0}, Ljl/c;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->t(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :goto_1
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 19
    .line 20
    .line 21
    :cond_2
    :goto_1
    return-void
.end method

.method protected i(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_0
    const-string v1, "handler should not be null!"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkl/b;->a(ZLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/transsion/http/impl/q;->a:Landroid/os/Handler;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->g(Landroid/os/Message;)V

    .line 41
    .line 42
    .line 43
    :cond_3
    :goto_2
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/http/impl/q;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/http/impl/q;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()V
    .locals 3

    .line 1
    sget-object v0, Ljl/a;->a:Ljl/c;

    .line 2
    .line 3
    const-string v1, "HttpCallbackImpl"

    .line 4
    .line 5
    const-string v2, "Request got cancelled"

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Ljl/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public abstract m(I[BLjava/lang/Throwable;)V
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    sget-object v0, Ljl/a;->a:Ljl/c;

    .line 2
    .line 3
    const-string v1, "HttpCallbackImpl"

    .line 4
    .line 5
    const-string v2, "Request got onPaused"

    .line 6
    .line 7
    invoke-interface {v0, v1, v2}, Ljl/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public p(JJ)V
    .locals 5

    .line 1
    sget-object v0, Ljl/a;->a:Ljl/c;

    .line 2
    .line 3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    cmp-long v3, p3, v3

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    long-to-double p1, p1

    .line 18
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 19
    .line 20
    mul-double/2addr p1, v3

    .line 21
    long-to-double p3, p3

    .line 22
    div-double/2addr p1, p3

    .line 23
    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    .line 24
    .line 25
    mul-double/2addr p1, p3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    .line 28
    .line 29
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const/4 p2, 0x3

    .line 34
    new-array p2, p2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    aput-object v1, p2, p3

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    aput-object v2, p2, p3

    .line 41
    .line 42
    const/4 p3, 0x2

    .line 43
    aput-object p1, p2, p3

    .line 44
    .line 45
    const-string p1, "Progress %d from %d (%2.0f%%)"

    .line 46
    .line 47
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "HttpCallbackImpl"

    .line 52
    .line 53
    invoke-interface {v0, p2, p1}, Ljl/c;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public q(I)V
    .locals 3

    .line 1
    sget-object v0, Ljl/a;->a:Ljl/c;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object p1, v1, v2

    .line 12
    .line 13
    const-string p1, "Request retry no. %d"

    .line 14
    .line 15
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "HttpCallbackImpl"

    .line 20
    .line 21
    invoke-interface {v0, v1, p1}, Ljl/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public r()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract s(I[B)V
.end method

.method public t(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Ljl/a;->a:Ljl/c;

    .line 2
    .line 3
    const-string v1, "HttpCallbackImpl"

    .line 4
    .line 5
    const-string v2, "User-space exception detected!"

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, p1}, Ljl/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/RuntimeException;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public u()V
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public v(I[B)V
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
    invoke-virtual {p0, v1, v0}, Lcom/transsion/http/impl/q;->f(ILjava/lang/Object;)Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/transsion/http/impl/q;->i(Landroid/os/Message;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
