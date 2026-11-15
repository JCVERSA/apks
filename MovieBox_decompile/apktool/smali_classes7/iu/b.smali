.class public final Liu/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final c:Landroid/view/View;

.field public final d:Landroid/widget/FrameLayout;

.field public final e:Landroid/widget/ImageView;

.field public final f:Lcom/noober/background/view/BLTextView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Landroid/view/View;

.field public final j:Landroid/view/View;

.field public final k:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/noober/background/view/BLTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Liu/b;->a:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    iput-object p2, p0, Liu/b;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    iput-object p3, p0, Liu/b;->c:Landroid/view/View;

    .line 9
    .line 10
    iput-object p4, p0, Liu/b;->d:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    iput-object p5, p0, Liu/b;->e:Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object p6, p0, Liu/b;->f:Lcom/noober/background/view/BLTextView;

    .line 15
    .line 16
    iput-object p7, p0, Liu/b;->g:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p8, p0, Liu/b;->h:Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object p9, p0, Liu/b;->i:Landroid/view/View;

    .line 21
    .line 22
    iput-object p10, p0, Liu/b;->j:Landroid/view/View;

    .line 23
    .line 24
    iput-object p11, p0, Liu/b;->k:Landroid/view/View;

    .line 25
    .line 26
    return-void
.end method

.method public static a(Landroid/view/View;)Liu/b;
    .locals 14

    .line 1
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->clImmCommentContent:I

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
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->divider:I

    .line 13
    .line 14
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->fl_comment_container:I

    .line 21
    .line 22
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    move-object v6, v1

    .line 27
    check-cast v6, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->iv_close:I

    .line 32
    .line 33
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move-object v7, v1

    .line 38
    check-cast v7, Landroid/widget/ImageView;

    .line 39
    .line 40
    if-eqz v7, :cond_0

    .line 41
    .line 42
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tv_comment:I

    .line 43
    .line 44
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    move-object v8, v1

    .line 49
    check-cast v8, Lcom/noober/background/view/BLTextView;

    .line 50
    .line 51
    if-eqz v8, :cond_0

    .line 52
    .line 53
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvTitle:I

    .line 54
    .line 55
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    move-object v9, v1

    .line 60
    check-cast v9, Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v9, :cond_0

    .line 63
    .line 64
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->tvTitleCount:I

    .line 65
    .line 66
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    move-object v10, v1

    .line 71
    check-cast v10, Landroid/widget/TextView;

    .line 72
    .line 73
    if-eqz v10, :cond_0

    .line 74
    .line 75
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->v_bottom:I

    .line 76
    .line 77
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    if-eqz v11, :cond_0

    .line 82
    .line 83
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->vTopLine:I

    .line 84
    .line 85
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    sget v0, Lcom/transsion/ugcvideodetail/R$id;->vTopSpace:I

    .line 92
    .line 93
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v13

    .line 97
    if-eqz v13, :cond_0

    .line 98
    .line 99
    new-instance v0, Liu/b;

    .line 100
    .line 101
    move-object v3, p0

    .line 102
    check-cast v3, Landroid/widget/LinearLayout;

    .line 103
    .line 104
    move-object v2, v0

    .line 105
    invoke-direct/range {v2 .. v13}, Liu/b;-><init>(Landroid/widget/LinearLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/noober/background/view/BLTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 106
    .line 107
    .line 108
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    new-instance v0, Ljava/lang/NullPointerException;

    .line 118
    .line 119
    const-string v1, "Missing required view with ID: "

    .line 120
    .line 121
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Liu/b;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/ugcvideodetail/R$layout;->dialog_ugc_imm_video_comment:I

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
    invoke-static {p0}, Liu/b;->a(Landroid/view/View;)Liu/b;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Liu/b;->a:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Liu/b;->b()Landroid/widget/LinearLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
