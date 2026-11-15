.class public abstract Lcom/transsion/ad/bidding/base/u;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/transsion/ad/bidding/base/u;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;
.end method

.method public abstract b()Lcom/cloud/hisavana/sdk/api/view/AdCloseView;
.end method

.method public abstract c()Landroid/widget/TextView;
.end method

.method public final d(Lcom/cloud/hisavana/sdk/api/view/TNativeView;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "nativeView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nativeInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->g()Lcom/cloud/hisavana/sdk/api/view/MediaView;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 23
    .line 24
    invoke-virtual {p1, v1, v2}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setMediaView(Lcom/cloud/hisavana/sdk/api/view/MediaView;Landroid/widget/ImageView$ScaleType;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->f()Landroid/widget/ImageView;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setIconView(Landroid/widget/ImageView;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->a()Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdChoiceView(Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->b()Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setAdCloseView(Lcom/cloud/hisavana/sdk/api/view/AdCloseView;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->h()Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/api/view/TNativeView;->setPsMarkView(Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->j()Landroid/widget/TextView;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_5

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getTitle()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->e()Landroid/widget/TextView;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_6

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getDescription()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_6
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->c()Landroid/widget/TextView;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getCtatext()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {p0}, Lcom/transsion/ad/bidding/base/u;->i()Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object p2

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 131
    .line 132
    .line 133
    return-object v0
.end method

.method public abstract e()Landroid/widget/TextView;
.end method

.method public abstract f()Landroid/widget/ImageView;
.end method

.method public abstract g()Lcom/cloud/hisavana/sdk/api/view/MediaView;
.end method

.method public abstract h()Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;
.end method

.method public abstract i()Landroid/view/View;
.end method

.method public abstract j()Landroid/widget/TextView;
.end method
