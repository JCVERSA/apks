.class public final Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;
.super Lxy/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lxy/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->w0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    array-length v0, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lxy/c;
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v0

    .line 24
    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    move-object v0, p1

    .line 29
    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .line 31
    :cond_1
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_3
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 53
    .line 54
    new-instance v0, Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 57
    .line 58
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string v2, "requireContext(...)"

    .line 63
    .line 64
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    .line 74
    .line 75
    .line 76
    const/high16 v2, 0x40400000    # 3.0f

    .line 77
    .line 78
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    int-to-float v2, v2

    .line 83
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    .line 84
    .line 85
    .line 86
    const/high16 v2, 0x41c00000    # 24.0f

    .line 87
    .line 88
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    int-to-float v2, v2

    .line 93
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    .line 94
    .line 95
    .line 96
    const/high16 v2, 0x3f800000    # 1.0f

    .line 97
    .line 98
    invoke-static {v2}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    int-to-float v2, v2

    .line 103
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    .line 104
    .line 105
    .line 106
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .line 107
    .line 108
    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    .line 112
    .line 113
    .line 114
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .line 115
    .line 116
    const/high16 v3, 0x40000000    # 2.0f

    .line 117
    .line 118
    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v2}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    sget v3, Lcom/tn/lib/widget/R$color;->brand_gradient_start:I

    .line 129
    .line 130
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    sget v4, Lcom/tn/lib/widget/R$color;->brand_gradient_center:I

    .line 139
    .line 140
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    sget v4, Lcom/tn/lib/widget/R$color;->brand_gradient_end:I

    .line 149
    .line 150
    invoke-static {v1, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {v0, v2, v3, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    .line 155
    .line 156
    .line 157
    invoke-static {p1, v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->y0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;Lcom/tn/lib/view/GradientLinePagerIndicator;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->r0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lcom/tn/lib/view/GradientLinePagerIndicator;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    return-object p1
.end method

.method public c(Landroid/content/Context;I)Lxy/d;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->x0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    aget-object p1, p1, p2

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->w0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    aget-object p2, v0, p2

    .line 38
    .line 39
    if-eqz p2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p2, ""

    .line 43
    .line 44
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    new-instance p1, Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v1, "requireContext(...)"

    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-direct {p1, v0}, Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->w0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    aget-object v1, v1, p2

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    new-instance v1, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b$a;

    .line 82
    .line 83
    invoke-direct {v1, v0, p2}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b$a;-><init>(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$b;->b:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->x0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    aput-object p1, v0, p2

    .line 98
    .line 99
    :cond_4
    return-object p1
.end method
