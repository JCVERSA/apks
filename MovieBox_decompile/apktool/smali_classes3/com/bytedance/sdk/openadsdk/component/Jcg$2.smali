.class Lcom/bytedance/sdk/openadsdk/component/Jcg$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/Jcg;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_b

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 27
    .line 28
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v4, 0x0

    .line 44
    const/16 v5, 0x65

    .line 45
    .line 46
    const/4 v6, 0x1

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 50
    .line 51
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    .line 52
    .line 53
    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_1
    if-nez v2, :cond_2

    .line 61
    .line 62
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-ne v3, v6, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 73
    .line 74
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    .line 75
    .line 76
    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Ym()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    const/4 v7, 0x2

    .line 94
    if-eq v3, v7, :cond_3

    .line 95
    .line 96
    const/4 v7, 0x3

    .line 97
    if-ne v3, v7, :cond_4

    .line 98
    .line 99
    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 100
    .line 101
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    .line 102
    .line 103
    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 111
    .line 112
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 117
    .line 118
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/component/vS;->sP(I)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v3, :cond_6

    .line 127
    .line 128
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 129
    .line 130
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 135
    .line 136
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/component/vS;->EjP(I)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-eqz v3, :cond_5

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 148
    .line 149
    invoke-static {v0, v6}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_6
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 158
    .line 159
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->EjP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 160
    .line 161
    .line 162
    move-result-object v7

    .line 163
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    invoke-interface {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-nez v3, :cond_7

    .line 172
    .line 173
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 174
    .line 175
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 180
    .line 181
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->sP(Lcom/bytedance/sdk/openadsdk/component/Jcg;)I

    .line 182
    .line 183
    .line 184
    move-result v7

    .line 185
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg(I)V

    .line 186
    .line 187
    .line 188
    :cond_7
    if-eqz v2, :cond_9

    .line 189
    .line 190
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 191
    .line 192
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_8

    .line 205
    .line 206
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 207
    .line 208
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V

    .line 209
    .line 210
    .line 211
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 216
    .line 217
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    .line 218
    .line 219
    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 220
    .line 221
    .line 222
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    .line 223
    .line 224
    .line 225
    return-void

    .line 226
    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 227
    .line 228
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->TKC(Lcom/bytedance/sdk/openadsdk/component/Jcg;)Lcom/bytedance/sdk/openadsdk/component/vS;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    if-eqz v2, :cond_a

    .line 237
    .line 238
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 239
    .line 240
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;

    .line 241
    .line 242
    invoke-direct {v2, v6, v5, v0, v4}, Lcom/bytedance/sdk/openadsdk/component/HiB/sP;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    .line 243
    .line 244
    .line 245
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Lcom/bytedance/sdk/openadsdk/component/HiB/sP;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :cond_a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 250
    .line 251
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V

    .line 252
    .line 253
    .line 254
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/Jcg$2;->Sj:Lcom/bytedance/sdk/openadsdk/component/Jcg;

    .line 259
    .line 260
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg;->Sj(Lcom/bytedance/sdk/openadsdk/component/Jcg;Z)V

    .line 261
    .line 262
    .line 263
    return-void
.end method
