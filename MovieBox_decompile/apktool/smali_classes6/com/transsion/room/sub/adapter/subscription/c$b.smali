.class public final Lcom/transsion/room/sub/adapter/subscription/c$b;
.super Lcom/chad/library/adapter/base/provider/BaseItemProvider;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/adapter/subscription/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final e:Lbj/b;

.field private final f:Z

.field private g:Lcom/transsion/room/sub/adapter/subscription/a;


# direct methods
.method public constructor <init>(Lbj/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->e:Lbj/b;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->f:Z

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic A(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/c$b;->G(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/c$b;->J(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic C(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/c$b;->L(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/c$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/transsion/room/sub/adapter/subscription/c$b;->H(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/c$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/c$b;->M(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final G(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

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
    sget p1, Lcom/transsion/room/R$string;->base_net_err:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->g:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-interface {p3, p1}, Lcom/transsion/room/sub/adapter/subscription/a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string p3, "item"

    .line 25
    .line 26
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 27
    .line 28
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/c$b;->N(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final H(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/c$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 6

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
    move-result-object v1

    .line 41
    :cond_1
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    iget-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p7, Ljava/lang/Integer;

    .line 47
    .line 48
    if-eqz p7, :cond_3

    .line 49
    .line 50
    invoke-virtual {p7}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result p7

    .line 54
    sub-int/2addr p7, v0

    .line 55
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    :cond_3
    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 60
    .line 61
    :goto_0
    iget-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast p7, Ljava/lang/Integer;

    .line 64
    .line 65
    if-eqz p7, :cond_4

    .line 66
    .line 67
    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p7

    .line 71
    if-gez p7, :cond_4

    .line 72
    .line 73
    const/4 p7, 0x0

    .line 74
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p7

    .line 78
    iput-object p7, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 79
    .line 80
    :cond_4
    sget p7, Lcom/transsion/room/R$id;->likeText:I

    .line 81
    .line 82
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p2, p7, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 89
    .line 90
    .line 91
    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 92
    .line 93
    iget-object p2, p4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    invoke-virtual {p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/c$b;->P(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    .line 98
    .line 99
    .line 100
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 101
    .line 102
    iget-boolean p1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 103
    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string p4, "like \u70b9\u51fb\u540e\u72b6\u6001 "

    .line 110
    .line 111
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    const/4 v4, 0x4

    .line 122
    const/4 v5, 0x0

    .line 123
    const-string v1, "SubscriptionFeedAdapter"

    .line 124
    .line 125
    const/4 v3, 0x0

    .line 126
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p3, Lcom/transsion/room/sub/adapter/subscription/c$b;->g:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 130
    .line 131
    if-eqz p1, :cond_5

    .line 132
    .line 133
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 134
    .line 135
    invoke-virtual {p5}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-interface {p1, p0, p2}, Lcom/transsion/room/sub/adapter/subscription/a;->w(ZLjava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    const-string p0, "like"

    .line 147
    .line 148
    iget p1, p6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 149
    .line 150
    invoke-direct {p3, p0, p5, p1}, Lcom/transsion/room/sub/adapter/subscription/c$b;->N(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method private static final I(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

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
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->g:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-interface {p3, p1}, Lcom/transsion/room/sub/adapter/subscription/a;->t(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string p3, "comment"

    .line 25
    .line 26
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 27
    .line 28
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/c$b;->N(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final J(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

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
    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    const-wide/16 v1, 0x1f4

    .line 24
    .line 25
    invoke-virtual {v0, p2, v1, v2}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->g:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 33
    .line 34
    if-eqz p0, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p0, p2, p1}, Lcom/transsion/room/sub/adapter/subscription/a;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method private static final K(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/View;)V
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
    sget p1, Lcom/transsion/room/R$string;->base_net_err:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->g:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p0, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getUid()Ljava/lang/String;

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
    invoke-interface {p0, p1}, Lcom/transsion/room/sub/adapter/subscription/a;->b(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method private static final L(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

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
    sget p1, Lcom/transsion/room/R$string;->base_net_err:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->g:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-interface {p3, p1}, Lcom/transsion/room/sub/adapter/subscription/a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string p3, "item"

    .line 25
    .line 26
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 27
    .line 28
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/c$b;->N(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static final M(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

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
    sget p1, Lcom/transsion/room/R$string;->base_net_err:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p3, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->g:Lcom/transsion/room/sub/adapter/subscription/a;

    .line 18
    .line 19
    if-eqz p3, :cond_1

    .line 20
    .line 21
    invoke-interface {p3, p1}, Lcom/transsion/room/sub/adapter/subscription/a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    const-string p3, "item"

    .line 25
    .line 26
    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 27
    .line 28
    invoke-direct {p0, p3, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/c$b;->N(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final N(Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;I)V
    .locals 2

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
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "ops"

    .line 20
    .line 21
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v1, "content_id"

    .line 33
    .line 34
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string p1, "position"

    .line 38
    .line 39
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "refer_subject_id"

    .line 55
    .line 56
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string p1, "content_type"

    .line 60
    .line 61
    const-string p2, "ugc_video"

    .line 62
    .line 63
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 67
    .line 68
    const-string p2, "/subscription/subscription"

    .line 69
    .line 70
    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public static synthetic y(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/c$b;->K(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/room/sub/adapter/subscription/c$b;->I(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V
    .locals 20

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
    const-string v1, ""

    .line 37
    .line 38
    const-string v2, "getContext(...)"

    .line 39
    .line 40
    const/4 v12, 0x0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    sget-object v3, Lni/f;->a:Lni/f$a;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object v4, v12

    .line 68
    :goto_0
    invoke-virtual {v3, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    if-nez v4, :cond_2

    .line 83
    .line 84
    :cond_1
    move-object v4, v1

    .line 85
    :cond_2
    invoke-virtual {v3, v4}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 90
    .line 91
    .line 92
    new-instance v3, Lcom/transsion/room/sub/adapter/subscription/d;

    .line 93
    .line 94
    invoke-direct {v3, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/d;-><init>(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCorner()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/4 v3, 0x4

    .line 105
    if-nez v0, :cond_4

    .line 106
    .line 107
    sget v0, Lcom/transsion/room/R$id;->languageTag:I

    .line 108
    .line 109
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/tn/lib/view/CornerTextView;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    sget v4, Lcom/transsion/room/R$id;->languageTag:I

    .line 122
    .line 123
    invoke-virtual {v9, v4, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 124
    .line 125
    .line 126
    :cond_5
    :goto_1
    sget v0, Lcom/transsion/room/R$id;->publisherAvatar:I

    .line 127
    .line 128
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 133
    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    sget-object v4, Lni/f;->a:Lni/f$a;

    .line 137
    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v5}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCreator()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    if-eqz v4, :cond_6

    .line 154
    .line 155
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;->getAvatar()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    goto :goto_2

    .line 160
    :cond_6
    move-object v4, v12

    .line 161
    :goto_2
    invoke-virtual {v2, v4}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    if-eqz v4, :cond_8

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    if-nez v4, :cond_7

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    move-object v1, v4

    .line 179
    :cond_8
    :goto_3
    invoke-virtual {v2, v1}, Lni/f$b;->l(Ljava/lang/String;)Lni/f$b;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1, v0}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 184
    .line 185
    .line 186
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/e;

    .line 187
    .line 188
    invoke-direct {v1, v8, v10}, Lcom/transsion/room/sub/adapter/subscription/e;-><init>(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    :cond_9
    sget v0, Lcom/transsion/room/R$id;->trending_grid_type_icon:I

    .line 195
    .line 196
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Landroid/widget/ImageView;

    .line 201
    .line 202
    if-eqz v0, :cond_a

    .line 203
    .line 204
    invoke-static {v0, v10, v12, v3, v12}, Lcom/transsion/ugcvideodetail/api/UGCVideoTypeKt;->i(Landroid/widget/ImageView;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    :cond_a
    sget v0, Lcom/transsion/room/R$id;->trending_grid_time_text:I

    .line 208
    .line 209
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getDuration()Ljava/lang/Long;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-eqz v1, :cond_b

    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 216
    .line 217
    .line 218
    move-result-wide v1

    .line 219
    long-to-int v1, v1

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    goto :goto_4

    .line 225
    :cond_b
    move-object v1, v12

    .line 226
    :goto_4
    invoke-static {v1}, Lcom/transsion/baseui/util/TimeUtilKt;->a(Ljava/lang/Integer;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 231
    .line 232
    .line 233
    sget v0, Lcom/transsion/room/R$id;->videoTitle:I

    .line 234
    .line 235
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 240
    .line 241
    .line 242
    sget v0, Lcom/transsion/room/R$id;->videoTitle:I

    .line 243
    .line 244
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Landroid/widget/TextView;

    .line 249
    .line 250
    if-eqz v0, :cond_c

    .line 251
    .line 252
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/f;

    .line 253
    .line 254
    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/f;-><init>(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    .line 259
    .line 260
    :cond_c
    sget v0, Lcom/transsion/room/R$id;->videoInfo:I

    .line 261
    .line 262
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getViewOrNull(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Landroid/widget/TextView;

    .line 267
    .line 268
    if-eqz v0, :cond_d

    .line 269
    .line 270
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/g;

    .line 271
    .line 272
    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/g;-><init>(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    .line 277
    .line 278
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->isVerticalImmStyle()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    if-eqz v0, :cond_e

    .line 283
    .line 284
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    sget v1, Lcom/transsion/baseui/R$string;->ugc_video_shorts:I

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const-string v2, "special_#shorts_icon"

    .line 307
    .line 308
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    goto :goto_5

    .line 317
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getWatchNum()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/j;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getPublishTime()Ljava/lang/Long;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 337
    .line 338
    .line 339
    move-result-wide v1

    .line 340
    invoke-static {v1, v2}, Lcom/transsion/baseui/util/TimeUtilKt;->l(J)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    :goto_5
    sget v1, Lcom/transsion/room/R$id;->videoInfo:I

    .line 353
    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->k()Landroid/content/Context;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {v0, v2}, Lcom/transsion/baseui/util/q;->e(Ljava/util/List;Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v9, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 363
    .line 364
    .line 365
    new-instance v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 366
    .line 367
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 368
    .line 369
    .line 370
    sget v0, Lcom/transsion/room/R$id;->likeText:I

    .line 371
    .line 372
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    iput-object v0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 377
    .line 378
    sget v0, Lcom/transsion/room/R$id;->likeLayout:I

    .line 379
    .line 380
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    move-object v13, v0

    .line 385
    check-cast v13, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 386
    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    if-eqz v0, :cond_f

    .line 392
    .line 393
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getLikeNum()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    goto :goto_6

    .line 398
    :cond_f
    move-object v0, v12

    .line 399
    :goto_6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 400
    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    const-string v3, "likeNumber\u7684\u6570\u91cf: "

    .line 407
    .line 408
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v16

    .line 418
    const/16 v18, 0x4

    .line 419
    .line 420
    const/16 v19, 0x0

    .line 421
    .line 422
    const-string v15, "SubscriptionFeedAdapter"

    .line 423
    .line 424
    const/16 v17, 0x0

    .line 425
    .line 426
    move-object v14, v1

    .line 427
    invoke-static/range {v14 .. v19}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 428
    .line 429
    .line 430
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    const/4 v3, 0x0

    .line 435
    if-eqz v2, :cond_10

    .line 436
    .line 437
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getHasLike()Ljava/lang/Boolean;

    .line 438
    .line 439
    .line 440
    move-result-object v2

    .line 441
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 442
    .line 443
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v2

    .line 447
    goto :goto_7

    .line 448
    :cond_10
    move v2, v3

    .line 449
    :goto_7
    iget-object v4, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 452
    .line 453
    invoke-virtual {v8, v2, v4}, Lcom/transsion/room/sub/adapter/subscription/c$b;->P(ZLandroidx/appcompat/widget/AppCompatTextView;)V

    .line 454
    .line 455
    .line 456
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 457
    .line 458
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 459
    .line 460
    .line 461
    iput-boolean v2, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 462
    .line 463
    new-instance v6, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    const-string v7, "like \u521d\u59cb\u72b6\u6001 "

    .line 469
    .line 470
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v16

    .line 480
    const/16 v18, 0x4

    .line 481
    .line 482
    const/16 v19, 0x0

    .line 483
    .line 484
    const-string v15, "SubscriptionFeedAdapter"

    .line 485
    .line 486
    const/16 v17, 0x0

    .line 487
    .line 488
    move-object v14, v1

    .line 489
    invoke-static/range {v14 .. v19}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 490
    .line 491
    .line 492
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 493
    .line 494
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 495
    .line 496
    .line 497
    if-eqz v0, :cond_11

    .line 498
    .line 499
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    goto :goto_8

    .line 508
    :cond_11
    move-object v0, v12

    .line 509
    :goto_8
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 510
    .line 511
    if-eqz v0, :cond_12

    .line 512
    .line 513
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-gez v0, :cond_12

    .line 518
    .line 519
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    iput-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 524
    .line 525
    :cond_12
    sget v0, Lcom/transsion/room/R$id;->likeText:I

    .line 526
    .line 527
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 528
    .line 529
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    invoke-virtual {v9, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 534
    .line 535
    .line 536
    new-instance v14, Lcom/transsion/room/sub/adapter/subscription/h;

    .line 537
    .line 538
    move-object v0, v14

    .line 539
    move-object v1, v4

    .line 540
    move-object/from16 v3, p1

    .line 541
    .line 542
    move-object/from16 v4, p0

    .line 543
    .line 544
    move-object/from16 v6, p2

    .line 545
    .line 546
    move-object v7, v11

    .line 547
    invoke-direct/range {v0 .. v7}, Lcom/transsion/room/sub/adapter/subscription/h;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/room/sub/adapter/subscription/c$b;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    .line 552
    .line 553
    sget v0, Lcom/transsion/room/R$id;->commentImg:I

    .line 554
    .line 555
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    .line 556
    .line 557
    .line 558
    move-result-object v1

    .line 559
    if-eqz v1, :cond_13

    .line 560
    .line 561
    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v12

    .line 565
    :cond_13
    invoke-virtual {v9, v0, v12}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 566
    .line 567
    .line 568
    sget v0, Lcom/transsion/room/R$id;->commentLayout:I

    .line 569
    .line 570
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 575
    .line 576
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/i;

    .line 577
    .line 578
    invoke-direct {v1, v8, v10, v11}, Lcom/transsion/room/sub/adapter/subscription/i;-><init>(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 579
    .line 580
    .line 581
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    .line 583
    .line 584
    sget v0, Lcom/transsion/room/R$id;->shareLayout:I

    .line 585
    .line 586
    invoke-virtual {v9, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    check-cast v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 591
    .line 592
    new-instance v1, Lcom/transsion/room/sub/adapter/subscription/j;

    .line 593
    .line 594
    invoke-direct {v1, v8, v10}, Lcom/transsion/room/sub/adapter/subscription/j;-><init>(Lcom/transsion/room/sub/adapter/subscription/c$b;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 598
    .line 599
    .line 600
    return-void
.end method

.method public final O(Lcom/transsion/room/sub/adapter/subscription/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/room/sub/adapter/subscription/c$b;->g:Lcom/transsion/room/sub/adapter/subscription/a;

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
    check-cast p2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/room/sub/adapter/subscription/c$b;->F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

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
