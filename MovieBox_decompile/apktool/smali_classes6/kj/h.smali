.class public final Lkj/h;
.super Landroidx/appcompat/app/w;
.source "source.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

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
    sget v0, Lcom/transsion/baseui/R$style;->BaseTranslucentDialogStyle:I

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/w;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkj/h;->a:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/w;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkj/h;->a:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/transsion/baseui/R$layout;->base_dialog_loading:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/w;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/transsion/baseui/R$id;->fl:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Landroid/widget/FrameLayout;

    .line 16
    .line 17
    sget p1, Lcom/transsion/baseui/R$id;->load_view:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/w;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/widget/ProgressBar;

    .line 24
    .line 25
    iput-object p1, p0, Lkj/h;->a:Landroid/widget/ProgressBar;

    .line 26
    .line 27
    sget-object p1, Lcom/transsion/baseui/util/a;->a:Lcom/transsion/baseui/util/a;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "getContext(...)"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/high16 v2, 0x41e00000    # 28.0f

    .line 39
    .line 40
    invoke-virtual {p1, v0, v2}, Lcom/transsion/baseui/util/a;->a(Landroid/content/Context;F)F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    float-to-int v0, v0

    .line 45
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 46
    .line 47
    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    const/16 v0, 0x31

    .line 51
    .line 52
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    .line 54
    invoke-static {}, Lcom/blankj/utilcode/util/y;->a()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v3, 0x2

    .line 59
    div-int/2addr v0, v3

    .line 60
    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    sub-int/2addr v0, v4

    .line 65
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/high16 v1, 0x42580000    # 54.0f

    .line 73
    .line 74
    invoke-virtual {p1, v4, v1}, Lcom/transsion/baseui/util/a;->a(Landroid/content/Context;F)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    float-to-int p1, p1

    .line 79
    sub-int/2addr v0, p1

    .line 80
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_0

    .line 87
    .line 88
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    const/16 v0, 0x11

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 103
    .line 104
    .line 105
    sget v0, Lcom/transsion/baseui/R$color;->base_transparent:I

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 126
    .line 127
    invoke-static {}, Lcom/blankj/utilcode/util/y;->a()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 132
    .line 133
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lkj/h;->a:Landroid/widget/ProgressBar;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
