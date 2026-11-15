.class public final Lfp/y;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroidx/constraintlayout/widget/Group;

.field public final d:Lcom/google/android/material/imageview/ShapeableImageView;

.field public final e:Lfp/b0;

.field public final f:Lfp/c0;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Lcom/noober/background/view/BLTextView;

.field public final i:Landroidx/appcompat/widget/AppCompatTextView;

.field public final j:Landroidx/appcompat/widget/AppCompatTextView;

.field public final k:Landroidx/appcompat/widget/AppCompatTextView;

.field public final l:Lcom/tn/lib/view/RoomJoinAnimationView;

.field public final m:Landroid/view/View;

.field public final n:Lcom/noober/background/view/BLView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lfp/b0;Lfp/c0;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/tn/lib/view/RoomJoinAnimationView;Landroid/view/View;Lcom/noober/background/view/BLView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfp/y;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lfp/y;->b:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    iput-object p3, p0, Lfp/y;->c:Landroidx/constraintlayout/widget/Group;

    .line 9
    .line 10
    iput-object p4, p0, Lfp/y;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    .line 11
    .line 12
    iput-object p5, p0, Lfp/y;->e:Lfp/b0;

    .line 13
    .line 14
    iput-object p6, p0, Lfp/y;->f:Lfp/c0;

    .line 15
    .line 16
    iput-object p7, p0, Lfp/y;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    iput-object p8, p0, Lfp/y;->h:Lcom/noober/background/view/BLTextView;

    .line 19
    .line 20
    iput-object p9, p0, Lfp/y;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    iput-object p10, p0, Lfp/y;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    iput-object p11, p0, Lfp/y;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    iput-object p12, p0, Lfp/y;->l:Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 27
    .line 28
    iput-object p13, p0, Lfp/y;->m:Landroid/view/View;

    .line 29
    .line 30
    iput-object p14, p0, Lfp/y;->n:Lcom/noober/background/view/BLView;

    .line 31
    .line 32
    return-void
.end method

.method public static a(Landroid/view/View;)Lfp/y;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget v1, Lcom/transsion/room/R$id;->fl_new_post_cover:I

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
    sget v1, Lcom/transsion/room/R$id;->group_new_post:I

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
    check-cast v6, Landroidx/constraintlayout/widget/Group;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    sget v1, Lcom/transsion/room/R$id;->iv_cover:I

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
    check-cast v7, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 33
    .line 34
    if-eqz v7, :cond_0

    .line 35
    .line 36
    sget v1, Lcom/transsion/room/R$id;->layout_new_post_image:I

    .line 37
    .line 38
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    invoke-static {v2}, Lfp/b0;->a(Landroid/view/View;)Lfp/b0;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    sget v1, Lcom/transsion/room/R$id;->layout_new_post_video:I

    .line 49
    .line 50
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_0

    .line 55
    .line 56
    invoke-static {v2}, Lfp/c0;->a(Landroid/view/View;)Lfp/c0;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    sget v1, Lcom/transsion/room/R$id;->tv_member:I

    .line 61
    .line 62
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    move-object v10, v2

    .line 67
    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    if-eqz v10, :cond_0

    .line 70
    .line 71
    sget v1, Lcom/transsion/room/R$id;->tv_new_count:I

    .line 72
    .line 73
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    move-object v11, v2

    .line 78
    check-cast v11, Lcom/noober/background/view/BLTextView;

    .line 79
    .line 80
    if-eqz v11, :cond_0

    .line 81
    .line 82
    sget v1, Lcom/transsion/room/R$id;->tv_new_post_content:I

    .line 83
    .line 84
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v12, v2

    .line 89
    check-cast v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 90
    .line 91
    if-eqz v12, :cond_0

    .line 92
    .line 93
    sget v1, Lcom/transsion/room/R$id;->tv_tag:I

    .line 94
    .line 95
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    move-object v13, v2

    .line 100
    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 101
    .line 102
    if-eqz v13, :cond_0

    .line 103
    .line 104
    sget v1, Lcom/transsion/room/R$id;->tv_title:I

    .line 105
    .line 106
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    move-object v14, v2

    .line 111
    check-cast v14, Landroidx/appcompat/widget/AppCompatTextView;

    .line 112
    .line 113
    if-eqz v14, :cond_0

    .line 114
    .line 115
    sget v1, Lcom/transsion/room/R$id;->v_join:I

    .line 116
    .line 117
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    move-object v15, v2

    .line 122
    check-cast v15, Lcom/tn/lib/view/RoomJoinAnimationView;

    .line 123
    .line 124
    if-eqz v15, :cond_0

    .line 125
    .line 126
    sget v1, Lcom/transsion/room/R$id;->v_line:I

    .line 127
    .line 128
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v16

    .line 132
    if-eqz v16, :cond_0

    .line 133
    .line 134
    sget v1, Lcom/transsion/room/R$id;->v_new_post_bg:I

    .line 135
    .line 136
    invoke-static {v0, v1}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    move-object/from16 v17, v2

    .line 141
    .line 142
    check-cast v17, Lcom/noober/background/view/BLView;

    .line 143
    .line 144
    if-eqz v17, :cond_0

    .line 145
    .line 146
    new-instance v1, Lfp/y;

    .line 147
    .line 148
    move-object v4, v0

    .line 149
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 150
    .line 151
    move-object v3, v1

    .line 152
    invoke-direct/range {v3 .. v17}, Lfp/y;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Group;Lcom/google/android/material/imageview/ShapeableImageView;Lfp/b0;Lfp/c0;Landroidx/appcompat/widget/AppCompatTextView;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lcom/tn/lib/view/RoomJoinAnimationView;Landroid/view/View;Lcom/noober/background/view/BLView;)V

    .line 153
    .line 154
    .line 155
    return-object v1

    .line 156
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/NullPointerException;

    .line 165
    .line 166
    const-string v2, "Missing required view with ID: "

    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v1
.end method

.method public static c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfp/y;
    .locals 2

    .line 1
    sget v0, Lcom/transsion/room/R$layout;->item_room_list:I

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
    invoke-static {p0}, Lfp/y;->a(Landroid/view/View;)Lfp/y;

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
    iget-object v0, p0, Lfp/y;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfp/y;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
