.class public final Llm/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Lcom/noober/background/view/BLLinearLayout;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroidx/appcompat/widget/LinearLayoutCompat;

.field public final d:Lcom/tn/lib/view/MaxHeightNestedScrollView;

.field public final e:Lcom/noober/background/view/BLTextView;

.field public final f:Lcom/noober/background/view/BLTextView;

.field public final g:Landroidx/appcompat/widget/AppCompatTextView;

.field public final h:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Lcom/noober/background/view/BLLinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/tn/lib/view/MaxHeightNestedScrollView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llm/d;->a:Lcom/noober/background/view/BLLinearLayout;

    .line 5
    .line 6
    iput-object p2, p0, Llm/d;->b:Landroid/widget/ImageView;

    .line 7
    .line 8
    iput-object p3, p0, Llm/d;->c:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 9
    .line 10
    iput-object p4, p0, Llm/d;->d:Lcom/tn/lib/view/MaxHeightNestedScrollView;

    .line 11
    .line 12
    iput-object p5, p0, Llm/d;->e:Lcom/noober/background/view/BLTextView;

    .line 13
    .line 14
    iput-object p6, p0, Llm/d;->f:Lcom/noober/background/view/BLTextView;

    .line 15
    .line 16
    iput-object p7, p0, Llm/d;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 17
    .line 18
    iput-object p8, p0, Llm/d;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 19
    .line 20
    return-void
.end method

.method public static a(Landroid/view/View;)Llm/d;
    .locals 11

    .line 1
    sget v0, Lcom/transsion/moviedetail/R$id;->iv_select:I

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
    check-cast v4, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsion/moviedetail/R$id;->ll_select:I

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
    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sget v0, Lcom/transsion/moviedetail/R$id;->ns_tips:I

    .line 24
    .line 25
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    move-object v6, v1

    .line 30
    check-cast v6, Lcom/tn/lib/view/MaxHeightNestedScrollView;

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_back:I

    .line 35
    .line 36
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    move-object v7, v1

    .line 41
    check-cast v7, Lcom/noober/background/view/BLTextView;

    .line 42
    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_confirm:I

    .line 46
    .line 47
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v8, v1

    .line 52
    check-cast v8, Lcom/noober/background/view/BLTextView;

    .line 53
    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_tips:I

    .line 57
    .line 58
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    move-object v9, v1

    .line 63
    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    if-eqz v9, :cond_0

    .line 66
    .line 67
    sget v0, Lcom/transsion/moviedetail/R$id;->tv_title:I

    .line 68
    .line 69
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    move-object v10, v1

    .line 74
    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    .line 76
    if-eqz v10, :cond_0

    .line 77
    .line 78
    new-instance v0, Llm/d;

    .line 79
    .line 80
    move-object v3, p0

    .line 81
    check-cast v3, Lcom/noober/background/view/BLLinearLayout;

    .line 82
    .line 83
    move-object v2, v0

    .line 84
    invoke-direct/range {v2 .. v10}, Llm/d;-><init>(Lcom/noober/background/view/BLLinearLayout;Landroid/widget/ImageView;Landroidx/appcompat/widget/LinearLayoutCompat;Lcom/tn/lib/view/MaxHeightNestedScrollView;Lcom/noober/background/view/BLTextView;Lcom/noober/background/view/BLTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 85
    .line 86
    .line 87
    return-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance v0, Ljava/lang/NullPointerException;

    .line 97
    .line 98
    const-string v1, "Missing required view with ID: "

    .line 99
    .line 100
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw v0
.end method


# virtual methods
.method public b()Lcom/noober/background/view/BLLinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Llm/d;->a:Lcom/noober/background/view/BLLinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Llm/d;->b()Lcom/noober/background/view/BLLinearLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
