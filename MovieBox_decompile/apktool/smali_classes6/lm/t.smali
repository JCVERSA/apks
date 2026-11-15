.class public final Llm/t;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/constraintlayout/widget/Barrier;

.field public final c:Landroid/view/View;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final f:Landroid/view/View;

.field public final g:Landroidx/appcompat/widget/AppCompatImageView;

.field public final h:Landroidx/appcompat/widget/AppCompatImageView;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Landroidx/appcompat/widget/AppCompatTextView;

.field public final k:Landroidx/appcompat/widget/AppCompatTextView;

.field public final l:Landroidx/appcompat/widget/AppCompatTextView;

.field public final m:Landroidx/appcompat/widget/AppCompatTextView;

.field public final n:Landroidx/appcompat/widget/AppCompatTextView;

.field public final o:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
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
    iput-object v1, v0, Llm/t;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    move-object v1, p2

    .line 9
    iput-object v1, v0, Llm/t;->b:Landroidx/constraintlayout/widget/Barrier;

    .line 10
    .line 11
    move-object v1, p3

    .line 12
    iput-object v1, v0, Llm/t;->c:Landroid/view/View;

    .line 13
    .line 14
    move-object v1, p4

    .line 15
    iput-object v1, v0, Llm/t;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Llm/t;->e:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Llm/t;->f:Landroid/view/View;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Llm/t;->g:Landroidx/appcompat/widget/AppCompatImageView;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Llm/t;->h:Landroidx/appcompat/widget/AppCompatImageView;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Llm/t;->i:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Llm/t;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Llm/t;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Llm/t;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Llm/t;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Llm/t;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Llm/t;->o:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    return-void
.end method

.method public static a(Landroid/view/View;)Llm/t;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/transsion/moviedetail/R$id;->barrierMovieCoverBottom:I

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
    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    sget v1, Lcom/transsion/moviedetail/R$id;->ivCoverZoom:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    sget v1, Lcom/transsion/moviedetail/R$id;->ivMovieContent:I

    .line 23
    .line 24
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    move-object v7, v2

    .line 29
    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    .line 30
    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    sget v1, Lcom/transsion/moviedetail/R$id;->ivMovieCover:I

    .line 34
    .line 35
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    move-object v8, v2

    .line 40
    check-cast v8, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 41
    .line 42
    if-eqz v8, :cond_0

    .line 43
    .line 44
    sget v1, Lcom/transsion/moviedetail/R$id;->ivMovieCoverMask:I

    .line 45
    .line 46
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    if-eqz v9, :cond_0

    .line 51
    .line 52
    sget v1, Lcom/transsion/moviedetail/R$id;->iv_score:I

    .line 53
    .line 54
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    move-object v10, v2

    .line 59
    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    .line 60
    .line 61
    if-eqz v10, :cond_0

    .line 62
    .line 63
    sget v1, Lcom/transsion/moviedetail/R$id;->iv_subtitle_tag:I

    .line 64
    .line 65
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    move-object v11, v2

    .line 70
    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    .line 71
    .line 72
    if-eqz v11, :cond_0

    .line 73
    .line 74
    sget v1, Lcom/transsion/moviedetail/R$id;->ll_score:I

    .line 75
    .line 76
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    move-object v12, v2

    .line 81
    check-cast v12, Landroid/widget/LinearLayout;

    .line 82
    .line 83
    if-eqz v12, :cond_0

    .line 84
    .line 85
    sget v1, Lcom/transsion/moviedetail/R$id;->tvMovieContent:I

    .line 86
    .line 87
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    move-object v13, v2

    .line 92
    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 93
    .line 94
    if-eqz v13, :cond_0

    .line 95
    .line 96
    sget v1, Lcom/transsion/moviedetail/R$id;->tvMovieTitle:I

    .line 97
    .line 98
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    move-object v14, v2

    .line 103
    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    if-eqz v14, :cond_0

    .line 106
    .line 107
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_score:I

    .line 108
    .line 109
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    move-object v15, v2

    .line 114
    check-cast v15, Landroidx/appcompat/widget/AppCompatTextView;

    .line 115
    .line 116
    if-eqz v15, :cond_0

    .line 117
    .line 118
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_subtitle_more:I

    .line 119
    .line 120
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    move-object/from16 v16, v2

    .line 125
    .line 126
    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    if-eqz v16, :cond_0

    .line 129
    .line 130
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_subtitle_tag:I

    .line 131
    .line 132
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    move-object/from16 v17, v2

    .line 137
    .line 138
    check-cast v17, Landroidx/appcompat/widget/AppCompatTextView;

    .line 139
    .line 140
    if-eqz v17, :cond_0

    .line 141
    .line 142
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_time:I

    .line 143
    .line 144
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    move-object/from16 v18, v2

    .line 149
    .line 150
    check-cast v18, Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    if-eqz v18, :cond_0

    .line 153
    .line 154
    new-instance v1, Llm/t;

    .line 155
    .line 156
    move-object v4, v0

    .line 157
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 158
    .line 159
    move-object v3, v1

    .line 160
    invoke-direct/range {v3 .. v18}, Llm/t;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/google/android/material/imageview/ShapeableImageView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 161
    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    new-instance v1, Ljava/lang/NullPointerException;

    .line 173
    .line 174
    const-string v2, "Missing required view with ID: "

    .line 175
    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Llm/t;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Llm/t;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llm/t;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llm/t;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$layout;->fragment_subject_movie_header:I

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
    invoke-static {p0}, Llm/t;->a(Landroid/view/View;)Llm/t;

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
    iget-object v0, p0, Llm/t;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llm/t;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
