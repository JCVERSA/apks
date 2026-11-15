.class public abstract Lcom/transsion/rewardscenter/utils/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static synthetic a(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/rewardscenter/utils/f;->e(Landroid/app/AlertDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroid/app/AlertDialog;Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/rewardscenter/utils/f;->d(Landroid/app/AlertDialog;Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c(Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V
    .locals 6

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "topUpType"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lzo/a;->a()Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget v2, Lcom/transsion/rewardscenter/R$layout;->dialog_payment_required:I

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 44
    .line 45
    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 63
    .line 64
    invoke-direct {v5, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    sget v3, Lcom/transsion/rewardscenter/R$id;->btn_complete_now:I

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Landroid/widget/Button;

    .line 77
    .line 78
    new-instance v4, Lcom/transsion/rewardscenter/utils/d;

    .line 79
    .line 80
    invoke-direct {v4, v2, p0, p1, p2}, Lcom/transsion/rewardscenter/utils/d;-><init>(Landroid/app/AlertDialog;Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    sget p0, Lcom/transsion/rewardscenter/R$id;->iv_close:I

    .line 87
    .line 88
    invoke-virtual {v1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    check-cast p0, Landroid/widget/ImageButton;

    .line 93
    .line 94
    new-instance p1, Lcom/transsion/rewardscenter/utils/e;

    .line 95
    .line 96
    invoke-direct {p1, v2}, Lcom/transsion/rewardscenter/utils/e;-><init>(Landroid/app/AlertDialog;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    if-eqz p0, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 120
    .line 121
    int-to-double p1, p1

    .line 122
    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    mul-double/2addr p1, v0

    .line 128
    double-to-int p1, p1

    .line 129
    const/4 p2, -0x2

    .line 130
    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    .line 131
    .line 132
    .line 133
    :cond_3
    return-void
.end method

.method private static final d(Landroid/app/AlertDialog;Lzo/a;Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lzo/a;->a()Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3}, Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;->z1(Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static final e(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
