.class public Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$Sj;
    }
.end annotation


# instance fields
.field private EjP:Landroid/widget/TextView;

.field private HiB:Z

.field private Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field private sP:Landroid/widget/TextView;

.field private vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    .line 7
    .line 8
    const/16 p1, 0x8

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private EjP()V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0x10

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/high16 v3, 0x41800000    # 16.0f

    .line 15
    .line 16
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    const/high16 v5, 0x41400000    # 12.0f

    .line 21
    .line 22
    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setPadding(IIII)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 38
    .line 39
    invoke-direct {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 43
    .line 44
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 48
    .line 49
    sget v6, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sP:I

    .line 50
    .line 51
    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 55
    .line 56
    const/high16 v6, 0x42400000    # 48.0f

    .line 57
    .line 58
    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    invoke-static {v2, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-direct {v4, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 67
    .line 68
    .line 69
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 70
    .line 71
    invoke-virtual {p0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 75
    .line 76
    invoke-direct {v4, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    const/4 v6, 0x1

    .line 80
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    .line 82
    .line 83
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    const/4 v8, -0x2

    .line 86
    invoke-direct {v7, v0, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 94
    .line 95
    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    .line 97
    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 98
    .line 99
    invoke-virtual {p0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 103
    .line 104
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 108
    .line 109
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 110
    .line 111
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 120
    .line 121
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 125
    .line 126
    const/high16 v1, 0x41880000    # 17.0f

    .line 127
    .line 128
    const/4 v7, 0x2

    .line 129
    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 133
    .line 134
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TKC:I

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 140
    .line 141
    const/high16 v1, -0x1000000

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 147
    .line 148
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    .line 150
    const/4 v9, -0x1

    .line 151
    invoke-direct {v1, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 158
    .line 159
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;-><init>(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 163
    .line 164
    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->HiB:I

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 170
    .line 171
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 172
    .line 173
    const/high16 v10, 0x41600000    # 14.0f

    .line 174
    .line 175
    invoke-static {v2, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 176
    .line 177
    .line 178
    move-result v10

    .line 179
    invoke-direct {v1, v8, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    .line 184
    .line 185
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 186
    .line 187
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 188
    .line 189
    .line 190
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 191
    .line 192
    const/16 v1, 0x11

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 198
    .line 199
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 208
    .line 209
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 213
    .line 214
    invoke-virtual {v0, v7, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 218
    .line 219
    const v1, 0x1f000009

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 223
    .line 224
    .line 225
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    .line 233
    .line 234
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 235
    .line 236
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 237
    .line 238
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 239
    .line 240
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    .line 249
    const/high16 v1, 0x43240000    # 164.0f

    .line 250
    .line 251
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    const/high16 v3, 0x42100000    # 36.0f

    .line 256
    .line 257
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 258
    .line 259
    .line 260
    move-result v2

    .line 261
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .line 263
    .line 264
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 265
    .line 266
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .line 268
    .line 269
    return-void
.end method

.method private HiB()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x41800000    # 16.0f

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/high16 v5, 0x41c00000    # 24.0f

    .line 20
    .line 21
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setPadding(IIII)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 29
    .line 30
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    .line 36
    .line 37
    const/16 v4, 0x10

    .line 38
    .line 39
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setGravity(I)V

    .line 40
    .line 41
    .line 42
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    .line 44
    const/4 v6, -0x1

    .line 45
    const/4 v7, -0x2

    .line 46
    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    const/high16 v8, 0x41400000    # 12.0f

    .line 50
    .line 51
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 56
    .line 57
    invoke-virtual {p0, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 61
    .line 62
    invoke-direct {v5, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/uvD;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iput-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 66
    .line 67
    invoke-virtual {v5, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 71
    .line 72
    sget v5, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sP:I

    .line 73
    .line 74
    invoke-virtual {v3, v5}, Landroid/view/View;->setId(I)V

    .line 75
    .line 76
    .line 77
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 78
    .line 79
    const/high16 v5, 0x42400000    # 48.0f

    .line 80
    .line 81
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    invoke-direct {v3, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 93
    .line 94
    invoke-virtual {v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    .line 98
    .line 99
    invoke-direct {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    const/4 v5, 0x1

    .line 103
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    .line 105
    .line 106
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 107
    .line 108
    invoke-direct {v9, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0, v8}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 116
    .line 117
    invoke-virtual {v2, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 121
    .line 122
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 126
    .line 127
    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 128
    .line 129
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    .line 136
    .line 137
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 138
    .line 139
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 140
    .line 141
    .line 142
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 143
    .line 144
    const/high16 v4, 0x41880000    # 17.0f

    .line 145
    .line 146
    const/4 v9, 0x2

    .line 147
    invoke-virtual {v2, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 148
    .line 149
    .line 150
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 151
    .line 152
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->TKC:I

    .line 153
    .line 154
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 158
    .line 159
    const/high16 v4, -0x1000000

    .line 160
    .line 161
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 165
    .line 166
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .line 168
    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    .line 173
    .line 174
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 175
    .line 176
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Zq;-><init>(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 180
    .line 181
    sget v4, Lcom/bytedance/sdk/openadsdk/utils/Zq;->HiB:I

    .line 182
    .line 183
    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 184
    .line 185
    .line 186
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 187
    .line 188
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    .line 190
    const/high16 v10, 0x41600000    # 14.0f

    .line 191
    .line 192
    invoke-static {v0, v10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    invoke-direct {v4, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .line 201
    .line 202
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 203
    .line 204
    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;-><init>(Landroid/content/Context;)V

    .line 205
    .line 206
    .line 207
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 208
    .line 209
    const/16 v3, 0x11

    .line 210
    .line 211
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 217
    .line 218
    .line 219
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 220
    .line 221
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 222
    .line 223
    .line 224
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 225
    .line 226
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    .line 228
    .line 229
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-virtual {v2, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 235
    .line 236
    const v2, 0x1f000009

    .line 237
    .line 238
    .line 239
    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 240
    .line 241
    .line 242
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 243
    .line 244
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 249
    .line 250
    .line 251
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 252
    .line 253
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 254
    .line 255
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 256
    .line 257
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    .line 266
    const/high16 v2, 0x42100000    # 36.0f

    .line 267
    .line 268
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    invoke-direct {v1, v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 273
    .line 274
    .line 275
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 276
    .line 277
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    .line 279
    .line 280
    return-void
.end method

.method private static Sj(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 16
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 17
    const-string v1, "#1A73E8"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 18
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    return-object p0
.end method

.method private TKC()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->HiB:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 5
    .line 6
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    .line 7
    .line 8
    if-ne v1, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->HiB()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP()V

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    .line 24
    .line 25
    const v2, 0x1f000009

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 35
    .line 36
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v2, :cond_4

    .line 43
    .line 44
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$1;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_4

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 77
    .line 78
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 79
    .line 80
    const/16 v3, 0x8

    .line 81
    .line 82
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    const/4 v4, 0x3

    .line 93
    if-ne v3, v4, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->getButtonTextForNewStyleBar()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 108
    .line 109
    const/4 v3, 0x2

    .line 110
    if-eqz v2, :cond_6

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    if-eqz v2, :cond_6

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_6

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-eqz v4, :cond_5

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;)Lcom/bytedance/sdk/component/HiB/TEQ;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-interface {v4, v3}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    new-instance v5, Lcom/bytedance/sdk/openadsdk/uA/sP;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$Sj;

    .line 169
    .line 170
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 171
    .line 172
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 173
    .line 174
    iget-object v9, v9, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 175
    .line 176
    invoke-direct {v7, v8, v1, v2, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$Sj;-><init>(Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-direct {v5, v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v4, v5}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-eqz v2, :cond_6

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    if-eqz v2, :cond_6

    .line 200
    .line 201
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    const-wide/16 v4, 0x0

    .line 210
    .line 211
    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP(J)V

    .line 212
    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 224
    .line 225
    invoke-virtual {v2, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 226
    .line 227
    .line 228
    :cond_6
    :goto_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    .line 229
    .line 230
    if-eqz v2, :cond_7

    .line 231
    .line 232
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 240
    .line 241
    if-eqz v2, :cond_8

    .line 242
    .line 243
    const/4 v4, 0x0

    .line 244
    invoke-static {v4, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/Zq;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 245
    .line 246
    .line 247
    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 248
    .line 249
    iget v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    .line 250
    .line 251
    if-ne v2, v3, :cond_9

    .line 252
    .line 253
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-ne v1, v0, :cond_9

    .line 258
    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 266
    .line 267
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 268
    .line 269
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 270
    .line 271
    const/high16 v2, 0x425c0000    # 55.0f

    .line 272
    .line 273
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 278
    .line 279
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 280
    .line 281
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 282
    .line 283
    const/high16 v2, 0x41a00000    # 20.0f

    .line 284
    .line 285
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 290
    .line 291
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 292
    .line 293
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    .line 302
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 303
    .line 304
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 305
    .line 306
    const/high16 v2, 0x41400000    # 12.0f

    .line 307
    .line 308
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 313
    .line 314
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    .line 316
    .line 317
    :cond_9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP()V

    .line 318
    .line 319
    .line 320
    return-void
.end method

.method private getCnOrEnBtnText()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    const-string v0, "View"

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    const-string v0, "Install"

    .line 16
    .line 17
    return-object v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 15

    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v0

    const v1, 0x3f266666    # 0.65f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    invoke-static {v1, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    const v3, 0x3f43d70a    # 0.765f

    const v4, 0x3f666666    # 0.9f

    .line 4
    invoke-static {v3, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const v4, 0x3f6147ae    # 0.88f

    .line 5
    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const v5, 0x3f733333    # 0.95f

    .line 6
    invoke-static {v5, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 7
    invoke-static {v2, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    .line 8
    const-string v6, "scaleX"

    const/4 v7, 0x6

    new-array v8, v7, [Landroid/animation/Keyframe;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    const/4 v10, 0x1

    aput-object v1, v8, v10

    const/4 v11, 0x2

    aput-object v3, v8, v11

    const/4 v12, 0x3

    aput-object v4, v8, v12

    const/4 v13, 0x4

    aput-object v5, v8, v13

    const/4 v14, 0x5

    aput-object v2, v8, v14

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 9
    const-string v8, "scaleY"

    new-array v7, v7, [Landroid/animation/Keyframe;

    aput-object v0, v7, v9

    aput-object v1, v7, v10

    aput-object v3, v7, v11

    aput-object v4, v7, v12

    aput-object v5, v7, v13

    aput-object v2, v7, v14

    invoke-static {v8, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 10
    new-array v1, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v1, v9

    aput-object v0, v1, v10

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 1

    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 14
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC()V

    :cond_0
    return-void
.end method

.method protected getButtonTextForNewStyleBar()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Jcg(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x4

    .line 48
    if-eq v1, v2, :cond_1

    .line 49
    .line 50
    const-string v1, "View"

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const-string v1, "Install"

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    const/4 v3, 0x2

    .line 77
    if-le v2, v3, :cond_3

    .line 78
    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->getCnOrEnBtnText()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    goto :goto_1

    .line 86
    :cond_3
    if-eqz v1, :cond_4

    .line 87
    .line 88
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-nez v2, :cond_4

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const/4 v3, 0x7

    .line 99
    if-le v2, v3, :cond_4

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->getCnOrEnBtnText()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 108
    .line 109
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(Ljava/lang/String;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    .line 123
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    .line 126
    .line 127
    const/high16 v3, 0x40800000    # 4.0f

    .line 128
    .line 129
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 134
    .line 135
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    .line 136
    .line 137
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    :cond_5
    return-object v1
.end method

.method public sP()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->HiB()Lcom/bytedance/sdk/openadsdk/core/sP/HiB;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->EjP()Lcom/bytedance/sdk/openadsdk/core/sP/sP;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->vS:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 5
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Wjd()Lcom/bytedance/sdk/openadsdk/core/model/uA;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Wjd()Lcom/bytedance/sdk/openadsdk/core/model/uA;

    move-result-object v3

    iget-boolean v3, v3, Lcom/bytedance/sdk/openadsdk/core/model/uA;->HiB:Z

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    move-result v3

    const/4 v5, 0x1

    const-string v6, "TTBaseVideoActivity#mRlDownloadBar"

    if-ne v3, v5, :cond_4

    .line 12
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Wjd()Lcom/bytedance/sdk/openadsdk/core/model/uA;

    move-result-object v2

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/core/model/uA;->Sj:Z

    if-eqz v2, :cond_3

    .line 13
    invoke-static {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 14
    invoke-static {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 21
    :cond_3
    invoke-static {p0, v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 25
    :cond_4
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->FPG()I

    move-result v3

    if-ne v3, v4, :cond_c

    .line 26
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Wjd()Lcom/bytedance/sdk/openadsdk/core/model/uA;

    move-result-object v3

    iget-boolean v3, v3, Lcom/bytedance/sdk/openadsdk/core/model/uA;->HiB:Z

    const-string v4, "VAST_ICON"

    if-eqz v3, :cond_8

    .line 27
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$2;

    const-string v3, "VAST_ACTION_BUTTON"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v5

    invoke-direct {v1, p0, v3, v5, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;Lcom/bytedance/sdk/openadsdk/core/sP/TKC;)V

    .line 28
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$3;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v2

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;Lcom/bytedance/sdk/openadsdk/core/sP/TKC;)V

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 32
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    if-eqz v0, :cond_6

    .line 33
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_7
    return-void

    .line 38
    :cond_8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$4;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;Landroid/view/View$OnClickListener;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 39
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->sP:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    :cond_9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 41
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->EjP:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    :cond_a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    if-eqz v0, :cond_b

    const v2, 0x22000001

    .line 43
    invoke-virtual {v0, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void

    .line 45
    :cond_c
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Wjd()Lcom/bytedance/sdk/openadsdk/core/model/uA;

    move-result-object v2

    iget-boolean v2, v2, Lcom/bytedance/sdk/openadsdk/core/model/uA;->TKC:Z

    if-eqz v2, :cond_d

    .line 46
    invoke-static {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 47
    invoke-static {p0, v0, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;Landroid/view/View$OnTouchListener;Ljava/lang/String;)V

    return-void

    .line 48
    :cond_d
    invoke-static {p0, v1, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->HiB:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TKC;->TKC()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
