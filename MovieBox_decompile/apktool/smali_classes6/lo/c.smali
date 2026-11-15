.class public final Llo/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/constraintlayout/widget/Group;

.field public final c:Landroid/view/View;

.field public final d:Landroidx/appcompat/widget/AppCompatImageButton;

.field public final e:Landroid/widget/RelativeLayout;

.field public final f:Landroid/widget/ProgressBar;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/ImageView;

.field public final i:Landroid/widget/LinearLayout;

.field public final j:Landroid/widget/TextView;

.field public final k:Landroid/widget/TextView;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/widget/TextView;

.field public final n:Lcom/transsion/publish/view/FixedViewPager;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/publish/view/FixedViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llo/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Llo/c;->b:Landroidx/constraintlayout/widget/Group;

    .line 7
    .line 8
    iput-object p3, p0, Llo/c;->c:Landroid/view/View;

    .line 9
    .line 10
    iput-object p4, p0, Llo/c;->d:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 11
    .line 12
    iput-object p5, p0, Llo/c;->e:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    iput-object p6, p0, Llo/c;->f:Landroid/widget/ProgressBar;

    .line 15
    .line 16
    iput-object p7, p0, Llo/c;->g:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p8, p0, Llo/c;->h:Landroid/widget/ImageView;

    .line 19
    .line 20
    iput-object p9, p0, Llo/c;->i:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    iput-object p10, p0, Llo/c;->j:Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p11, p0, Llo/c;->k:Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p12, p0, Llo/c;->l:Landroid/widget/TextView;

    .line 27
    .line 28
    iput-object p13, p0, Llo/c;->m:Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p14, p0, Llo/c;->n:Lcom/transsion/publish/view/FixedViewPager;

    .line 31
    .line 32
    return-void
.end method

.method public static a(Landroid/view/View;)Llo/c;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/transsion/publish/R$id;->bottomGroup:I

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
    check-cast v5, Landroidx/constraintlayout/widget/Group;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    sget v1, Lcom/transsion/publish/R$id;->bottomLine:I

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
    sget v1, Lcom/transsion/publish/R$id;->btn_back:I

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
    check-cast v7, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 30
    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    sget v1, Lcom/transsion/publish/R$id;->clTitle:I

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
    check-cast v8, Landroid/widget/RelativeLayout;

    .line 41
    .line 42
    if-eqz v8, :cond_0

    .line 43
    .line 44
    sget v1, Lcom/transsion/publish/R$id;->clip_loading:I

    .line 45
    .line 46
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    move-object v9, v2

    .line 51
    check-cast v9, Landroid/widget/ProgressBar;

    .line 52
    .line 53
    if-eqz v9, :cond_0

    .line 54
    .line 55
    sget v1, Lcom/transsion/publish/R$id;->confirmTV:I

    .line 56
    .line 57
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v10, v2

    .line 62
    check-cast v10, Landroid/widget/TextView;

    .line 63
    .line 64
    if-eqz v10, :cond_0

    .line 65
    .line 66
    sget v1, Lcom/transsion/publish/R$id;->ivDelete:I

    .line 67
    .line 68
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    move-object v11, v2

    .line 73
    check-cast v11, Landroid/widget/ImageView;

    .line 74
    .line 75
    if-eqz v11, :cond_0

    .line 76
    .line 77
    sget v1, Lcom/transsion/publish/R$id;->llSelect:I

    .line 78
    .line 79
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    move-object v12, v2

    .line 84
    check-cast v12, Landroid/widget/LinearLayout;

    .line 85
    .line 86
    if-eqz v12, :cond_0

    .line 87
    .line 88
    sget v1, Lcom/transsion/publish/R$id;->selectNumTV:I

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
    check-cast v13, Landroid/widget/TextView;

    .line 96
    .line 97
    if-eqz v13, :cond_0

    .line 98
    .line 99
    sget v1, Lcom/transsion/publish/R$id;->tv_num:I

    .line 100
    .line 101
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    move-object v14, v2

    .line 106
    check-cast v14, Landroid/widget/TextView;

    .line 107
    .line 108
    if-eqz v14, :cond_0

    .line 109
    .line 110
    sget v1, Lcom/transsion/publish/R$id;->tvNumber:I

    .line 111
    .line 112
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    move-object v15, v2

    .line 117
    check-cast v15, Landroid/widget/TextView;

    .line 118
    .line 119
    if-eqz v15, :cond_0

    .line 120
    .line 121
    sget v1, Lcom/transsion/publish/R$id;->tvSelect:I

    .line 122
    .line 123
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    move-object/from16 v16, v2

    .line 128
    .line 129
    check-cast v16, Landroid/widget/TextView;

    .line 130
    .line 131
    if-eqz v16, :cond_0

    .line 132
    .line 133
    sget v1, Lcom/transsion/publish/R$id;->vp:I

    .line 134
    .line 135
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    move-object/from16 v17, v2

    .line 140
    .line 141
    check-cast v17, Lcom/transsion/publish/view/FixedViewPager;

    .line 142
    .line 143
    if-eqz v17, :cond_0

    .line 144
    .line 145
    new-instance v1, Llo/c;

    .line 146
    .line 147
    move-object v4, v0

    .line 148
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 149
    .line 150
    move-object v3, v1

    .line 151
    invoke-direct/range {v3 .. v17}, Llo/c;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Group;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageButton;Landroid/widget/RelativeLayout;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/publish/view/FixedViewPager;)V

    .line 152
    .line 153
    .line 154
    return-object v1

    .line 155
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/NullPointerException;

    .line 164
    .line 165
    const-string v2, "Missing required view with ID: "

    .line 166
    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Llo/c;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Llo/c;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llo/c;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Llo/c;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/publish/R$layout;->activity_gallery:I

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
    invoke-static {p0}, Llo/c;->a(Landroid/view/View;)Llo/c;

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
    iget-object v0, p0, Llo/c;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llo/c;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
