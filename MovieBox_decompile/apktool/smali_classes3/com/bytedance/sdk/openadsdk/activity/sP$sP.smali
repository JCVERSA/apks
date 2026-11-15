.class abstract Lcom/bytedance/sdk/openadsdk/activity/sP$sP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "sP"
.end annotation


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

.field protected EjP:I

.field protected HiB:I

.field private final Jcg:Landroid/os/Handler;

.field protected final Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

.field private TEQ:Z

.field protected TKC:F

.field private Ym:Z

.field private aa:Z

.field protected final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final uA:Landroid/content/Context;

.field protected vS:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/sP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->uA:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 35
    .line 36
    return-void
.end method

.method private EjP()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->aa:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->aa:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->uvD()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private HiB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->HiB(Lcom/bytedance/sdk/openadsdk/activity/sP;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->showSkipButton()V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TEQ:Z

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Ym:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->showCloseButton()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private TKC(I)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->aa:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I
.end method

.method public Sj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public Sj(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->aa:Z

    .line 4
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TEQ:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x3

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC(I)V

    :cond_1
    return-void
.end method

.method public TKC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const-string v1, "s"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const-wide/16 v3, 0x3e8

    .line 7
    .line 8
    const/4 v5, 0x1

    .line 9
    if-ne v0, v5, :cond_1

    .line 10
    .line 11
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 12
    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 23
    .line 24
    add-int/lit8 v7, v6, -0x1

    .line 25
    .line 26
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 27
    .line 28
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->setSkipText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP()V

    .line 42
    .line 43
    .line 44
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 45
    .line 46
    if-ltz v0, :cond_4

    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    .line 49
    .line 50
    iget v1, p1, Landroid/os/Message;->what:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    .line 56
    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    .line 58
    .line 59
    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC(I)V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    const/4 v6, 0x2

    .line 71
    if-ne v0, v6, :cond_3

    .line 72
    .line 73
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 74
    .line 75
    if-lez v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Dq:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    iget v6, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 85
    .line 86
    add-int/lit8 v7, v6, -0x1

    .line 87
    .line 88
    iput v7, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 89
    .line 90
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;->setSkipText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP()V

    .line 104
    .line 105
    .line 106
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 107
    .line 108
    if-ltz v0, :cond_4

    .line 109
    .line 110
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    .line 111
    .line 112
    iget v1, p1, Landroid/os/Message;->what:I

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    .line 118
    .line 119
    iget p1, p1, Landroid/os/Message;->what:I

    .line 120
    .line 121
    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC(I)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB()V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    if-ne v0, v2, :cond_4

    .line 133
    .line 134
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    .line 135
    .line 136
    if-lez v0, :cond_4

    .line 137
    .line 138
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP()V

    .line 139
    .line 140
    .line 141
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->vS:I

    .line 142
    .line 143
    if-ltz v0, :cond_4

    .line 144
    .line 145
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    .line 146
    .line 147
    iget v1, p1, Landroid/os/Message;->what:I

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    .line 153
    .line 154
    iget p1, p1, Landroid/os/Message;->what:I

    .line 155
    .line 156
    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_0
    return v5
.end method

.method public sP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Sj:Lcom/bytedance/sdk/openadsdk/activity/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->EjP(Lcom/bytedance/sdk/openadsdk/activity/sP;)Lcom/bytedance/sdk/openadsdk/activity/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->zR()Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TEQ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Ym:Z

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public sP(I)V
    .locals 2

    .line 6
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TEQ:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Ym:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    int-to-float p1, p1

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->TKC:F

    .line 8
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    .line 9
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    if-nez v0, :cond_2

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    float-to-int p1, p1

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->EjP:I

    .line 13
    :cond_2
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_4

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->Jcg:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/sP$sP;->HiB:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void
.end method
