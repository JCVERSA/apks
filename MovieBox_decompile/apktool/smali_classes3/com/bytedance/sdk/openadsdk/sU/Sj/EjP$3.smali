.class Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->sP:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lt v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Landroid/os/Handler;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->Dq()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->EjP()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    goto :goto_1

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TEQ(Z)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    .line 73
    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    new-instance v7, Landroid/widget/FrameLayout;

    .line 85
    .line 86
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {v7, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    .line 92
    .line 93
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->sP:Ljava/lang/String;

    .line 94
    .line 95
    const/4 v6, 0x1

    .line 96
    move-object v2, v0

    .line 97
    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;IZLandroid/widget/FrameLayout;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;->Jcg()V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->sP:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    iput v2, v1, Landroid/os/Message;->what:I

    .line 123
    .line 124
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 127
    .line 128
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Landroid/os/Handler;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    .line 133
    .line 134
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    int-to-long v3, v3

    .line 139
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 140
    .line 141
    .line 142
    new-instance v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;

    .line 143
    .line 144
    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$Sj;)V

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const-string v2, "PL_start_pre_render"

    .line 165
    .line 166
    new-instance v3, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$2;

    .line 167
    .line 168
    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$2;-><init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Zq/TKC/Sj;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    .line 173
    .line 174
    return-void

    .line 175
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    return-void
.end method
