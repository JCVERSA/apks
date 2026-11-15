.class Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/dNu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_2

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    xor-int/lit8 v0, p1, 0x1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "tt_reward_full_mute"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "tt_reward_full_unmute"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 47
    .line 48
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->HiB(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v3, "vastBannerBackupViewClick"

    .line 53
    .line 54
    invoke-virtual {v2, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->vS(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Landroid/widget/ImageView;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Jcg(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Dq(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->uA(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    if-nez p1, :cond_1

    .line 103
    .line 104
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->Ym(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->TEQ(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v0

    .line 124
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Dq(J)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->aa(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg$4;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->TEQ(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->uA(J)V

    .line 149
    .line 150
    .line 151
    :cond_2
    return-void
.end method
