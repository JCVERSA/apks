.class public final Lmn/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Landroid/widget/ImageView;

.field public final h:Lmn/d;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Landroid/view/View;

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;

.field public final m:Lmn/f;

.field public final n:Lcom/tn/lib/view/SecondariesSeekBar;

.field public final o:Landroid/widget/TextView;

.field public final p:Landroid/view/ViewStub;

.field public final q:Landroid/view/ViewStub;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Lmn/d;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lmn/f;Lcom/tn/lib/view/SecondariesSeekBar;Landroid/widget/TextView;Landroid/view/ViewStub;Landroid/view/ViewStub;)V
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-object v1, p1

    .line 6
    iput-object v1, v0, Lmn/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lmn/l;->b:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lmn/l;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lmn/l;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lmn/l;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lmn/l;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lmn/l;->g:Landroid/widget/ImageView;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lmn/l;->h:Lmn/d;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lmn/l;->i:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lmn/l;->j:Landroid/view/View;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lmn/l;->k:Landroid/view/View;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lmn/l;->l:Landroid/view/View;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lmn/l;->m:Lmn/f;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lmn/l;->n:Lcom/tn/lib/view/SecondariesSeekBar;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lmn/l;->o:Landroid/widget/TextView;

    .line 51
    .line 52
    move-object/from16 v1, p16

    .line 53
    .line 54
    iput-object v1, v0, Lmn/l;->p:Landroid/view/ViewStub;

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lmn/l;->q:Landroid/view/ViewStub;

    .line 59
    .line 60
    return-void
.end method

.method public static a(Landroid/view/View;)Lmn/l;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/transsion/player/longvideo/R$id;->flUGCAutoPlayGroup:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    move-object v5, v2

    .line 10
    check-cast v5, Landroid/widget/FrameLayout;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    sget v1, Lcom/transsion/player/longvideo/R$id;->iv_back:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    move-object v6, v2

    .line 21
    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sget v1, Lcom/transsion/player/longvideo/R$id;->iv_float:I

    .line 26
    .line 27
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v7, v2

    .line 32
    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    sget v1, Lcom/transsion/player/longvideo/R$id;->iv_middle_pause:I

    .line 37
    .line 38
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    move-object v8, v2

    .line 43
    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    .line 44
    .line 45
    if-eqz v8, :cond_0

    .line 46
    .line 47
    sget v1, Lcom/transsion/player/longvideo/R$id;->iv_middle_screen_change:I

    .line 48
    .line 49
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    move-object v9, v2

    .line 54
    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    .line 55
    .line 56
    if-eqz v9, :cond_0

    .line 57
    .line 58
    sget v1, Lcom/transsion/player/longvideo/R$id;->ivUGCAutoPlayBtn:I

    .line 59
    .line 60
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    move-object v10, v2

    .line 65
    check-cast v10, Landroid/widget/ImageView;

    .line 66
    .line 67
    if-eqz v10, :cond_0

    .line 68
    .line 69
    sget v1, Lcom/transsion/player/longvideo/R$id;->layout_loading:I

    .line 70
    .line 71
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    invoke-static {v2}, Lmn/d;->a(Landroid/view/View;)Lmn/d;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    sget v1, Lcom/transsion/player/longvideo/R$id;->ll_middle_bottom_controller:I

    .line 82
    .line 83
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    move-object v12, v2

    .line 88
    check-cast v12, Landroid/widget/LinearLayout;

    .line 89
    .line 90
    if-eqz v12, :cond_0

    .line 91
    .line 92
    sget v1, Lcom/transsion/player/longvideo/R$id;->middle_gradient_bottom:I

    .line 93
    .line 94
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    if-eqz v13, :cond_0

    .line 99
    .line 100
    sget v1, Lcom/transsion/player/longvideo/R$id;->middle_gradient_top:I

    .line 101
    .line 102
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v14

    .line 106
    if-eqz v14, :cond_0

    .line 107
    .line 108
    sget v1, Lcom/transsion/player/longvideo/R$id;->middle_guideline:I

    .line 109
    .line 110
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    if-eqz v15, :cond_0

    .line 115
    .line 116
    sget v1, Lcom/transsion/player/longvideo/R$id;->operatorLayout:I

    .line 117
    .line 118
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-eqz v2, :cond_0

    .line 123
    .line 124
    invoke-static {v2}, Lmn/f;->a(Landroid/view/View;)Lmn/f;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    sget v1, Lcom/transsion/player/longvideo/R$id;->seek_bar_middle:I

    .line 129
    .line 130
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    move-object/from16 v17, v2

    .line 135
    .line 136
    check-cast v17, Lcom/tn/lib/view/SecondariesSeekBar;

    .line 137
    .line 138
    if-eqz v17, :cond_0

    .line 139
    .line 140
    sget v1, Lcom/transsion/player/longvideo/R$id;->tv_middle_time:I

    .line 141
    .line 142
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    move-object/from16 v18, v2

    .line 147
    .line 148
    check-cast v18, Landroid/widget/TextView;

    .line 149
    .line 150
    if-eqz v18, :cond_0

    .line 151
    .line 152
    sget v1, Lcom/transsion/player/longvideo/R$id;->vs_forward_guide_middle:I

    .line 153
    .line 154
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    move-object/from16 v19, v2

    .line 159
    .line 160
    check-cast v19, Landroid/view/ViewStub;

    .line 161
    .line 162
    if-eqz v19, :cond_0

    .line 163
    .line 164
    sget v1, Lcom/transsion/player/longvideo/R$id;->vs_forward_middle:I

    .line 165
    .line 166
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    move-object/from16 v20, v2

    .line 171
    .line 172
    check-cast v20, Landroid/view/ViewStub;

    .line 173
    .line 174
    if-eqz v20, :cond_0

    .line 175
    .line 176
    new-instance v1, Lmn/l;

    .line 177
    .line 178
    move-object v3, v1

    .line 179
    move-object v4, v0

    .line 180
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 181
    .line 182
    invoke-direct/range {v3 .. v20}, Lmn/l;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Lmn/d;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lmn/f;Lcom/tn/lib/view/SecondariesSeekBar;Landroid/widget/TextView;Landroid/view/ViewStub;Landroid/view/ViewStub;)V

    .line 183
    .line 184
    .line 185
    return-object v1

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    new-instance v1, Ljava/lang/NullPointerException;

    .line 195
    .line 196
    const-string v2, "Missing required view with ID: "

    .line 197
    .line 198
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw v1
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lmn/l;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmn/l;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
