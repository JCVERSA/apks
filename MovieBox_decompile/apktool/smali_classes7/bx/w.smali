.class public final Lbx/w;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

.field public final b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

.field public final e:Landroid/widget/FrameLayout;

.field public final f:Landroidx/appcompat/widget/AppCompatImageView;

.field public final g:Lcom/transsnet/downloader/lottery/LotteryTipView;

.field public final h:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

.field public final i:Lcom/tn/lib/widget/TnTextView;

.field public final j:Lcom/transsion/baseui/widget/GradientTextView;

.field public final k:Landroid/view/View;

.field public final l:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/transsion/ad/view/ScrollDetectFrameLayout;Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/view/ScrollDetectFrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsnet/downloader/lottery/LotteryTipView;Lcom/transsion/wrapperad/view/DownloadTopIrregularView;Lcom/tn/lib/widget/TnTextView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbx/w;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lbx/w;->b:Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 7
    .line 8
    iput-object p3, p0, Lbx/w;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    .line 10
    iput-object p4, p0, Lbx/w;->d:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    .line 11
    .line 12
    iput-object p5, p0, Lbx/w;->e:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    iput-object p6, p0, Lbx/w;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    iput-object p7, p0, Lbx/w;->g:Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 17
    .line 18
    iput-object p8, p0, Lbx/w;->h:Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 19
    .line 20
    iput-object p9, p0, Lbx/w;->i:Lcom/tn/lib/widget/TnTextView;

    .line 21
    .line 22
    iput-object p10, p0, Lbx/w;->j:Lcom/transsion/baseui/widget/GradientTextView;

    .line 23
    .line 24
    iput-object p11, p0, Lbx/w;->k:Landroid/view/View;

    .line 25
    .line 26
    iput-object p12, p0, Lbx/w;->l:Landroid/widget/ImageView;

    .line 27
    .line 28
    return-void
.end method

.method public static a(Landroid/view/View;)Lbx/w;
    .locals 15

    .line 1
    sget v0, Lcom/transsnet/downloader/R$id;->adFloatingView:I

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
    check-cast v4, Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsnet/downloader/R$id;->clContent:I

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
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    move-object v6, p0

    .line 24
    check-cast v6, Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    .line 25
    .line 26
    sget v0, Lcom/transsnet/downloader/R$id;->fl_container:I

    .line 27
    .line 28
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v7, v1

    .line 33
    check-cast v7, Landroid/widget/FrameLayout;

    .line 34
    .line 35
    if-eqz v7, :cond_0

    .line 36
    .line 37
    sget v0, Lcom/transsnet/downloader/R$id;->iv_back:I

    .line 38
    .line 39
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v8, v1

    .line 44
    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    .line 45
    .line 46
    if-eqz v8, :cond_0

    .line 47
    .line 48
    sget v0, Lcom/transsnet/downloader/R$id;->lotteryTipView:I

    .line 49
    .line 50
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v9, v1

    .line 55
    check-cast v9, Lcom/transsnet/downloader/lottery/LotteryTipView;

    .line 56
    .line 57
    if-eqz v9, :cond_0

    .line 58
    .line 59
    sget v0, Lcom/transsnet/downloader/R$id;->topIrregularView:I

    .line 60
    .line 61
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v10, v1

    .line 66
    check-cast v10, Lcom/transsion/wrapperad/view/DownloadTopIrregularView;

    .line 67
    .line 68
    if-eqz v10, :cond_0

    .line 69
    .line 70
    sget v0, Lcom/transsnet/downloader/R$id;->tv_title:I

    .line 71
    .line 72
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    move-object v11, v1

    .line 77
    check-cast v11, Lcom/tn/lib/widget/TnTextView;

    .line 78
    .line 79
    if-eqz v11, :cond_0

    .line 80
    .line 81
    sget v0, Lcom/transsnet/downloader/R$id;->tv_transfer:I

    .line 82
    .line 83
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    move-object v12, v1

    .line 88
    check-cast v12, Lcom/transsion/baseui/widget/GradientTextView;

    .line 89
    .line 90
    if-eqz v12, :cond_0

    .line 91
    .line 92
    sget v0, Lcom/transsnet/downloader/R$id;->v_line:I

    .line 93
    .line 94
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v13

    .line 98
    if-eqz v13, :cond_0

    .line 99
    .line 100
    sget v0, Lcom/transsnet/downloader/R$id;->v_top_bg:I

    .line 101
    .line 102
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    move-object v14, v1

    .line 107
    check-cast v14, Landroid/widget/ImageView;

    .line 108
    .line 109
    if-eqz v14, :cond_0

    .line 110
    .line 111
    new-instance p0, Lbx/w;

    .line 112
    .line 113
    move-object v2, p0

    .line 114
    move-object v3, v6

    .line 115
    invoke-direct/range {v2 .. v14}, Lbx/w;-><init>(Lcom/transsion/ad/view/ScrollDetectFrameLayout;Lcom/transsion/wrapperad/view/BiddingFloatingIrregularAnimationView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ad/view/ScrollDetectFrameLayout;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsnet/downloader/lottery/LotteryTipView;Lcom/transsion/wrapperad/view/DownloadTopIrregularView;Lcom/tn/lib/widget/TnTextView;Lcom/transsion/baseui/widget/GradientTextView;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 116
    .line 117
    .line 118
    return-object p0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    .line 128
    .line 129
    const-string v1, "Missing required view with ID: "

    .line 130
    .line 131
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v0
.end method

.method public static c(Landroid/view/LayoutInflater;)Lbx/w;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v0, v1}, Lbx/w;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbx/w;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbx/w;
    .locals 2

    .line 1
    sget v0, Lcom/transsnet/downloader/R$layout;->fragment_download_main:I

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
    invoke-static {p0}, Lbx/w;->a(Landroid/view/View;)Lbx/w;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public b()Lcom/transsion/ad/view/ScrollDetectFrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lbx/w;->a:Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbx/w;->b()Lcom/transsion/ad/view/ScrollDetectFrameLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
