.class public final Lxu/k0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/widget/RelativeLayout;

.field public final b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Lcom/noober/background/view/BLConstraintLayout;

.field public final h:Landroid/widget/ProgressBar;

.field public final i:Landroid/widget/RelativeLayout;

.field public final j:Landroid/widget/RelativeLayout;

.field public final k:Landroid/widget/RelativeLayout;

.field public final l:Lcom/tn/lib/widget/TnTextView;

.field public final m:Landroid/widget/TextView;

.field public final n:Lcom/google/android/material/imageview/ShapeableImageView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/transsion/usercenter/edit/widget/ProfileEditBar;Landroid/widget/FrameLayout;Lcom/transsion/usercenter/edit/widget/ProfileEditBar;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Lcom/noober/background/view/BLConstraintLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/tn/lib/widget/TnTextView;Landroid/widget/TextView;Lcom/google/android/material/imageview/ShapeableImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxu/k0;->a:Landroid/widget/RelativeLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lxu/k0;->b:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 7
    .line 8
    iput-object p3, p0, Lxu/k0;->c:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    iput-object p4, p0, Lxu/k0;->d:Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 11
    .line 12
    iput-object p5, p0, Lxu/k0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    iput-object p6, p0, Lxu/k0;->f:Landroid/widget/ImageView;

    .line 15
    .line 16
    iput-object p7, p0, Lxu/k0;->g:Lcom/noober/background/view/BLConstraintLayout;

    .line 17
    .line 18
    iput-object p8, p0, Lxu/k0;->h:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    iput-object p9, p0, Lxu/k0;->i:Landroid/widget/RelativeLayout;

    .line 21
    .line 22
    iput-object p10, p0, Lxu/k0;->j:Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    iput-object p11, p0, Lxu/k0;->k:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    iput-object p12, p0, Lxu/k0;->l:Lcom/tn/lib/widget/TnTextView;

    .line 27
    .line 28
    iput-object p13, p0, Lxu/k0;->m:Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p14, p0, Lxu/k0;->n:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 31
    .line 32
    return-void
.end method

.method public static a(Landroid/view/View;)Lxu/k0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/transsion/usercenter/R$id;->birth_profilebar:I

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
    check-cast v5, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    sget v1, Lcom/transsion/usercenter/R$id;->fl_edit:I

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
    check-cast v6, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sget v1, Lcom/transsion/usercenter/R$id;->gender_profilebar:I

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
    check-cast v7, Lcom/transsion/usercenter/edit/widget/ProfileEditBar;

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    sget v1, Lcom/transsion/usercenter/R$id;->ivDeleteArrow:I

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
    sget v1, Lcom/transsion/usercenter/R$id;->iv_edit:I

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
    check-cast v9, Landroid/widget/ImageView;

    .line 55
    .line 56
    if-eqz v9, :cond_0

    .line 57
    .line 58
    sget v1, Lcom/transsion/usercenter/R$id;->layoutDeleteProfile:I

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
    check-cast v10, Lcom/noober/background/view/BLConstraintLayout;

    .line 66
    .line 67
    if-eqz v10, :cond_0

    .line 68
    .line 69
    sget v1, Lcom/transsion/usercenter/R$id;->load_view:I

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
    check-cast v11, Landroid/widget/ProgressBar;

    .line 77
    .line 78
    if-eqz v11, :cond_0

    .line 79
    .line 80
    sget v1, Lcom/transsion/usercenter/R$id;->rl_head:I

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
    check-cast v12, Landroid/widget/RelativeLayout;

    .line 88
    .line 89
    if-eqz v12, :cond_0

    .line 90
    .line 91
    sget v1, Lcom/transsion/usercenter/R$id;->rl_nickname:I

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
    check-cast v13, Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    if-eqz v13, :cond_0

    .line 101
    .line 102
    move-object v14, v0

    .line 103
    check-cast v14, Landroid/widget/RelativeLayout;

    .line 104
    .line 105
    sget v1, Lcom/transsion/usercenter/R$id;->tvDeleteKidsProfile:I

    .line 106
    .line 107
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    move-object v15, v2

    .line 112
    check-cast v15, Lcom/tn/lib/widget/TnTextView;

    .line 113
    .line 114
    if-eqz v15, :cond_0

    .line 115
    .line 116
    sget v1, Lcom/transsion/usercenter/R$id;->tv_nickname:I

    .line 117
    .line 118
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    move-object/from16 v16, v2

    .line 123
    .line 124
    check-cast v16, Landroid/widget/TextView;

    .line 125
    .line 126
    if-eqz v16, :cond_0

    .line 127
    .line 128
    sget v1, Lcom/transsion/usercenter/R$id;->user_head:I

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
    check-cast v17, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 137
    .line 138
    if-eqz v17, :cond_0

    .line 139
    .line 140
    new-instance v0, Lxu/k0;

    .line 141
    .line 142
    move-object v3, v0

    .line 143
    move-object v4, v14

    .line 144
    invoke-direct/range {v3 .. v17}, Lxu/k0;-><init>(Landroid/widget/RelativeLayout;Lcom/transsion/usercenter/edit/widget/ProfileEditBar;Landroid/widget/FrameLayout;Lcom/transsion/usercenter/edit/widget/ProfileEditBar;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/ImageView;Lcom/noober/background/view/BLConstraintLayout;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/tn/lib/widget/TnTextView;Landroid/widget/TextView;Lcom/google/android/material/imageview/ShapeableImageView;)V

    .line 145
    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/NullPointerException;

    .line 157
    .line 158
    const-string v2, "Missing required view with ID: "

    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;)Lxu/k0;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lxu/k0;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lxu/k0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lxu/k0;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/usercenter/R$layout;->fragment_profile_edit_centerlayout:I

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
    invoke-static {p0}, Lxu/k0;->a(Landroid/view/View;)Lxu/k0;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Landroid/widget/RelativeLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lxu/k0;->a:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lxu/k0;->b()Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
