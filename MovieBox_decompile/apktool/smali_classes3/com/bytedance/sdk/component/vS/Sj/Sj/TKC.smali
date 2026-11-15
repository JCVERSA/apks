.class public Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/Sj/EjP;


# instance fields
.field private Dq:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

.field private HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

.field private Jcg:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

.field private TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

.field private Ym:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private aa:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

.field private uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

.field private vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->vS()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->aa()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 27
    .line 28
    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

    .line 29
    .line 30
    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

    .line 34
    .line 35
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TEQ()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->TEQ()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 71
    .line 72
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 75
    .line 76
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

    .line 80
    .line 81
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Dq:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 96
    .line 97
    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

    .line 98
    .line 99
    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    .line 100
    .line 101
    .line 102
    iput-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

    .line 103
    .line 104
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Fmk()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 119
    .line 120
    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

    .line 121
    .line 122
    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

    .line 126
    .line 127
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_5

    .line 132
    .line 133
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->sef()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Ym:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 142
    .line 143
    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

    .line 144
    .line 145
    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    .line 146
    .line 147
    .line 148
    iput-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

    .line 149
    .line 150
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_6

    .line 155
    .line 156
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Jcg()Lcom/bytedance/sdk/component/vS/Sj/Dq;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/vS/Sj/Dq;->Zq()Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iput-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->aa:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 165
    .line 166
    new-instance v2, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;

    .line 167
    .line 168
    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;)V

    .line 169
    .line 170
    .line 171
    iput-object v2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;

    .line 172
    .line 173
    :cond_6
    return-void
.end method

.method private Sj(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->TKC()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 79
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public Sj(IILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "_id"

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    sget-object p3, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->ib()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 48
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1

    .line 52
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 56
    sget-object p3, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->kF()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 57
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->sP(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 61
    sget-object p3, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->uP()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 62
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->sP(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    sget-object p3, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->wE()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 67
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->sP(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj(IJ)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(IJ)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(IJ)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(IJ)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(IJ)V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(IJ)V

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(IJ)V

    :cond_5
    return-void
.end method

.method public Sj(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 22
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    .line 23
    :cond_0
    sget-object v2, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->IOh()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    if-eq p1, v1, :cond_1

    .line 24
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->EZ()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 25
    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result p1

    if-ne p1, v1, :cond_2

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP(Ljava/util/List;)V

    return-void

    .line 28
    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p1, v2, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result p1

    if-ne p1, v3, :cond_3

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP(Ljava/util/List;)V

    return-void

    .line 31
    :cond_3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result p1

    if-ne p1, v3, :cond_4

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->sP(Ljava/util/List;)V

    return-void

    .line 34
    :cond_4
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result p1

    if-ne p1, v3, :cond_5

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->sP(Ljava/util/List;)V

    return-void

    .line 37
    :cond_5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result p1

    if-ne p1, v1, :cond_6

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result p1

    if-ne p1, v2, :cond_6

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->sP(Ljava/util/List;)V

    return-void

    .line 40
    :cond_6
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result p1

    if-ne p1, v3, :cond_7

    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result p1

    if-ne p1, v2, :cond_7

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->sP(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->sP(J)V

    .line 2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result v0

    if-ne v0, p2, :cond_1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result v0

    if-ne v0, v2, :cond_3

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    .line 11
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v0

    if-ne v0, p2, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result v0

    if-ne v0, v2, :cond_4

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    .line 14
    :cond_4
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v0

    if-ne v0, p2, :cond_5

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result v0

    if-ne v0, v1, :cond_5

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V

    return-void

    .line 17
    :cond_5
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    move-result v0

    if-ne v0, v1, :cond_6

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    .line 20
    :catchall_0
    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->WMZ()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-void
.end method

.method public Sj(IZ)Z
    .locals 1

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 82
    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->sef()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 83
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 85
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 86
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 87
    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->Zq()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 88
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 89
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 90
    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->uvD()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 91
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 92
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 93
    sget-object p1, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->dNu()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 94
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 95
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public sP(Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "_id"

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v3, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->Sj()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-le p1, p2, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Jcg:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    sub-int/2addr p1, p2

    .line 38
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/EjP;

    .line 39
    .line 40
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(ILjava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    sget-object p2, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->ley()Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-object p1

    .line 62
    :cond_1
    return-object v1

    .line 63
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v4, 0x3

    .line 68
    const/4 v5, 0x2

    .line 69
    if-ne v0, v4, :cond_3

    .line 70
    .line 71
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v5, :cond_3

    .line 76
    .line 77
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->HiB()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-le p1, p2, :cond_a

    .line 90
    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->uA:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    sub-int/2addr p1, p2

    .line 98
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TKC:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/sP;

    .line 99
    .line 100
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(ILjava/lang/String;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-ne v0, v5, :cond_5

    .line 116
    .line 117
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->sP()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Dq:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-le p1, p2, :cond_a

    .line 130
    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Dq:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    sub-int/2addr p1, p2

    .line 138
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->sP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;

    .line 139
    .line 140
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Sj;->Sj(ILjava/lang/String;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_4

    .line 151
    .line 152
    sget-object p2, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->LqL()Ljava/util/concurrent/atomic/AtomicLong;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 159
    .line 160
    .line 161
    :cond_4
    return-object p1

    .line 162
    :cond_5
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-ne v0, v3, :cond_7

    .line 167
    .line 168
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ne v0, v5, :cond_7

    .line 173
    .line 174
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->TKC()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-le p1, p2, :cond_a

    .line 187
    .line 188
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->TEQ:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    sub-int/2addr p1, p2

    .line 195
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->EjP:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;

    .line 196
    .line 197
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(ILjava/lang/String;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_6

    .line 202
    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_6

    .line 208
    .line 209
    sget-object p2, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->Yf()Ljava/util/concurrent/atomic/AtomicLong;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 216
    .line 217
    .line 218
    :cond_6
    return-object p1

    .line 219
    :cond_7
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-ne v0, v3, :cond_9

    .line 224
    .line 225
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-ne v0, v4, :cond_9

    .line 230
    .line 231
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->EjP()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_9

    .line 236
    .line 237
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Ym:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-le p1, p2, :cond_a

    .line 244
    .line 245
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->Ym:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    sub-int/2addr p1, p2

    .line 252
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->HiB:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/vS;

    .line 253
    .line 254
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(ILjava/lang/String;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    if-eqz p1, :cond_8

    .line 259
    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    if-eqz p2, :cond_8

    .line 265
    .line 266
    sget-object p2, Lcom/bytedance/sdk/component/vS/Sj/sP/EjP;->EjP:Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;

    .line 267
    .line 268
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj/Sj;->LD()Ljava/util/concurrent/atomic/AtomicLong;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/vS/Sj/TKC/sP;->Sj(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 273
    .line 274
    .line 275
    :cond_8
    return-object p1

    .line 276
    :cond_9
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-ne v0, v5, :cond_a

    .line 281
    .line 282
    invoke-interface {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->HiB()B

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-ne p1, v4, :cond_a

    .line 287
    .line 288
    invoke-static {}, Lcom/bytedance/sdk/component/vS/Sj/sP/Sj;->vS()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_a

    .line 293
    .line 294
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->aa:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-le p1, p2, :cond_a

    .line 301
    .line 302
    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->aa:Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/sP/Sj;->sP()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    sub-int/2addr p1, p2

    .line 309
    iget-object p2, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/TKC;->vS:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/HiB;

    .line 310
    .line 311
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/Jcg;->Sj(ILjava/lang/String;)Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    return-object p1

    .line 316
    :cond_a
    return-object v1
.end method
