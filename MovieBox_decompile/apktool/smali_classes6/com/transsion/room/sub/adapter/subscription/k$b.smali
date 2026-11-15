.class public final Lcom/transsion/room/sub/adapter/subscription/k$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/adapter/subscription/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final e:Lbj/b;

.field private final f:Z

.field private final g:Ljava/lang/String;

.field private h:Lcom/transsion/room/sub/adapter/subscription/a;


# direct methods
.method public constructor <init>(Lbj/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->e:Lbj/b;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->f:Z

    .line 7
    .line 8
    const-string p1, "/subscription/subscription"

    .line 9
    .line 10
    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->g:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic A(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->J(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/k$b;->L(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->K(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/k$b;->I(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/k$b;->G(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final G(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p3, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p3}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_0

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
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p3, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->E(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const-string p3, "item"

    .line 33
    .line 34
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 35
    .line 36
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final H(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/k$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 8

    .line 1
    sget-object p7, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p7}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p7

    .line 7
    if-nez p7, :cond_0

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
    iget-boolean p7, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    xor-int/2addr p7, v0

    .line 21
    iput-boolean p7, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-ne p7, v0, :cond_2

    .line 25
    .line 26
    iget-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p7, Ljava/lang/Integer;

    .line 29
    .line 30
    if-eqz p7, :cond_1

    .line 31
    .line 32
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result p7

    .line 36
    add-int/2addr p7, v0

    .line 37
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p7

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object p7, v1

    .line 43
    :goto_0
    iput-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    iget-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p7, Ljava/lang/Integer;

    .line 49
    .line 50
    if-eqz p7, :cond_3

    .line 51
    .line 52
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result p7

    .line 56
    sub-int/2addr p7, v0

    .line 57
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object p7

    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move-object p7, v1

    .line 63
    :goto_1
    iput-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 64
    .line 65
    :goto_2
    iget-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p7, Ljava/lang/Integer;

    .line 68
    .line 69
    if-eqz p7, :cond_4

    .line 70
    .line 71
    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result p7

    .line 75
    if-gez p7, :cond_4

    .line 76
    .line 77
    const/4 p7, 0x0

    .line 78
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p7

    .line 82
    iput-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 83
    .line 84
    :cond_4
    sget p7, Lcom/transsion/room/R$id;->likeText:I

    .line 85
    .line 86
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p2, p7, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 93
    .line 94
    .line 95
    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 96
    .line 97
    iget-object p2, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-virtual {p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->P(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    .line 102
    .line 103
    .line 104
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 105
    .line 106
    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 107
    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string p4, "like \u70b9\u51fb\u540e\u72b6\u6001 "

    .line 114
    .line 115
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    const/4 v6, 0x4

    .line 126
    const/4 v7, 0x0

    .line 127
    const-string v3, "SubscriptionFeedAdapter"

    .line 128
    .line 129
    const/4 v5, 0x0

    .line 130
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p3, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 134
    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 138
    .line 139
    invoke-virtual {p5}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-eqz p2, :cond_5

    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-interface {p1, p0, p2}, Lcom/transsion/room/sub/adapter/subscription/a;->w(ZLjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_6
    const-string p0, "like"

    .line 161
    .line 162
    iget p1, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 163
    .line 164
    invoke-direct {p3, p0, p5, p1}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method private static final I(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p3, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p3}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_0

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
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p3, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->t(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const-string p3, "comment"

    .line 33
    .line 34
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 35
    .line 36
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final J(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V
    .locals 1

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
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 v0, 0x0

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object p2, v0

    .line 38
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :cond_2
    invoke-interface {p0, p2, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    return-void
.end method

.method private static final K(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Landroid/view/View;)V
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
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p1, 0x0

    .line 43
    :goto_0
    invoke-interface {p0, p1}, Lcom/transsion/room/sub/adapter/subscription/a;->b(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method

.method private static final L(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p3, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p3}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_0

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
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p3, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->E(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const-string p3, "item"

    .line 33
    .line 34
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 35
    .line 36
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final M(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p3, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p3}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p3

    .line 7
    if-nez p3, :cond_0

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
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {p3, v0}, Lcom/transsion/room/sub/adapter/subscription/a;->E(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const-string p3, "item"

    .line 33
    .line 34
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 35
    .line 36
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final N(Ljava/lang/String;Lcom/transsion/room/sub/bean/subscription/ItemTrending;I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "module_name"

    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object p1, v1

    .line 28
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v2, "ops"

    .line 33
    .line 34
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    move-object p1, v1

    .line 53
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v2, "content_id"

    .line 58
    .line 59
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-string p1, "position"

    .line 63
    .line 64
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string p2, "refer_subject_id"

    .line 90
    .line 91
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    const-string p1, "content_type"

    .line 95
    .line 96
    const-string p2, "ugc_video"

    .line 97
    .line 98
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 102
    .line 103
    iget-object p2, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->g:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public static synthetic y(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/k$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsion/room/sub/adapter/subscription/k$b;->H(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/k$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/k$b;->M(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    const-string v0, "holder"

    .line 8
    .line 9
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "feedItem"

    .line 13
    .line 14
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v11, Lkotlin/jvm/internal/Ref$IntRef;

    .line 18
    .line 19
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView$a0;->getBindingAdapterPosition()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 27
    .line 28
    sget v0, Lcom/transsion/room/R$id;->cover_image:I

    .line 29
    .line 30
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 35
    .line 36
    const-string v1, "getContext(...)"

    .line 37
    .line 38
    const/4 v12, 0x0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    sget-object v2, Lni/f;->a:Lni/f$a;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v3}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move-object v3, v12

    .line 76
    :goto_0
    invoke-virtual {v2, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    if-eqz v3, :cond_1

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-eqz v3, :cond_1

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-nez v3, :cond_2

    .line 101
    .line 102
    :cond_1
    const-string v3, ""

    .line 103
    .line 104
    :cond_2
    invoke-virtual {v2, v3}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v2, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 109
    .line 110
    .line 111
    new-instance v2, Lcom/transsion/room/sub/adapter/subscription/l;

    .line 112
    .line 113
    invoke-direct {v2, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/l;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    goto :goto_1

    .line 134
    :cond_4
    move-object v0, v12

    .line 135
    :goto_1
    const/4 v2, 0x4

    .line 136
    if-nez v0, :cond_5

    .line 137
    .line 138
    sget v0, Lcom/transsion/room/R$id;->languageTag:I

    .line 139
    .line 140
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lcom/tn/lib/view/CornerTextView;

    .line 145
    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_5
    sget v3, Lcom/transsion/room/R$id;->languageTag:I

    .line 153
    .line 154
    invoke-virtual {v9, v3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_2
    sget v0, Lcom/transsion/room/R$id;->publisherAvatar:I

    .line 158
    .line 159
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    if-eqz v3, :cond_7

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    if-eqz v3, :cond_7

    .line 195
    .line 196
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    goto :goto_3

    .line 201
    :cond_7
    move-object v3, v12

    .line 202
    :goto_3
    invoke-virtual {v1, v3}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    sget v3, Lcom/transsion/wrapperad/R$color;->white_20:I

    .line 207
    .line 208
    invoke-virtual {v1, v3}, Lni/f$b;->i(I)Lni/f$b;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 213
    .line 214
    .line 215
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/m;

    .line 216
    .line 217
    invoke-direct {v1, v8, v10}, Lcom/transsion/room/sub/adapter/subscription/m;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    sget v1, Lcom/transsion/room/R$id;->trending_grid_type_icon:I

    .line 232
    .line 233
    invoke-virtual {v9, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, Landroid/widget/ImageView;

    .line 238
    .line 239
    if-eqz v1, :cond_9

    .line 240
    .line 241
    if-eqz v0, :cond_9

    .line 242
    .line 243
    invoke-static {v1, v0, v12, v2, v12}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_9
    sget v0, Lcom/transsion/room/R$id;->trending_grid_time_text:I

    .line 247
    .line 248
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    if-eqz v1, :cond_a

    .line 257
    .line 258
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    if-eqz v1, :cond_a

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 265
    .line 266
    .line 267
    move-result-wide v1

    .line 268
    long-to-int v1, v1

    .line 269
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    goto :goto_4

    .line 274
    :cond_a
    move-object v1, v12

    .line 275
    :goto_4
    invoke-static {v1}, Lcom/transsion/baseui/util/TimeUtilKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 280
    .line 281
    .line 282
    sget v0, Lcom/transsion/room/R$id;->videoTitle:I

    .line 283
    .line 284
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    if-eqz v1, :cond_b

    .line 293
    .line 294
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    goto :goto_5

    .line 299
    :cond_b
    move-object v1, v12

    .line 300
    :goto_5
    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 301
    .line 302
    .line 303
    sget v0, Lcom/transsion/room/R$id;->videoTitle:I

    .line 304
    .line 305
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Landroid/widget/TextView;

    .line 310
    .line 311
    if-eqz v0, :cond_c

    .line 312
    .line 313
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/n;

    .line 314
    .line 315
    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/n;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    .line 320
    .line 321
    :cond_c
    sget v0, Lcom/transsion/room/R$id;->videoInfo:I

    .line 322
    .line 323
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    check-cast v0, Landroid/widget/TextView;

    .line 328
    .line 329
    if-eqz v0, :cond_d

    .line 330
    .line 331
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/o;

    .line 332
    .line 333
    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/o;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    .line 338
    .line 339
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    const/4 v1, 0x0

    .line 348
    if-eqz v0, :cond_e

    .line 349
    .line 350
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    goto :goto_6

    .line 355
    :cond_e
    move v0, v1

    .line 356
    :goto_6
    if-eqz v0, :cond_10

    .line 357
    .line 358
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    sget v2, Lcom/transsion/baseui/R$string;->ugc_video_shorts:I

    .line 363
    .line 364
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 369
    .line 370
    .line 371
    move-result-object v2

    .line 372
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    if-eqz v2, :cond_f

    .line 377
    .line 378
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    goto :goto_7

    .line 383
    :cond_f
    move-object v2, v12

    .line 384
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v3, "special_#shorts_icon"

    .line 393
    .line 394
    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    goto :goto_a

    .line 403
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    if-eqz v0, :cond_11

    .line 412
    .line 413
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    goto :goto_8

    .line 418
    :cond_11
    move-object v0, v12

    .line 419
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-static {v0, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v2}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    if-eqz v2, :cond_12

    .line 436
    .line 437
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    goto :goto_9

    .line 442
    :cond_12
    move-object v2, v12

    .line 443
    :goto_9
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 447
    .line 448
    .line 449
    move-result-wide v2

    .line 450
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->l(J)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v2

    .line 454
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    :goto_a
    sget v2, Lcom/transsion/room/R$id;->videoInfo:I

    .line 463
    .line 464
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    invoke-static {v0, v3}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v9, v2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 473
    .line 474
    .line 475
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 476
    .line 477
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 478
    .line 479
    .line 480
    sget v0, Lcom/transsion/room/R$id;->likeText:I

    .line 481
    .line 482
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 487
    .line 488
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v0}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    if-eqz v0, :cond_13

    .line 497
    .line 498
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    if-eqz v0, :cond_13

    .line 503
    .line 504
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    goto :goto_b

    .line 509
    :cond_13
    move-object v0, v12

    .line 510
    :goto_b
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 511
    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .line 516
    .line 517
    const-string v4, "likeNumber\u7684\u6570\u91cf: "

    .line 518
    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v15

    .line 529
    const/16 v17, 0x4

    .line 530
    .line 531
    const/16 v18, 0x0

    .line 532
    .line 533
    const-string v14, "SubscriptionFeedAdapter"

    .line 534
    .line 535
    const/16 v16, 0x0

    .line 536
    .line 537
    move-object v13, v2

    .line 538
    invoke-static/range {v13 .. v18}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 539
    .line 540
    .line 541
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 542
    .line 543
    .line 544
    move-result-object v3

    .line 545
    invoke-virtual {v3}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 546
    .line 547
    .line 548
    move-result-object v3

    .line 549
    if-eqz v3, :cond_14

    .line 550
    .line 551
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    if-eqz v3, :cond_14

    .line 556
    .line 557
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    .line 558
    .line 559
    .line 560
    move-result-object v3

    .line 561
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 562
    .line 563
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    move-result v3

    .line 567
    goto :goto_c

    .line 568
    :cond_14
    move v3, v1

    .line 569
    :goto_c
    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 572
    .line 573
    invoke-virtual {v8, v3, v4}, Lcom/transsion/room/sub/adapter/subscription/k$b;->P(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    .line 574
    .line 575
    .line 576
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 577
    .line 578
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 579
    .line 580
    .line 581
    iput-boolean v3, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 582
    .line 583
    new-instance v6, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .line 587
    .line 588
    const-string v7, "like \u521d\u59cb\u72b6\u6001 "

    .line 589
    .line 590
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v15

    .line 600
    const/16 v17, 0x4

    .line 601
    .line 602
    const/16 v18, 0x0

    .line 603
    .line 604
    const-string v14, "SubscriptionFeedAdapter"

    .line 605
    .line 606
    const/16 v16, 0x0

    .line 607
    .line 608
    move-object v13, v2

    .line 609
    invoke-static/range {v13 .. v18}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 610
    .line 611
    .line 612
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 613
    .line 614
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 615
    .line 616
    .line 617
    if-eqz v0, :cond_15

    .line 618
    .line 619
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 624
    .line 625
    .line 626
    move-result-object v0

    .line 627
    goto :goto_d

    .line 628
    :cond_15
    move-object v0, v12

    .line 629
    :goto_d
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 630
    .line 631
    if-eqz v0, :cond_16

    .line 632
    .line 633
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 634
    .line 635
    .line 636
    move-result v0

    .line 637
    if-gez v0, :cond_16

    .line 638
    .line 639
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 644
    .line 645
    :cond_16
    sget v0, Lcom/transsion/room/R$id;->likeText:I

    .line 646
    .line 647
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 648
    .line 649
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 654
    .line 655
    .line 656
    iget-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 657
    .line 658
    move-object v13, v0

    .line 659
    check-cast v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 660
    .line 661
    new-instance v14, Lcom/transsion/room/sub/adapter/subscription/p;

    .line 662
    .line 663
    move-object v0, v14

    .line 664
    move-object v1, v4

    .line 665
    move-object/from16 v3, p1

    .line 666
    .line 667
    move-object/from16 v4, p0

    .line 668
    .line 669
    move-object/from16 v6, p2

    .line 670
    .line 671
    move-object v7, v11

    .line 672
    invoke-direct/range {v0 .. v7}, Lcom/transsion/room/sub/adapter/subscription/p;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/k$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    .line 677
    .line 678
    sget v0, Lcom/transsion/room/R$id;->commentImg:I

    .line 679
    .line 680
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/room/sub/bean/subscription/ItemTrending;->getContent()Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    invoke-virtual {v1}, Lcom/transsion/room/sub/bean/subscription/TopicItemTrending;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    if-eqz v1, :cond_17

    .line 689
    .line 690
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    if-eqz v1, :cond_17

    .line 695
    .line 696
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v12

    .line 700
    :cond_17
    invoke-virtual {v9, v0, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 701
    .line 702
    .line 703
    sget v0, Lcom/transsion/room/R$id;->commentImg:I

    .line 704
    .line 705
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 710
    .line 711
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/q;

    .line 712
    .line 713
    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/q;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 714
    .line 715
    .line 716
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    .line 718
    .line 719
    sget v0, Lcom/transsion/room/R$id;->shareImg:I

    .line 720
    .line 721
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 722
    .line 723
    .line 724
    move-result-object v0

    .line 725
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 726
    .line 727
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/r;

    .line 728
    .line 729
    invoke-direct {v1, v8, v10}, Lcom/transsion/room/sub/adapter/subscription/r;-><init>(Lcom/transsion/room/sub/adapter/subscription/k$b;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    .line 734
    .line 735
    return-void
.end method

.method public final O(Lcom/transsion/room/sub/adapter/subscription/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/k$b;->h:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 2
    .line 3
    return-void
.end method

.method public final P(ZLandroidx/appcompat/widget/AppCompatTextView;)V
    .locals 1

    .line 1
    const-string v0, "imageLikes"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    sget p1, Lcom/transsion/baseui/R$drawable;->base_ic_ugc_post_like_selected:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget p1, Lcom/transsion/baseui/R$drawable;->base_ic_ugc_post_like:I

    .line 12
    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, p1}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p2, p1, v0, v0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public bridge synthetic b(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsion/room/sub/bean/subscription/ItemTrending;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/k$b;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/bean/subscription/ItemTrending;)V

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
    sget v0, Lcom/transsion/room/R$layout;->item_feed:I

    .line 2
    .line 3
    return v0
.end method
