.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj([FLcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->c_()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->HiB()Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2$1;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Fmk()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fqk()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 57
    .line 58
    const/4 p3, 0x0

    .line 59
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC(Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;->TKC(Z)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 81
    .line 82
    const/16 p3, 0x8

    .line 83
    .line 84
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Sj(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Z)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB()V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->sP()Landroid/widget/FrameLayout;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const/high16 p2, -0x1000000

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 141
    .line 142
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 143
    .line 144
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->vS()Landroid/widget/FrameLayout;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Sj(Landroid/widget/FrameLayout;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/Sj;->Sj()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dwU:Z

    .line 187
    .line 188
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->wE()V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 200
    .line 201
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_4

    .line 206
    .line 207
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Zq:Lcom/bytedance/sdk/openadsdk/core/model/TzV;

    .line 216
    .line 217
    if-eqz p1, :cond_4

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC()V

    .line 220
    .line 221
    .line 222
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->sP:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 223
    .line 224
    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;

    .line 225
    .line 226
    if-eqz p1, :cond_5

    .line 227
    .line 228
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 229
    .line 230
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 235
    .line 236
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 237
    .line 238
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 243
    .line 244
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 249
    .line 250
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 260
    .line 261
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 266
    .line 267
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->Dq()Z

    .line 268
    .line 269
    .line 270
    move-result p1

    .line 271
    if-nez p1, :cond_5

    .line 272
    .line 273
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 274
    .line 275
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 280
    .line 281
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->vS()V

    .line 282
    .line 283
    .line 284
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 285
    .line 286
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->Fmk()V

    .line 293
    .line 294
    .line 295
    return-void
.end method
