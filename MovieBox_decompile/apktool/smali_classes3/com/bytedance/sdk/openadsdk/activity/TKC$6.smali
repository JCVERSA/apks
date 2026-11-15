.class Lcom/bytedance/sdk/openadsdk/activity/TKC$6;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/sP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(ZZLjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

.field final synthetic Sj:Z

.field final synthetic TKC:Ljava/lang/Runnable;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/widget/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TKC;ZLcom/bytedance/sdk/openadsdk/core/widget/sP;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->Sj:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->TKC:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->Sj:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 10
    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public sP()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->sP:Lcom/bytedance/sdk/openadsdk/core/widget/sP;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Ym()Landroid/os/Bundle;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "user_has_give_up_reward"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 37
    .line 38
    const v1, 0x7fffffff

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->vS(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->TKC:Ljava/lang/Runnable;

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->Sj:Z

    .line 53
    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 85
    .line 86
    const/4 v1, 0x5

    .line 87
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq()V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Z

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->vS()V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 132
    .line 133
    const/4 v1, 0x4

    .line 134
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(I)V

    .line 135
    .line 136
    .line 137
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 138
    .line 139
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/vS;->ley()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TKC$6;->EjP:Lcom/bytedance/sdk/openadsdk/activity/TKC;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/activity/TKC;)Z

    .line 146
    .line 147
    .line 148
    return-void
.end method
