.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public Bml:J

.field public Chv:Z

.field public Dq:I

.field public EZ:Z

.field public final Ei:Landroid/content/Context;

.field public final EjP:Z

.field public final FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

.field public final Fm:Landroid/app/Activity;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final Fmk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public HS:Lcom/bytedance/sdk/openadsdk/activity/vS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final HiB:Ljava/lang/String;

.field public final HpB:Lcom/bytedance/sdk/component/utils/LqL;

.field public IOh:I

.field public Ir:Z

.field public final JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

.field public final Jcg:Z

.field public final LD:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

.field public final LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

.field public final Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public MuB:F

.field public final RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final Sj:I

.field public final TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private TFd:J

.field public final TKC:Z

.field public final TzV:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public UHs:I

.field public Uc:Z

.field public final WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

.field public final Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

.field public final Yf:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

.field public final Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public aNB:Lcom/bytedance/sdk/openadsdk/common/Fmk;

.field public aZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/TKC;

.field public final aa:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public cX:Z

.field public final dNu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public db:Ljava/lang/String;

.field public dwU:Z

.field public final dx:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public fF:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

.field public gR:Z

.field public gY:Z

.field public final ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field public final kF:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

.field public kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

.field public final ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

.field private mZN:J

.field public ndK:Z

.field public pfr:I

.field public qRN:Z

.field public final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field public final sU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sdp:I

.field public final sef:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public tz:Lcom/bytedance/sdk/openadsdk/component/reward/Ym;

.field public uA:I

.field public final uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

.field public final uvD:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final vS:I

.field public final wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

.field public final xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

.field public final xhi:Z

.field public xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

.field public final zR:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/component/utils/LqL;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;I)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uA:I

    .line 8
    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ym:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->aa:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fmk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uvD:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    .line 58
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dNu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TzV:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    .line 79
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->dx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->zR:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    .line 100
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->qRN:Z

    .line 101
    .line 102
    const/4 v1, 0x1

    .line 103
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    .line 104
    .line 105
    const-wide/16 v2, 0x0

    .line 106
    .line 107
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Bml:J

    .line 108
    .line 109
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    .line 110
    .line 111
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 112
    .line 113
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p4

    .line 117
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 118
    .line 119
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 120
    .line 121
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Sj:I

    .line 122
    .line 123
    const/4 v2, 0x2

    .line 124
    if-eqz p5, :cond_1

    .line 125
    .line 126
    if-ne p5, v2, :cond_0

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    move v3, v0

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    move v3, v1

    .line 132
    :goto_1
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xhi:Z

    .line 133
    .line 134
    if-eqz p5, :cond_3

    .line 135
    .line 136
    if-ne p5, v1, :cond_2

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    move v3, v0

    .line 140
    goto :goto_3

    .line 141
    :cond_3
    :goto_2
    move v3, v1

    .line 142
    :goto_3
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Uc:Z

    .line 143
    .line 144
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 145
    .line 146
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xD()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    const/4 v3, 0x7

    .line 155
    if-ne p2, v3, :cond_4

    .line 156
    .line 157
    move v0, v1

    .line 158
    :cond_4
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    .line 159
    .line 160
    if-eqz v0, :cond_5

    .line 161
    .line 162
    const-string p2, "rewarded_video"

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_5
    const-string p2, "fullscreen_interstitial_ad"

    .line 166
    .line 167
    :goto_4
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    .line 170
    .line 171
    .line 172
    move-result p2

    .line 173
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->cX:Z

    .line 174
    .line 175
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Jcg:Z

    .line 180
    .line 181
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 182
    .line 183
    .line 184
    move-result p2

    .line 185
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->vS:I

    .line 186
    .line 187
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->dNu(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    .line 200
    .line 201
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    invoke-interface {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sef(Ljava/lang/String;)Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TKC:Z

    .line 214
    .line 215
    if-ne p5, v2, :cond_6

    .line 216
    .line 217
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Fmk;

    .line 218
    .line 219
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Fmk;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 220
    .line 221
    .line 222
    goto :goto_5

    .line 223
    :cond_6
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    .line 224
    .line 225
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 226
    .line 227
    .line 228
    :goto_5
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ley:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/aa;

    .line 229
    .line 230
    if-ne p5, v2, :cond_7

    .line 231
    .line 232
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/Ym;

    .line 233
    .line 234
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 235
    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_7
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EjP()Z

    .line 239
    .line 240
    .line 241
    move-result p2

    .line 242
    if-eqz p2, :cond_8

    .line 243
    .line 244
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 245
    .line 246
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 247
    .line 248
    .line 249
    goto :goto_6

    .line 250
    :cond_8
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/uA;

    .line 251
    .line 252
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/uA;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 253
    .line 254
    .line 255
    :goto_6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 256
    .line 257
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    .line 258
    .line 259
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 260
    .line 261
    .line 262
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    .line 263
    .line 264
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 265
    .line 266
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 267
    .line 268
    .line 269
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ib:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/dNu;

    .line 270
    .line 271
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

    .line 272
    .line 273
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 274
    .line 275
    .line 276
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kF:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/EjP;

    .line 277
    .line 278
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 279
    .line 280
    invoke-direct {p2, p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 281
    .line 282
    .line 283
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 284
    .line 285
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 286
    .line 287
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 288
    .line 289
    .line 290
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    .line 291
    .line 292
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 293
    .line 294
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 295
    .line 296
    .line 297
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->JcM:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;

    .line 298
    .line 299
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    .line 300
    .line 301
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 302
    .line 303
    .line 304
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    .line 305
    .line 306
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 307
    .line 308
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 309
    .line 310
    .line 311
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 312
    .line 313
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    .line 314
    .line 315
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 316
    .line 317
    .line 318
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    .line 319
    .line 320
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 321
    .line 322
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 323
    .line 324
    .line 325
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    .line 326
    .line 327
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 328
    .line 329
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 330
    .line 331
    .line 332
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Yf:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/vS;

    .line 333
    .line 334
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 335
    .line 336
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 337
    .line 338
    .line 339
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LD:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TKC;

    .line 340
    .line 341
    new-instance p2, Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    .line 342
    .line 343
    invoke-direct {p2, p4}, Lcom/bytedance/sdk/openadsdk/aa/TEQ;-><init>(Landroid/content/Context;)V

    .line 344
    .line 345
    .line 346
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->fF:Lcom/bytedance/sdk/openadsdk/aa/TEQ;

    .line 347
    .line 348
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj$1;

    .line 349
    .line 350
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V

    .line 351
    .line 352
    .line 353
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/Dq;->Sj(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/Dq$Sj;)Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    .line 358
    .line 359
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    return-void
.end method

.method public Sj(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->gY:Z

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    return-void
.end method

.method public TKC()J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->mZN:J

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    .line 8
    .line 9
    sub-long/2addr v2, v4

    .line 10
    add-long/2addr v0, v2

    .line 11
    return-wide v0
.end method

.method public sP()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    .line 14
    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->mZN:J

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->TFd:J

    .line 22
    .line 23
    sub-long/2addr v2, v4

    .line 24
    add-long/2addr v0, v2

    .line 25
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->mZN:J

    .line 26
    .line 27
    return-void
.end method
