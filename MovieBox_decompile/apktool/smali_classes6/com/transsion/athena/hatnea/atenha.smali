.class public Lcom/transsion/athena/hatnea/atenha;
.super Lcom/transsion/athena/hatnea/anateh;
.source "source.java"


# instance fields
.field private final c:Lcom/transsion/athena/config/data/model/enatha;

.field private final d:Lcom/transsion/athena/aethna/aethna;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/transsion/athena/config/data/model/enatha;Lcom/transsion/athena/aethna/aethna;)V
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/athena/hatnea/anateh;-><init>(Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/transsion/athena/hatnea/atenha;->d:Lcom/transsion/athena/aethna/aethna;

    .line 7
    .line 8
    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->d:Lcom/transsion/athena/aethna/aethna;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v1}, Lcom/transsion/athena/aethna/aethna;->a(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/transsion/athena/hatnea/atenha;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/athena/hatnea/atenha;->d()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->i()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/enatha;->i()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    const-string v4, ""

    .line 13
    .line 14
    invoke-static {v1, v4, v2, v3}, Lcom/transsion/athena/hatnea/anehat;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/transsion/athena/hatnea/ehanat;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v2, v1, Lcom/transsion/athena/hatnea/ehanat;->a:I

    .line 19
    .line 20
    const/4 v3, -0x1

    .line 21
    const/4 v4, 0x1

    .line 22
    if-ne v2, v3, :cond_0

    .line 23
    .line 24
    iget-object v2, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/transsion/athena/config/data/model/enatha;->b()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Lcom/transsion/athena/config/data/model/anehat;->a(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    invoke-static {}, Lcom/transsion/athena/config/data/model/ehanat;->u()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    iget-object v2, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    .line 43
    .line 44
    const/16 v3, 0x12a

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    iget-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 59
    .line 60
    iget-object v1, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    .line 61
    .line 62
    const-wide/32 v2, 0x493e0

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    iget v2, v1, Lcom/transsion/athena/hatnea/ehanat;->a:I

    .line 70
    .line 71
    const-string v3, "<-- globalConfig:%s"

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    if-eq v2, v4, :cond_1

    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/transsion/athena/config/data/model/enatha;->d()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    add-int/2addr v1, v4

    .line 84
    invoke-virtual {v0, v1}, Lcom/transsion/athena/config/data/model/enatha;->c(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-array v1, v4, [Ljava/lang/Object;

    .line 89
    .line 90
    const-string v2, "NOT_MODIFIED"

    .line 91
    .line 92
    aput-object v2, v1, v0

    .line 93
    .line 94
    invoke-static {v3, v1}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    .line 98
    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v1

    .line 103
    iget-object v3, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    .line 104
    .line 105
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/enatha;->c()J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    add-long/2addr v1, v3

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/enatha;->b(J)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, v1, Lcom/transsion/athena/hatnea/ehanat;->b:Ljava/lang/Object;

    .line 115
    .line 116
    check-cast v1, Ljava/lang/String;

    .line 117
    .line 118
    new-array v2, v4, [Ljava/lang/Object;

    .line 119
    .line 120
    aput-object v1, v2, v0

    .line 121
    .line 122
    invoke-static {v3, v2}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Lcom/transsion/athena/aethna/athena;->a(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    .line 133
    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    iget-object v3, p0, Lcom/transsion/athena/hatnea/atenha;->c:Lcom/transsion/athena/config/data/model/enatha;

    .line 139
    .line 140
    invoke-virtual {v3}, Lcom/transsion/athena/config/data/model/enatha;->c()J

    .line 141
    .line 142
    .line 143
    move-result-wide v3

    .line 144
    add-long/2addr v1, v3

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/transsion/athena/config/data/model/enatha;->b(J)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/transsion/athena/hatnea/anateh;->a:Landroid/os/Handler;

    .line 149
    .line 150
    new-instance v1, Lcom/transsion/athena/hatnea/a;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/transsion/athena/hatnea/a;-><init>(Lcom/transsion/athena/hatnea/atenha;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 156
    .line 157
    .line 158
    :goto_0
    invoke-static {}, Lcom/transsion/athena/aethna/athena;->c()Lcom/transsion/athena/aethna/athena;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/transsion/athena/aethna/athena;->l()V

    .line 163
    .line 164
    .line 165
    :goto_1
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Retrieve-Global-Config"

    .line 2
    .line 3
    return-object v0
.end method
