.class public final Llm/s;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroidx/appcompat/widget/AppCompatImageView;

.field public final e:Landroid/widget/LinearLayout;

.field public final f:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final i:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final j:Landroidx/appcompat/widget/AppCompatImageView;

.field public final k:Landroidx/appcompat/widget/AppCompatTextView;

.field public final l:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final m:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final n:Lcom/transsion/moviedetail/view/CustomTextViewGroup;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llm/s;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Llm/s;->b:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iput-object p3, p0, Llm/s;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    iput-object p4, p0, Llm/s;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    .line 12
    iput-object p5, p0, Llm/s;->e:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    iput-object p6, p0, Llm/s;->f:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 15
    .line 16
    iput-object p7, p0, Llm/s;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    iput-object p8, p0, Llm/s;->h:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 19
    .line 20
    iput-object p9, p0, Llm/s;->i:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 21
    .line 22
    iput-object p10, p0, Llm/s;->j:Landroidx/appcompat/widget/AppCompatImageView;

    .line 23
    .line 24
    iput-object p11, p0, Llm/s;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    iput-object p12, p0, Llm/s;->l:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 27
    .line 28
    iput-object p13, p0, Llm/s;->m:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 29
    .line 30
    iput-object p14, p0, Llm/s;->n:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 31
    .line 32
    return-void
.end method

.method public static a(Landroid/view/View;)Llm/s;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/transsion/moviedetail/R$id;->extension_container:I

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
    sget v1, Lcom/transsion/moviedetail/R$id;->ivMovieContent:I

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
    sget v1, Lcom/transsion/moviedetail/R$id;->iv_score:I

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
    sget v1, Lcom/transsion/moviedetail/R$id;->ll_score:I

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
    check-cast v8, Landroid/widget/LinearLayout;

    .line 44
    .line 45
    if-eqz v8, :cond_0

    .line 46
    .line 47
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_country:I

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
    check-cast v9, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 55
    .line 56
    if-eqz v9, :cond_0

    .line 57
    .line 58
    sget v1, Lcom/transsion/moviedetail/R$id;->tvMovieTitle:I

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
    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .line 67
    if-eqz v10, :cond_0

    .line 68
    .line 69
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_movie_title_container:I

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
    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 77
    .line 78
    if-eqz v11, :cond_0

    .line 79
    .line 80
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_restrict:I

    .line 81
    .line 82
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    move-object v12, v2

    .line 87
    check-cast v12, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_right:I

    .line 92
    .line 93
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    move-object v13, v2

    .line 98
    check-cast v13, Landroidx/appcompat/widget/AppCompatImageView;

    .line 99
    .line 100
    if-eqz v13, :cond_0

    .line 101
    .line 102
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_score:I

    .line 103
    .line 104
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    move-object v14, v2

    .line 109
    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    if-eqz v14, :cond_0

    .line 112
    .line 113
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_seasons:I

    .line 114
    .line 115
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    move-object v15, v2

    .line 120
    check-cast v15, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 121
    .line 122
    if-eqz v15, :cond_0

    .line 123
    .line 124
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_time:I

    .line 125
    .line 126
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    move-object/from16 v16, v2

    .line 131
    .line 132
    check-cast v16, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 133
    .line 134
    if-eqz v16, :cond_0

    .line 135
    .line 136
    sget v1, Lcom/transsion/moviedetail/R$id;->tv_type:I

    .line 137
    .line 138
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    move-object/from16 v17, v2

    .line 143
    .line 144
    check-cast v17, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 145
    .line 146
    if-eqz v17, :cond_0

    .line 147
    .line 148
    new-instance v1, Llm/s;

    .line 149
    .line 150
    move-object v4, v0

    .line 151
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 152
    .line 153
    move-object v3, v1

    .line 154
    invoke-direct/range {v3 .. v17}, Llm/s;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;)V

    .line 155
    .line 156
    .line 157
    return-object v1

    .line 158
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/NullPointerException;

    .line 167
    .line 168
    const-string v2, "Missing required view with ID: "

    .line 169
    .line 170
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Llm/s;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Llm/s;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llm/s;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llm/s;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$layout;->fragment_subject_header:I

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
    invoke-static {p0}, Llm/s;->a(Landroid/view/View;)Llm/s;

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
    iget-object v0, p0, Llm/s;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llm/s;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
