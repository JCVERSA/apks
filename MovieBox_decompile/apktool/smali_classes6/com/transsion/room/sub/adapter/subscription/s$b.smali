.class public final Lcom/transsion/room/sub/adapter/subscription/s$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/adapter/subscription/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final e:Lbj/b;

.field private final f:Z

.field private g:Lcom/transsion/room/sub/adapter/subscription/b;


# direct methods
.method public constructor <init>(Lbj/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->e:Lbj/b;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->f:Z

    .line 7
    .line 8
    return-void
.end method

.method private static final B(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p2, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p2}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->g:Lcom/transsion/room/sub/adapter/subscription/b;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getUserInfo()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;->getUserId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/room/sub/adapter/subscription/b;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method private static final C(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V
    .locals 0

    .line 1
    sget-object p2, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p2}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 10
    .line 11
    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->g:Lcom/transsion/room/sub/adapter/subscription/b;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getUserInfo()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;->getUserId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/room/sub/adapter/subscription/b;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public static synthetic y(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/s$b;->B(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/s$b;->C(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V
    .locals 9

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "userItem"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget v0, Lcom/transsion/room/R$id;->iv_avatar:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "getContext(...)"

    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getUserInfo()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;->getAvatar()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v3, v1

    .line 49
    :goto_0
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/transsion/room/sub/adapter/subscription/t;

    .line 57
    .line 58
    invoke-direct {v2, p0, p2}, Lcom/transsion/room/sub/adapter/subscription/t;-><init>(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "tv_name "

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    const/4 v7, 0x4

    .line 84
    const/4 v8, 0x0

    .line 85
    const-string v4, "FollowingsFeedAdapter"

    .line 86
    .line 87
    const/4 v6, 0x0

    .line 88
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sget v0, Lcom/transsion/room/R$id;->container:I

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Landroid/widget/LinearLayout;

    .line 98
    .line 99
    if-eqz v0, :cond_2

    .line 100
    .line 101
    new-instance v2, Lcom/transsion/room/sub/adapter/subscription/u;

    .line 102
    .line 103
    invoke-direct {v2, p0, p2}, Lcom/transsion/room/sub/adapter/subscription/u;-><init>(Lcom/transsion/room/sub/adapter/subscription/s$b;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    sget v0, Lcom/transsion/room/R$id;->tv_name:I

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getUserInfo()Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    if-eqz v2, :cond_3

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/UserItemFollowings;->getNickname()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    :cond_3
    invoke-virtual {p1, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 122
    .line 123
    .line 124
    sget v0, Lcom/transsion/room/R$id;->tv_name:I

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/TextView;

    .line 131
    .line 132
    const/4 v1, 0x0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    .line 137
    .line 138
    :cond_4
    sget v0, Lcom/transsion/room/R$id;->tv_new_video:I

    .line 139
    .line 140
    invoke-virtual {p1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    check-cast p1, Lcom/transsion/baseui/widget/GradientTextView;

    .line 145
    .line 146
    if-eqz p1, :cond_6

    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->getHasUnread()Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-eqz p2, :cond_5

    .line 153
    .line 154
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_5
    const/16 p2, 0x8

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    :cond_6
    :goto_1
    return-void
.end method

.method public final D(Lcom/transsion/room/sub/adapter/subscription/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/s$b;->g:Lcom/transsion/room/sub/adapter/subscription/b;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/s$b;->A(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/transsion/room/R$layout;->item_subscription_list:I

    .line 2
    .line 3
    return v0
.end method
