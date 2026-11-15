.class public Lcom/bytedance/sdk/openadsdk/core/model/TzV;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;
    }
.end annotation


# instance fields
.field private Bml:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field private Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field Dq:Landroid/widget/FrameLayout;

.field private EZ:Landroid/widget/FrameLayout;

.field private Ei:Z

.field EjP:Landroid/widget/FrameLayout;

.field private FPG:I

.field private Fm:Z

.field Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

.field HiB:Landroid/view/View;

.field private HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

.field private IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field private final Ir:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private JcM:Ljava/lang/String;

.field final Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private final LD:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private LqL:Landroid/view/View;

.field private final Mts:Landroid/view/View;

.field private MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

.field private RiZ:Landroid/widget/TextView;

.field Sj:Landroid/widget/ImageView;

.field TEQ:Landroid/animation/ValueAnimator;

.field TKC:Landroid/widget/TextView;

.field private TzV:Landroid/widget/TextView;

.field private volatile UHs:I

.field private Uc:J

.field private final WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

.field private Wjd:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field private Yf:J

.field Ym:Landroid/animation/ObjectAnimator;

.field private Zq:Landroid/os/Handler;

.field private aNB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field aa:Lw5/b$b;

.field private cX:Landroid/widget/LinearLayout$LayoutParams;

.field private dNu:Landroid/view/View;

.field private db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private dwU:I

.field private dx:Landroid/widget/TextView;

.field private final fF:Landroid/app/Activity;

.field private gR:Landroid/animation/ValueAnimator;

.field private gY:F

.field private ib:Lcom/bytedance/sdk/component/uA/vS;

.field private final jb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private kF:Landroid/widget/FrameLayout;

.field private final kb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ley:Landroid/widget/ImageView;

.field private volatile ndK:I

.field private pfr:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private volatile qRN:I

.field sP:Landroid/widget/FrameLayout;

.field private sU:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field private sdp:I

.field sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

.field uA:Landroid/animation/ObjectAnimator;

.field private uP:Lcom/bytedance/sdk/openadsdk/common/aa;

.field private uvD:Landroid/view/View;

.field vS:Landroid/widget/RelativeLayout;

.field private wE:Landroid/view/View;

.field private xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field private xhi:Ljava/lang/String;

.field private xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

.field private zR:Lcom/bytedance/sdk/openadsdk/core/Yf;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v8, p2

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v10, 0x0

    .line 13
    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->jb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    .line 26
    .line 27
    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    .line 28
    .line 29
    iput v10, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    .line 30
    .line 31
    const/high16 v1, -0x40800000    # -1.0f

    .line 32
    .line 33
    iput v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gY:F

    .line 34
    .line 35
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    const-wide/16 v1, -0x1

    .line 43
    .line 44
    iput-wide v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Uc:J

    .line 45
    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-direct {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    .line 54
    .line 55
    iput-object v8, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 56
    .line 57
    move-object/from16 v1, p3

    .line 58
    .line 59
    iput-object v1, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 60
    .line 61
    move-object/from16 v2, p5

    .line 62
    .line 63
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    .line 64
    .line 65
    move-object/from16 v2, p6

    .line 66
    .line 67
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    .line 68
    .line 69
    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->FPG:I

    .line 74
    .line 75
    if-eqz v8, :cond_0

    .line 76
    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    .line 82
    .line 83
    :cond_0
    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->sP()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 100
    .line 101
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget-object v3, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 106
    .line 107
    iget-object v4, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dwU:I

    .line 114
    .line 115
    if-lez v2, :cond_1

    .line 116
    .line 117
    const/4 v2, 0x2

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    move v2, v10

    .line 120
    :goto_0
    iput v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sdp:I

    .line 121
    .line 122
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 123
    .line 124
    .line 125
    move-result v11

    .line 126
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    if-eqz v13, :cond_3

    .line 135
    .line 136
    const-string v2, "landingpage_split_screen"

    .line 137
    .line 138
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    if-eqz v11, :cond_4

    .line 142
    .line 143
    const-string v2, "landingpage_direct"

    .line 144
    .line 145
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_4
    if-eqz v12, :cond_5

    .line 149
    .line 150
    const-string v2, "aggregate_page"

    .line 151
    .line 152
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_6

    .line 160
    .line 161
    const-string v2, "landingpage_split_ceiling"

    .line 162
    .line 163
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 164
    .line 165
    :cond_6
    :goto_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 166
    .line 167
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    iget-object v4, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 172
    .line 173
    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    invoke-direct {v2, v3, v8, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 178
    .line 179
    .line 180
    iput-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 181
    .line 182
    new-instance v14, Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 185
    .line 186
    .line 187
    const/4 v2, 0x1

    .line 188
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    const-string v3, "click_scence"

    .line 193
    .line 194
    invoke-interface {v14, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 198
    .line 199
    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    .line 200
    .line 201
    .line 202
    const v2, 0x1020002

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object v15

    .line 209
    iget-object v2, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    .line 210
    .line 211
    invoke-virtual {v2, v15}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    .line 212
    .line 213
    .line 214
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/model/TzV$1;

    .line 215
    .line 216
    iget-object v5, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static/range {p3 .. p3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v6

    .line 222
    const/16 v16, 0x1

    .line 223
    .line 224
    move-object v1, v7

    .line 225
    move-object/from16 v2, p0

    .line 226
    .line 227
    move-object/from16 v3, p1

    .line 228
    .line 229
    move-object/from16 v4, p2

    .line 230
    .line 231
    move-object v0, v7

    .line 232
    move/from16 v7, v16

    .line 233
    .line 234
    move-object/from16 v8, p2

    .line 235
    .line 236
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;IZLcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 237
    .line 238
    .line 239
    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    .line 240
    .line 241
    invoke-virtual {v0, v14}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    .line 245
    .line 246
    invoke-virtual {v0, v15}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;)V

    .line 247
    .line 248
    .line 249
    move-object/from16 v0, p4

    .line 250
    .line 251
    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq:Landroid/widget/FrameLayout;

    .line 252
    .line 253
    if-nez v13, :cond_7

    .line 254
    .line 255
    if-nez v11, :cond_7

    .line 256
    .line 257
    if-eqz v12, :cond_8

    .line 258
    .line 259
    :cond_7
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    .line 260
    .line 261
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    invoke-direct {v0, v1, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 266
    .line 267
    .line 268
    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    .line 269
    .line 270
    :cond_8
    if-nez v11, :cond_9

    .line 271
    .line 272
    if-eqz v12, :cond_a

    .line 273
    .line 274
    :cond_9
    iget-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    .line 275
    .line 276
    const/16 v1, 0x64

    .line 277
    .line 278
    invoke-virtual {v0, v1, v10, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    .line 285
    :cond_a
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    const-string v1, "LandingPageModel"

    .line 288
    .line 289
    const-string v2, "LandingPageModel: "

    .line 290
    .line 291
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    .line 293
    .line 294
    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk()V

    return-void
.end method

.method public static Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p0

    const/16 v0, 0x14

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    return-object p0
.end method

.method public static EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 7
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_3

    :cond_2
    return v2

    :cond_3
    return v0
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method private Fmk()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->jb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Uc:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Uc:J

    sub-long/2addr v2, v4

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static {v0, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;J)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf:J

    sub-long/2addr v3, v5

    .line 10
    invoke-static {v0, v2, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JZ)V

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf:J

    return-wide v0
.end method

.method public static HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p0

    const/16 v1, 0x21

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic JcM(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    return-object p0
.end method

.method public static Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->jjS()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic LD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic LqL(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic RiZ(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gY:F

    return p0
.end method

.method private RiZ()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gY:F

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gR:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Ljava/util/concurrent/atomic/AtomicBoolean;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ei:Z

    return p1
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 58
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    return-object p0
.end method

.method public static TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sU()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private TKC(I)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Bml:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aNB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->jb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public static TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->zR()I

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method static synthetic TzV(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/EjP/Ym;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    return-object p0
.end method

.method private TzV()V
    .locals 7

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ley:Landroid/widget/ImageView;

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    const-string v4, "translationY"

    invoke-static {v0, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x1f4

    .line 5
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA:Landroid/animation/ObjectAnimator;

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA:Landroid/animation/ObjectAnimator;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/TzV$5;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Dq:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj:Landroid/widget/ImageView;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/TzV$6;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/TzV$7;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/HiB/uvD;)V

    .line 20
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj()Lcom/bytedance/sdk/component/HiB/Zq;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/bytedance/sdk/component/HiB/Zq;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 22
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 23
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v2

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v2

    .line 26
    invoke-interface {v2, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;-><init>()V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/Dq;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/TzV$8;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x0
    .end array-data
.end method

.method static synthetic WMZ(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gR:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Yf(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->cX:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    return-object p0
.end method

.method private Ym()V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dwU:I

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-direct {v0, v3, v4, v5, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;-><init>(ILcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->f_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->sP()Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_1

    .line 9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/TEQ;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sdp:I

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/EjP/TEQ;I)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

    if-eqz v0, :cond_2

    .line 14
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Ljava/lang/String;)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;)V

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aa()V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->f_()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU()V

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPage(Z)V

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setTag(Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hif()Lcom/bytedance/sdk/component/uA/sP/Sj;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setMaterialMeta(Lcom/bytedance/sdk/component/uA/sP/Sj;)V

    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$12;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 23
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    const/4 v11, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    .line 24
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HpB:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/TzV$13;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$13;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/common/EjP;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Wjd:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    if-nez v0, :cond_5

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Wjd:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/TzV$14;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$14;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    const/16 v4, 0x1bca

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/uA/vS;->setUserAgentString(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$15;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$15;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$16;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sef:Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sdp:I

    invoke-static {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->f_()Z

    move-result v0

    if-nez v0, :cond_6

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    .line 39
    :cond_6
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fm:Z

    .line 40
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_8

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->TKC()Z

    move-result v0

    if-nez v0, :cond_8

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj()V

    :cond_8
    return-void
.end method

.method static synthetic Zq(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    return v0
.end method

.method private Zq()V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LD:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->jb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Dq()V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/aa;->sP()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    const-string v7, "show_agg_backup"

    invoke-static {v0, v1, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 11
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    invoke-virtual {v0, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->gR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP()V

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk:Lcom/bytedance/sdk/openadsdk/core/sP/Sj;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->cX:Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_7

    .line 33
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v1, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    const/16 v0, 0x8

    .line 34
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(I)V

    return-void

    .line 35
    :cond_6
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(I)V

    :cond_7
    return-void
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    return v0
.end method

.method private aa()V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 5
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 7
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->FPG:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HpB()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$17;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$17;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method static synthetic dNu(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Wjd:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    return-object p0
.end method

.method private dNu()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/aa;->getLoadingStyle()Lcom/bytedance/sdk/openadsdk/common/Ym;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Ym;->sP()Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Bml:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/Ym;->TKC()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aNB:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    if-eqz v0, :cond_1

    .line 7
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method static synthetic dx(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/common/EjP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->MuB:Lcom/bytedance/sdk/openadsdk/common/EjP;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic fF(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EZ:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ib(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic kF(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ley(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private sP(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ei:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;I)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(I)Z

    move-result p0

    return p0
.end method

.method public static sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->liH()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method static synthetic sU(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    return-object p0
.end method

.method private sU()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget v0, v0, Lcom/bytedance/sdk/component/uA/vS;->Sj:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget v0, v0, Lcom/bytedance/sdk/component/uA/vS;->sP:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    iget v0, v0, Lcom/bytedance/sdk/component/uA/vS;->TKC:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Ym()V

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Yf:J

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->EjP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->TKC()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fmk()V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Landroid/webkit/WebView;)I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xu:Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$sP;->Sj(I)V

    :cond_3
    return-void
.end method

.method static synthetic sef(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    return v0
.end method

.method private sef()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "timeVisible"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TzV$18;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$18;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    return-object p0
.end method

.method public static uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result p0

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic uP(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uvD(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/common/aa;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    return-object p0
.end method

.method private uvD()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->Ym()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->aa()V

    :cond_1
    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq()V

    return-void
.end method

.method public static vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic wE(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic zR(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->UHs:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public Dq()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Dq()V

    :cond_0
    return-void
.end method

.method public EjP()Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public HiB()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public Jcg()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Jcg()V

    :cond_1
    return-void
.end method

.method public Sj()V
    .locals 10

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/Zq;->dx:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/uA/vS;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->f_()Z

    move-result v2

    if-nez v2, :cond_1

    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->HiB()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 15
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sU:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    .line 16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->uP:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/common/aa;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    .line 17
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->zR:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->wE:Landroid/view/View;

    .line 18
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->ib:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ley:Landroid/widget/ImageView;

    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->WMZ:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    .line 20
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TzV:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP:Landroid/widget/FrameLayout;

    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->RiZ:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Sj:Landroid/widget/ImageView;

    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->kF:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS:Landroid/widget/RelativeLayout;

    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->yr:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC:Landroid/widget/TextView;

    .line 24
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TEQ:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP:Landroid/widget/FrameLayout;

    .line 25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->wE:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    if-nez v2, :cond_2

    .line 26
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->FPG:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uvD:Landroid/view/View;

    .line 27
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->ley:I

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu:Landroid/view/View;

    .line 28
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->Yf:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV:Landroid/widget/TextView;

    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->LD:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ:Landroid/widget/TextView;

    .line 30
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->LqL:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sU:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 31
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->fF:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->HiB()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->JcM:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB:Landroid/view/View;

    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Mts:Landroid/view/View;

    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->XgY:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 37
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 38
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 41
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->TKC()J

    move-result-wide v4

    goto :goto_1

    .line 42
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->Sj()J

    move-result-wide v4

    .line 43
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    move-result-object v2

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/TzV$11;

    invoke-direct {v6, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    const-wide/16 v7, 0x3e8

    mul-long/2addr v4, v7

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym()V

    .line 45
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TzV()V

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP()Z

    move-result v2

    if-nez v2, :cond_8

    .line 48
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x40151eb8    # 2.33f

    .line 49
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 50
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    if-eqz v2, :cond_a

    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 53
    :cond_a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v2, :cond_b

    .line 54
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 55
    :cond_b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dNu()V

    .line 57
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v4, v2, v0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$Sj;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(F)V
    .locals 0

    .line 60
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->uA()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public Sj(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->pfr:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB(I)V

    :cond_0
    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 17

    move-object/from16 v15, p0

    move/from16 v14, p1

    const/4 v0, 0x3

    if-eq v14, v0, :cond_0

    .line 65
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EZ:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move-object v0, v15

    goto/16 :goto_3

    .line 67
    :cond_2
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v13, 0x1

    if-eqz v0, :cond_4

    if-ne v14, v13, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x5

    if-ne v14, v1, :cond_4

    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 69
    :cond_4
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->LqL:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 70
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kF:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->cX:Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 72
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef()Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    move-result-object v0

    .line 73
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->sP(I)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->HiB()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    :goto_1
    move v4, v0

    goto :goto_2

    :cond_5
    const/high16 v0, 0x41f00000    # 30.0f

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->vS()I

    move-result v0

    goto :goto_0

    :cond_7
    const/high16 v0, 0x428c0000    # 70.0f

    goto :goto_1

    .line 76
    :goto_2
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EZ:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_8

    .line 77
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_8
    move-object v5, v0

    .line 78
    iget v8, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 79
    iget v6, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 80
    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 81
    iget v12, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 82
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Dq()D

    move-result-wide v13

    double-to-float v1, v13

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v7

    .line 83
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->uA()D

    move-result-wide v13

    double-to-float v1, v13

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v9

    .line 84
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->vS()D

    move-result-wide v13

    double-to-float v1, v13

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v11

    .line 85
    iget-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->fF:Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Jcg()D

    move-result-wide v13

    double-to-float v1, v13

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v13

    const/4 v0, 0x2

    .line 86
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    move/from16 p2, v13

    const-wide/16 v13, 0x1f4

    .line 87
    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 88
    iget-object v14, v15, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    new-instance v13, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v15, v13

    move/from16 v13, p2

    move-object/from16 v16, v14

    move/from16 v14, p1

    invoke-direct/range {v0 .. v14}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;Landroid/widget/LinearLayout$LayoutParams;FFLandroid/widget/FrameLayout$LayoutParams;IIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    .line 89
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    move/from16 v3, p1

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    .line 90
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 91
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->kb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Uc:J

    .line 93
    :cond_9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v1, :cond_a

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(ZJ)V

    .line 95
    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->IOh:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Landroid/widget/FrameLayout;)V
    .locals 0
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->pfr:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 62
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EZ:Landroid/widget/FrameLayout;

    return-void
.end method

.method public Sj(Lw5/b$b;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aa:Lw5/b$b;

    return-void
.end method

.method public TEQ()V
    .locals 3

    .line 4
    const-string v0, "landingpage_split_screen"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->JcM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "default_split_style"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dx/Sj;->Sj(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public TKC()V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->RiZ()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    invoke-virtual {v0}, La6/b;->r()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj()Lcom/bytedance/sdk/component/HiB/Zq;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/component/HiB/Zq;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 5
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v2

    invoke-virtual {v2}, La6/b;->t()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v2

    invoke-virtual {v2}, La6/b;->C()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    const/4 v2, 0x2

    .line 9
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$Sj;-><init>()V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/Dq;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/TzV$4;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/TzV;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/16 v2, 0x64

    .line 5
    .line 6
    if-ne v0, v2, :cond_4

    .line 7
    .line 8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->sP()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Fmk()Lcom/bytedance/sdk/openadsdk/core/model/RiZ;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/RiZ;->EjP()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-wide/16 v3, 0x14

    .line 69
    .line 70
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aa:Lw5/b$b;

    .line 71
    .line 72
    const-wide/16 v5, 0x3e8

    .line 73
    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    int-to-long v7, p1

    .line 77
    mul-long/2addr v7, v5

    .line 78
    mul-long v9, v3, v5

    .line 79
    .line 80
    invoke-interface {v0, v7, v8, v9, v10}, Lw5/b$b;->Sj(JJ)V

    .line 81
    .line 82
    .line 83
    :cond_2
    int-to-long v7, p1

    .line 84
    cmp-long v0, v7, v3

    .line 85
    .line 86
    if-ltz v0, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->aa:Lw5/b$b;

    .line 89
    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    mul-long/2addr v3, v5

    .line 93
    invoke-interface {p1, v3, v4, v2}, Lw5/b$b;->Sj(JI)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    if-gez v0, :cond_5

    .line 98
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput v2, v0, Landroid/os/Message;->what:I

    .line 108
    .line 109
    add-int/2addr p1, v1

    .line 110
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 111
    .line 112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    .line 113
    .line 114
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    const/16 p1, 0x65

    .line 119
    .line 120
    if-ne v0, p1, :cond_5

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ()V

    .line 123
    .line 124
    .line 125
    :cond_5
    :goto_1
    return v1
.end method

.method protected sP()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->dx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public uA()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Chv:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public vS()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Zq:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gR:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->gR:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TEQ:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    .line 14
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Ym:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uP:Lcom/bytedance/sdk/openadsdk/common/aa;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/aa;->sP()V

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->uA:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/JcM;->Sj(Landroid/webkit/WebView;)V

    .line 22
    :cond_7
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ib:Lcom/bytedance/sdk/component/uA/vS;

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->zR:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_8

    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa()V

    .line 25
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xD:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_9

    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP(Z)V

    .line 27
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->xhi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Fm:Z

    if-eqz v0, :cond_a

    .line 28
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->qRN:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->ndK:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->Jcg:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$Sj;->Sj(IILcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 29
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->db:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;)V

    return-void
.end method
