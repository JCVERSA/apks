.class public final Lcom/transsion/home/fragment/home/t;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

.field private b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->onAdViewDestroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->onAdViewDestroy()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public final b(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Lkotlinx/coroutines/n0;)V
    .locals 4

    .line 1
    const-string p4, "flGameCenter"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "flPhoneCenter"

    .line 7
    .line 8
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p4, "leftLogo"

    .line 12
    .line 13
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    const-string v1, "getContext(...)"

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez p4, :cond_2

    .line 23
    .line 24
    new-instance p4, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p4, v3, v2, v0, v2}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    .line 35
    .line 36
    iput-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 37
    .line 38
    const-string v3, "HomeRIGHTTopGameNonstandardScene"

    .line 39
    .line 40
    invoke-virtual {p4, v3}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->setSceneId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 44
    .line 45
    if-eqz p4, :cond_0

    .line 46
    .line 47
    new-instance v3, Lcom/transsion/home/fragment/home/t$a;

    .line 48
    .line 49
    invoke-direct {v3, p1}, Lcom/transsion/home/fragment/home/t$a;-><init>(Landroid/widget/FrameLayout;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, v3}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->setIrregularAdListener(Loh/a;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 56
    .line 57
    if-eqz p4, :cond_1

    .line 58
    .line 59
    invoke-virtual {p4}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->loadAd()V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 63
    .line 64
    .line 65
    iget-object p4, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 66
    .line 67
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 71
    .line 72
    if-nez p1, :cond_5

    .line 73
    .line 74
    new-instance p1, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 75
    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p4, v2, v0, v2}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 87
    .line 88
    const-string p4, "HomeLeftTopBrandNonstandardScene"

    .line 89
    .line 90
    invoke-virtual {p1, p4}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->setSceneId(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 94
    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    new-instance p4, Lcom/transsion/home/fragment/home/t$b;

    .line 98
    .line 99
    invoke-direct {p4, p3, p2}, Lcom/transsion/home/fragment/home/t$b;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p4}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->setIrregularAdListener(Loh/a;)V

    .line 103
    .line 104
    .line 105
    :cond_3
    iget-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 106
    .line 107
    if-eqz p1, :cond_4

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->loadAd()V

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/home/fragment/home/t;->a:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->loadAd()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/t;->b:Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/wrapperad/view/BiddingRectangleIrregularView;->loadAd()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method
