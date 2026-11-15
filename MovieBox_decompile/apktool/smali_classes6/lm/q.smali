.class public final Llm/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/appcompat/widget/AppCompatImageView;

.field public final d:Landroid/widget/LinearLayout;

.field public final e:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final f:Landroidx/appcompat/widget/AppCompatTextView;

.field public final g:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final h:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Landroidx/appcompat/widget/AppCompatTextView;

.field public final k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

.field public final l:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llm/q;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Llm/q;->b:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iput-object p3, p0, Llm/q;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 9
    .line 10
    iput-object p4, p0, Llm/q;->d:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    iput-object p5, p0, Llm/q;->e:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 13
    .line 14
    iput-object p6, p0, Llm/q;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    iput-object p7, p0, Llm/q;->g:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 17
    .line 18
    iput-object p8, p0, Llm/q;->h:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 19
    .line 20
    iput-object p9, p0, Llm/q;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    iput-object p10, p0, Llm/q;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    iput-object p11, p0, Llm/q;->k:Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 25
    .line 26
    iput-object p12, p0, Llm/q;->l:Landroid/view/View;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Landroid/view/View;)Llm/q;
    .locals 15

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$id;->extension_container:I

    .line 2
    .line 3
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    move-object v4, v1

    .line 8
    check-cast v4, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsion/moviedetail/R$id;->ivMovieContent:I

    .line 13
    .line 14
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    move-object v5, v1

    .line 19
    check-cast v5, Landroidx/appcompat/widget/AppCompatImageView;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sget v0, Lcom/transsion/moviedetail/R$id;->ll_score:I

    .line 24
    .line 25
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v6, v1

    .line 30
    check-cast v6, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_category:I

    .line 35
    .line 36
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v7, v1

    .line 41
    check-cast v7, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 42
    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    sget v0, Lcom/transsion/moviedetail/R$id;->tvDes:I

    .line 46
    .line 47
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v8, v1

    .line 52
    check-cast v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_duration:I

    .line 57
    .line 58
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v9, v1

    .line 63
    check-cast v9, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 64
    .line 65
    if-eqz v9, :cond_0

    .line 66
    .line 67
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_genre:I

    .line 68
    .line 69
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v10, v1

    .line 74
    check-cast v10, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 75
    .line 76
    if-eqz v10, :cond_0

    .line 77
    .line 78
    sget v0, Lcom/transsion/moviedetail/R$id;->tvMovieInfo:I

    .line 79
    .line 80
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v11, v1

    .line 85
    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 86
    .line 87
    if-eqz v11, :cond_0

    .line 88
    .line 89
    sget v0, Lcom/transsion/moviedetail/R$id;->tvMovieTitle:I

    .line 90
    .line 91
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    move-object v12, v1

    .line 96
    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 97
    .line 98
    if-eqz v12, :cond_0

    .line 99
    .line 100
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_students:I

    .line 101
    .line 102
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    move-object v13, v1

    .line 107
    check-cast v13, Lcom/transsion/moviedetail/view/CustomTextViewGroup;

    .line 108
    .line 109
    if-eqz v13, :cond_0

    .line 110
    .line 111
    sget v0, Lcom/transsion/moviedetail/R$id;->v_detail_hot_zone:I

    .line 112
    .line 113
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    if-eqz v14, :cond_0

    .line 118
    .line 119
    new-instance v0, Llm/q;

    .line 120
    .line 121
    move-object v3, p0

    .line 122
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 123
    .line 124
    move-object v2, v0

    .line 125
    invoke-direct/range {v2 .. v14}, Llm/q;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/LinearLayout;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/moviedetail/view/CustomTextViewGroup;Landroid/view/View;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    .line 138
    .line 139
    const-string v1, "Missing required view with ID: "

    .line 140
    .line 141
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Llm/q;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Llm/q;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llm/q;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llm/q;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$layout;->fragment_subject_edu_header:I

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
    invoke-static {p0}, Llm/q;->a(Landroid/view/View;)Llm/q;

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
    iget-object v0, p0, Llm/q;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llm/q;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
