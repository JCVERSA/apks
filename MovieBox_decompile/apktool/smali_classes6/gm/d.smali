.class public final Lgm/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Lcom/transsion/baseui/widget/GradientBorderView;

.field public final b:Lcom/transsion/baseui/widget/GradientBorderView;

.field public final c:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final d:Landroidx/appcompat/widget/AppCompatTextView;

.field public final e:Landroid/widget/ImageView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/ImageView;

.field public final h:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/transsion/baseui/widget/GradientBorderView;Lcom/transsion/baseui/widget/GradientBorderView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgm/d;->a:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 5
    .line 6
    iput-object p2, p0, Lgm/d;->b:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 7
    .line 8
    iput-object p3, p0, Lgm/d;->c:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 9
    .line 10
    iput-object p4, p0, Lgm/d;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 11
    .line 12
    iput-object p5, p0, Lgm/d;->e:Landroid/widget/ImageView;

    .line 13
    .line 14
    iput-object p6, p0, Lgm/d;->f:Landroid/widget/TextView;

    .line 15
    .line 16
    iput-object p7, p0, Lgm/d;->g:Landroid/widget/ImageView;

    .line 17
    .line 18
    iput-object p8, p0, Lgm/d;->h:Landroid/widget/TextView;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroid/view/View;)Lgm/d;
    .locals 9

    .line 1
    move-object v2, p0

    .line 2
    check-cast v2, Lcom/transsion/baseui/widget/GradientBorderView;

    .line 3
    .line 4
    sget v0, Lcom/transsion/member/R$id;->explore:I

    .line 5
    .line 6
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    move-object v3, v1

    .line 11
    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    sget v0, Lcom/transsion/member/R$id;->explore_title:I

    .line 16
    .line 17
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    move-object v4, v1

    .line 22
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    sget v0, Lcom/transsion/member/R$id;->iv_close:I

    .line 27
    .line 28
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v5, v1

    .line 33
    check-cast v5, Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    sget v0, Lcom/transsion/member/R$id;->iv_detail:I

    .line 38
    .line 39
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    move-object v6, v1

    .line 44
    check-cast v6, Landroid/widget/TextView;

    .line 45
    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    sget v0, Lcom/transsion/member/R$id;->iv_premium_mask:I

    .line 49
    .line 50
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    move-object v7, v1

    .line 55
    check-cast v7, Landroid/widget/ImageView;

    .line 56
    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    sget v0, Lcom/transsion/member/R$id;->iv_title:I

    .line 60
    .line 61
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    move-object v8, v1

    .line 66
    check-cast v8, Landroid/widget/TextView;

    .line 67
    .line 68
    if-eqz v8, :cond_0

    .line 69
    .line 70
    new-instance p0, Lgm/d;

    .line 71
    .line 72
    move-object v0, p0

    .line 73
    move-object v1, v2

    .line 74
    invoke-direct/range {v0 .. v8}, Lgm/d;-><init>(Lcom/transsion/baseui/widget/GradientBorderView;Lcom/transsion/baseui/widget/GradientBorderView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 75
    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    .line 87
    .line 88
    const-string v1, "Missing required view with ID: "

    .line 89
    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw v0
.end method


# virtual methods
.method public b()Lcom/transsion/baseui/widget/GradientBorderView;
    .locals 1

    .line 1
    iget-object v0, p0, Lgm/d;->a:Lcom/transsion/baseui/widget/GradientBorderView;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgm/d;->b()Lcom/transsion/baseui/widget/GradientBorderView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
