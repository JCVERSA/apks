.class public final Lik/b;
.super Landroid/app/Dialog;
.source "source.java"


# instance fields
.field private a:Lhk/b;


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
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Lik/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lik/b;->b(Lik/b;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lik/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lhk/b;->c(Landroid/view/LayoutInflater;)Lhk/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lik/b;->a:Lhk/b;

    .line 13
    .line 14
    const-string v0, "viewBinding"

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move-object p1, v1

    .line 23
    :cond_0
    invoke-virtual {p1}, Lhk/b;->b()Landroid/widget/LinearLayout;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const/16 v3, 0x11

    .line 46
    .line 47
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 48
    .line 49
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/high16 v3, 0x428c0000    # 70.0f

    .line 60
    .line 61
    invoke-static {v3}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    sub-int/2addr v2, v3

    .line 66
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 67
    .line 68
    :cond_2
    const/high16 p1, 0x41000000    # 8.0f

    .line 69
    .line 70
    invoke-static {p1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    int-to-float p1, p1

    .line 75
    iget-object v2, p0, Lik/b;->a:Lhk/b;

    .line 76
    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    move-object v2, v1

    .line 83
    :cond_3
    invoke-virtual {v2}, Lhk/b;->b()Landroid/widget/LinearLayout;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v3, "getRoot(...)"

    .line 88
    .line 89
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v2, p1}, Ljk/a;->a(Landroid/view/View;F)V

    .line 93
    .line 94
    .line 95
    iget-object v2, p0, Lik/b;->a:Lhk/b;

    .line 96
    .line 97
    if-nez v2, :cond_4

    .line 98
    .line 99
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    move-object v2, v1

    .line 103
    :cond_4
    iget-object v2, v2, Lhk/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    .line 105
    const-string v3, "btnOk"

    .line 106
    .line 107
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v2, p1}, Ljk/a;->a(Landroid/view/View;F)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lik/b;->a:Lhk/b;

    .line 114
    .line 115
    if-nez p1, :cond_5

    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_5
    move-object v1, p1

    .line 122
    :goto_0
    iget-object p1, v1, Lhk/b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    new-instance v0, Lik/a;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lik/a;-><init>(Lik/b;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
