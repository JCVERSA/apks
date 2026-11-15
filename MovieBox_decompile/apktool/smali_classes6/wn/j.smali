.class public final Lwn/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;

.field public final c:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field public final d:Lcom/transsion/postdetail/ui/view/AdCountDownView;

.field public final e:Lcom/transsion/postdetail/ad/AdInterceptTimerView;

.field public final f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

.field public final g:Landroid/widget/FrameLayout;

.field public final h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final i:Landroid/view/View;

.field public final j:Landroid/widget/ImageView;

.field public final k:Lwn/u;

.field public final l:Lwn/w;

.field public final m:Lwn/y;

.field public final n:Landroidx/appcompat/widget/AppCompatImageView;

.field public final o:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/postdetail/ui/view/AdCountDownView;Lcom/transsion/postdetail/ad/AdInterceptTimerView;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Lwn/u;Lwn/w;Lwn/y;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;)V
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
    iput-object v1, v0, Lwn/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Lwn/j;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Lwn/j;->c:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Lwn/j;->d:Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lwn/j;->e:Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lwn/j;->f:Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lwn/j;->g:Landroid/widget/FrameLayout;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lwn/j;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lwn/j;->i:Landroid/view/View;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lwn/j;->j:Landroid/widget/ImageView;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lwn/j;->k:Lwn/u;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lwn/j;->l:Lwn/w;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lwn/j;->m:Lwn/y;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lwn/j;->n:Landroidx/appcompat/widget/AppCompatImageView;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lwn/j;->o:Landroid/widget/ImageView;

    .line 51
    .line 52
    return-void
.end method

.method public static a(Landroid/view/View;)Lwn/j;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/transsion/postdetail/R$id;->adCloseView:I

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
    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    sget v1, Lcom/transsion/postdetail/R$id;->adContainer:I

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
    check-cast v6, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sget v1, Lcom/transsion/postdetail/R$id;->adCountDownView:I

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
    check-cast v7, Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    sget v1, Lcom/transsion/postdetail/R$id;->enter_ad_tip:I

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
    check-cast v8, Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 44
    .line 45
    if-eqz v8, :cond_0

    .line 46
    .line 47
    sget v1, Lcom/transsion/postdetail/R$id;->flLandAd:I

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
    check-cast v9, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 55
    .line 56
    if-eqz v9, :cond_0

    .line 57
    .line 58
    sget v1, Lcom/transsion/postdetail/R$id;->flLandAdGroup:I

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
    check-cast v10, Landroid/widget/FrameLayout;

    .line 66
    .line 67
    if-eqz v10, :cond_0

    .line 68
    .line 69
    sget v1, Lcom/transsion/postdetail/R$id;->flPauseAdGroup:I

    .line 70
    .line 71
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    move-object v11, v2

    .line 76
    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    .line 78
    if-eqz v11, :cond_0

    .line 79
    .line 80
    sget v1, Lcom/transsion/postdetail/R$id;->guideline:I

    .line 81
    .line 82
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v12

    .line 86
    if-eqz v12, :cond_0

    .line 87
    .line 88
    sget v1, Lcom/transsion/postdetail/R$id;->ivAdPauseClose:I

    .line 89
    .line 90
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    move-object v13, v2

    .line 95
    check-cast v13, Landroid/widget/ImageView;

    .line 96
    .line 97
    if-eqz v13, :cond_0

    .line 98
    .line 99
    sget v1, Lcom/transsion/postdetail/R$id;->local_video_land:I

    .line 100
    .line 101
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    if-eqz v2, :cond_0

    .line 106
    .line 107
    invoke-static {v2}, Lwn/u;->a(Landroid/view/View;)Lwn/u;

    .line 108
    .line 109
    .line 110
    move-result-object v14

    .line 111
    sget v1, Lcom/transsion/postdetail/R$id;->local_video_middle:I

    .line 112
    .line 113
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_0

    .line 118
    .line 119
    invoke-static {v2}, Lwn/w;->a(Landroid/view/View;)Lwn/w;

    .line 120
    .line 121
    .line 122
    move-result-object v15

    .line 123
    sget v1, Lcom/transsion/postdetail/R$id;->local_video_portrait:I

    .line 124
    .line 125
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_0

    .line 130
    .line 131
    invoke-static {v2}, Lwn/y;->a(Landroid/view/View;)Lwn/y;

    .line 132
    .line 133
    .line 134
    move-result-object v16

    .line 135
    sget v1, Lcom/transsion/postdetail/R$id;->rotate:I

    .line 136
    .line 137
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    move-object/from16 v17, v2

    .line 142
    .line 143
    check-cast v17, Landroidx/appcompat/widget/AppCompatImageView;

    .line 144
    .line 145
    if-eqz v17, :cond_0

    .line 146
    .line 147
    sget v1, Lcom/transsion/postdetail/R$id;->v_top_space:I

    .line 148
    .line 149
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    move-object/from16 v18, v2

    .line 154
    .line 155
    check-cast v18, Landroid/widget/ImageView;

    .line 156
    .line 157
    if-eqz v18, :cond_0

    .line 158
    .line 159
    new-instance v1, Lwn/j;

    .line 160
    .line 161
    move-object v4, v0

    .line 162
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 163
    .line 164
    move-object v3, v1

    .line 165
    invoke-direct/range {v3 .. v18}, Lwn/j;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Lcom/transsion/postdetail/ui/view/AdCountDownView;Lcom/transsion/postdetail/ad/AdInterceptTimerView;Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/ImageView;Lwn/u;Lwn/w;Lwn/y;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;)V

    .line 166
    .line 167
    .line 168
    return-object v1

    .line 169
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/NullPointerException;

    .line 178
    .line 179
    const-string v2, "Missing required view with ID: "

    .line 180
    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Lwn/j;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lwn/j;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lwn/j;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lwn/j;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/postdetail/R$layout;->fragment_local_video:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lwn/j;->a(Landroid/view/View;)Lwn/j;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lwn/j;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lwn/j;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
