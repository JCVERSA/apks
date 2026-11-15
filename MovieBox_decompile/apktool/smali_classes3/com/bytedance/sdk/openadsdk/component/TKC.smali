.class public Lcom/bytedance/sdk/openadsdk/component/TKC;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/TKC$sP;,
        Lcom/bytedance/sdk/openadsdk/component/TKC$Sj;
    }
.end annotation


# instance fields
.field protected Dq:Landroid/widget/FrameLayout;

.field protected final EjP:Landroid/widget/FrameLayout;

.field private Fmk:Landroid/widget/RelativeLayout;

.field protected final HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

.field protected Jcg:I

.field private LqL:Landroid/view/View;

.field private RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field protected final Sj:Landroid/app/Activity;

.field protected TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field protected final TKC:Z

.field private TzV:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field protected Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private Zq:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field protected final aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

.field private dNu:Landroid/widget/ImageView;

.field private dx:F

.field private final ib:Lcom/bytedance/sdk/openadsdk/component/uA/Dq;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

.field private ley:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

.field protected final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private sef:Landroid/widget/ImageView;

.field protected uA:Landroid/view/View;

.field private uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field protected final vS:I

.field private wE:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field private zR:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;IZLcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ib:Lcom/bytedance/sdk/openadsdk/component/uA/Dq;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->EjP:Landroid/widget/FrameLayout;

    .line 16
    .line 17
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Jcg:I

    .line 18
    .line 19
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TKC:Z

    .line 20
    .line 21
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->vS:I

    .line 28
    .line 29
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    .line 30
    .line 31
    return-void
.end method

.method private Dq()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ib:Lcom/bytedance/sdk/openadsdk/component/uA/Dq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;->Sj()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->uA()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TKC:Z

    .line 30
    .line 31
    const/16 v1, 0x8

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Dq:Landroid/widget/FrameLayout;

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(Landroid/widget/FrameLayout;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->EjP()V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 62
    .line 63
    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/TKC$Sj;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    .line 66
    .line 67
    invoke-direct {v3, v4, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$Sj;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    .line 68
    .line 69
    .line 70
    const/16 v4, 0x19

    .line 71
    .line 72
    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/vS$EjP;I)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(I)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    .line 88
    .line 89
    .line 90
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 108
    .line 109
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    :goto_2
    move v0, v3

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 129
    .line 130
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_4
    move v0, v2

    .line 145
    :goto_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->wE:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 146
    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->wE:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 160
    .line 161
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 162
    .line 163
    invoke-virtual {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 167
    .line 168
    if-eqz v4, :cond_7

    .line 169
    .line 170
    const/4 v5, 0x0

    .line 171
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 172
    .line 173
    invoke-static {v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/Zq;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 174
    .line 175
    .line 176
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    if-eqz v4, :cond_6

    .line 183
    .line 184
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 185
    .line 186
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->EjP()D

    .line 191
    .line 192
    .line 193
    move-result-wide v4

    .line 194
    const-wide/16 v6, 0x0

    .line 195
    .line 196
    cmpg-double v4, v4, v6

    .line 197
    .line 198
    if-gez v4, :cond_8

    .line 199
    .line 200
    :cond_6
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 201
    .line 202
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    :cond_7
    move v3, v0

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->LqL:Landroid/view/View;

    .line 207
    .line 208
    if-eqz v0, :cond_a

    .line 209
    .line 210
    if-eqz v3, :cond_9

    .line 211
    .line 212
    move v1, v2

    .line 213
    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    :cond_a
    return-void
.end method

.method private Sj(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 44
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->dNu:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x2

    .line 46
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "open_ad"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "bindBackGroundImage error"

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "AppOpenAdNativeManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/TKC;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private TEQ()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->sP(Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/bytedance/sdk/openadsdk/TzV/Sj;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TzV/Sj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/TKC$sP;

    .line 63
    .line 64
    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$sP;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    const/16 v7, 0x19

    .line 72
    .line 73
    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;IILcom/bytedance/sdk/openadsdk/utils/uvD$Sj;Ljava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method private sP(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Dq:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method private uA()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TzV:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TzV:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 172
    .line 173
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 174
    .line 175
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    .line 179
    .line 180
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    .line 181
    .line 182
    .line 183
    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public HiB()V
    .locals 0

    .line 1
    return-void
.end method

.method public Jcg()Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Zq:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/TKC$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->vS()V

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;)Lcom/bytedance/sdk/openadsdk/component/Sj/Sj;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/TKC$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;)V

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dNu()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Fmk:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Fmk:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 40
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public Sj(FF)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->zR:F

    .line 57
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->dx:F

    return-void
.end method

.method Sj(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public Sj(IZ)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 60
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Sj(Landroid/view/ViewGroup;)V
    .locals 9

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TzV()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/uA/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 7
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Fmk:Landroid/widget/RelativeLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getBackImage()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->dNu:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getVideoContainer()Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Dq:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getImageView()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getClickButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getAdLogo()Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Zq:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getAdIconView()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->wE:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getOverlayLayout()Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->LqL:Landroid/view/View;

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getIconOnlyView()Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TzV:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getTitle()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getContent()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 22
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    move-result-object p1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TKC;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 24
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result p1

    if-nez p1, :cond_4

    .line 25
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ib:Lcom/bytedance/sdk/openadsdk/component/uA/Dq;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->zR:F

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->dx:F

    iget-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TKC:Z

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/component/uA/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;FFZ)V

    .line 26
    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getTopDisLike()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uA:Landroid/view/View;

    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getTopSkip()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    .line 29
    instance-of p1, v0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    if-eqz p1, :cond_5

    .line 30
    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/TKC$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;->setRenderListener(Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;)V

    :cond_5
    return-void
.end method

.method Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->sP()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->sP()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v0

    .line 52
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->TKC()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/uvD;->Sj([BI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected Sj(Landroid/widget/FrameLayout;)Z
    .locals 3

    .line 42
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    return p1
.end method

.method public TKC()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Ym()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public sP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Dq()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    return-void
.end method

.method protected vS()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uA:Landroid/view/View;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/TKC$4;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    .line 12
    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/TKC$5;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
