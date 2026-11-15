.class public final Lcom/cloud/hisavana/sdk/common/util/v;
.super Landroid/app/Dialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/util/v$a;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/common/util/v$a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cloud/hisavana/sdk/common/util/v$a;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Lcom/cloud/hisavana/sdk/R$style;->HSDialogTheme:I

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->a:Lcom/cloud/hisavana/sdk/common/util/v$a;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget p2, Lcom/cloud/hisavana/sdk/R$layout;->hs_confirm_dialog_layout:I

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 29
    .line 30
    .line 31
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->title:I

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/widget/TextView;

    .line 38
    .line 39
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->b:Landroid/widget/TextView;

    .line 40
    .line 41
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->content:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->positive:I

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->d:Landroid/widget/TextView;

    .line 60
    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/s;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/s;-><init>(Lcom/cloud/hisavana/sdk/common/util/v;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->negative:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->e:Landroid/widget/TextView;

    .line 80
    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    new-instance v0, Lcom/cloud/hisavana/sdk/common/util/t;

    .line 84
    .line 85
    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/common/util/t;-><init>(Lcom/cloud/hisavana/sdk/common/util/v;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    :cond_1
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->separator_v:I

    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/common/util/v;->g:Landroid/view/View;

    .line 98
    .line 99
    sget p2, Lcom/cloud/hisavana/sdk/R$id;->confirm:I

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/TextView;

    .line 106
    .line 107
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/util/v;->f:Landroid/widget/TextView;

    .line 108
    .line 109
    if-eqz p1, :cond_2

    .line 110
    .line 111
    new-instance p2, Lcom/cloud/hisavana/sdk/common/util/u;

    .line 112
    .line 113
    invoke-direct {p2, p0}, Lcom/cloud/hisavana/sdk/common/util/u;-><init>(Lcom/cloud/hisavana/sdk/common/util/v;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/util/v;->l()V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->e(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->f(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/v;->d(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->a:Lcom/cloud/hisavana/sdk/common/util/v$a;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/cloud/hisavana/sdk/common/util/v$a;->b()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final e(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->a:Lcom/cloud/hisavana/sdk/common/util/v$a;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/cloud/hisavana/sdk/common/util/v$a;->a()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private static final f(Lcom/cloud/hisavana/sdk/common/util/v;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->a:Lcom/cloud/hisavana/sdk/common/util/v$a;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/cloud/hisavana/sdk/common/util/v$a;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->f:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "content"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->c:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "text"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->d:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final j(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    move v3, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move v3, v1

    .line 14
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    goto :goto_3

    .line 22
    :cond_2
    if-eqz p1, :cond_3

    .line 23
    .line 24
    move v3, v1

    .line 25
    goto :goto_2

    .line 26
    :cond_3
    move v3, v2

    .line 27
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->e:Landroid/widget/TextView;

    .line 31
    .line 32
    if-nez v0, :cond_4

    .line 33
    .line 34
    goto :goto_5

    .line 35
    :cond_4
    if-eqz p1, :cond_5

    .line 36
    .line 37
    move v3, v1

    .line 38
    goto :goto_4

    .line 39
    :cond_5
    move v3, v2

    .line 40
    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->g:Landroid/view/View;

    .line 44
    .line 45
    if-nez v0, :cond_6

    .line 46
    .line 47
    goto :goto_7

    .line 48
    :cond_6
    if-eqz p1, :cond_7

    .line 49
    .line 50
    goto :goto_6

    .line 51
    :cond_7
    move v1, v2

    .line 52
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    :goto_7
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/util/v;->b:Landroid/widget/TextView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const/high16 v0, 0x3f000000    # 0.5f

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const v0, 0x3f666666    # 0.9f

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 43
    .line 44
    int-to-float v2, v2

    .line 45
    mul-float/2addr v2, v0

    .line 46
    float-to-int v0, v2

    .line 47
    const/4 v2, -0x2

    .line 48
    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method
