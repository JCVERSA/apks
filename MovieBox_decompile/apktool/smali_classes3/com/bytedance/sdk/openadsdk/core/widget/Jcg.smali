.class public Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;
.source "source.java"


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private HiB:Z

.field private Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

.field private sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private vS:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V
    .locals 6

    .line 2
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->HiB:Z

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->vS:Z

    if-eqz p2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->vS:Z

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->IOh()Z

    move-result p2

    const/16 v0, 0x8

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/uA/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/openadsdk/utils/wE;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-direct {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/wE;-><init>(Landroid/widget/ImageView;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7
    :catchall_0
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const-string v0, "Loading"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 10
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-eqz p2, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method protected Sj()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadingProgressBar()Lcom/bytedance/sdk/openadsdk/core/widget/Dq;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->HiB:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->HiB:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "#2E2E2E"

    .line 14
    .line 15
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    new-instance v2, Landroid/widget/LinearLayout;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 28
    .line 29
    const/4 v4, -0x1

    .line 30
    const/4 v5, -0x2

    .line 31
    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    const/16 v6, 0xd

    .line 35
    .line 36
    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    .line 41
    .line 42
    const/16 v3, 0x11

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 48
    .line 49
    .line 50
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 51
    .line 52
    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 56
    .line 57
    const v7, 0x1f000031

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 61
    .line 62
    .line 63
    const/high16 v6, 0x42800000    # 64.0f

    .line 64
    .line 65
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 70
    .line 71
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 72
    .line 73
    invoke-direct {v8, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 80
    .line 81
    invoke-direct {v6, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 85
    .line 86
    const v7, 0x1f000032

    .line 87
    .line 88
    .line 89
    invoke-virtual {v6, v7}, Landroid/view/View;->setId(I)V

    .line 90
    .line 91
    .line 92
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 93
    .line 94
    const/high16 v7, 0x435b0000    # 219.0f

    .line 95
    .line 96
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 97
    .line 98
    .line 99
    move-result v8

    .line 100
    invoke-direct {v6, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 101
    .line 102
    .line 103
    const/high16 v5, 0x41800000    # 16.0f

    .line 104
    .line 105
    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 110
    .line 111
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 112
    .line 113
    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    .line 115
    .line 116
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 117
    .line 118
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 119
    .line 120
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 121
    .line 122
    .line 123
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 124
    .line 125
    invoke-virtual {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 126
    .line 127
    .line 128
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 129
    .line 130
    const/high16 v8, 0x43160000    # 150.0f

    .line 131
    .line 132
    invoke-static {v1, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 137
    .line 138
    .line 139
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 140
    .line 141
    const/4 v8, 0x2

    .line 142
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 143
    .line 144
    .line 145
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 146
    .line 147
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 151
    .line 152
    invoke-virtual {v6, v0, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 153
    .line 154
    .line 155
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    .line 156
    .line 157
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;-><init>(Landroid/content/Context;)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    .line 161
    .line 162
    const v6, 0x1f000034

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 166
    .line 167
    .line 168
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 169
    .line 170
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    const/high16 v7, 0x40c00000    # 6.0f

    .line 175
    .line 176
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 177
    .line 178
    .line 179
    move-result v7

    .line 180
    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    const/high16 v6, 0x41c00000    # 24.0f

    .line 184
    .line 185
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 190
    .line 191
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    .line 192
    .line 193
    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 197
    .line 198
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 202
    .line 203
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 204
    .line 205
    const/high16 v6, 0x430a0000    # 138.0f

    .line 206
    .line 207
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    const/high16 v7, 0x42280000    # 42.0f

    .line 212
    .line 213
    invoke-static {v1, v7}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 218
    .line 219
    .line 220
    const/high16 v6, 0x42400000    # 48.0f

    .line 221
    .line 222
    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 227
    .line 228
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 229
    .line 230
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .line 232
    .line 233
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 234
    .line 235
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    .line 237
    .line 238
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 239
    .line 240
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 241
    .line 242
    .line 243
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 244
    .line 245
    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;->setGravity(I)V

    .line 246
    .line 247
    .line 248
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 249
    .line 250
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 251
    .line 252
    .line 253
    const/4 v3, 0x0

    .line 254
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v8, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 258
    .line 259
    .line 260
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 261
    .line 262
    div-int/2addr v0, v8

    .line 263
    int-to-float v0, v0

    .line 264
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 268
    .line 269
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 273
    .line 274
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->sP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 278
    .line 279
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    .line 283
    .line 284
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->EjP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 288
    .line 289
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 293
    .line 294
    .line 295
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/Jcg;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/Dq;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Dq;->setProgress(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
