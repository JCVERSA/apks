.class public final Lgm/f;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/widget/LinearLayout;

.field public final b:Landroid/widget/CheckBox;

.field public final c:Lcom/transsion/member/view/GradientTextView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroidx/appcompat/widget/AppCompatImageView;

.field public final f:Lcom/transsion/member/view/CheckInView;

.field public final g:Landroid/widget/TextView;

.field public final h:Landroid/widget/TextView;

.field public final i:Lcom/transsion/member/view/GradientTextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/transsion/member/view/GradientTextView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/member/view/CheckInView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/member/view/GradientTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgm/f;->a:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lgm/f;->b:Landroid/widget/CheckBox;

    .line 7
    .line 8
    iput-object p3, p0, Lgm/f;->c:Lcom/transsion/member/view/GradientTextView;

    .line 9
    .line 10
    iput-object p4, p0, Lgm/f;->d:Landroid/widget/ImageView;

    .line 11
    .line 12
    iput-object p5, p0, Lgm/f;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 13
    .line 14
    iput-object p6, p0, Lgm/f;->f:Lcom/transsion/member/view/CheckInView;

    .line 15
    .line 16
    iput-object p7, p0, Lgm/f;->g:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p8, p0, Lgm/f;->h:Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object p9, p0, Lgm/f;->i:Lcom/transsion/member/view/GradientTextView;

    .line 21
    .line 22
    return-void
.end method

.method public static a(Landroid/view/View;)Lgm/f;
    .locals 12

    .line 1
    sget v0, Lcom/transsion/member/R$id;->dialog_ignore:I

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
    check-cast v4, Landroid/widget/CheckBox;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsion/member/R$id;->go_purchase_member:I

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
    check-cast v5, Lcom/transsion/member/view/GradientTextView;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sget v0, Lcom/transsion/member/R$id;->ic_tips:I

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
    check-cast v6, Landroid/widget/ImageView;

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    sget v0, Lcom/transsion/member/R$id;->ivClose:I

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
    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    .line 42
    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    sget v0, Lcom/transsion/member/R$id;->member_check_in_view:I

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
    check-cast v8, Lcom/transsion/member/view/CheckInView;

    .line 53
    .line 54
    if-eqz v8, :cond_0

    .line 55
    .line 56
    sget v0, Lcom/transsion/member/R$id;->member_tips:I

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
    check-cast v9, Landroid/widget/TextView;

    .line 64
    .line 65
    if-eqz v9, :cond_0

    .line 66
    .line 67
    sget v0, Lcom/transsion/member/R$id;->point_tips:I

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
    check-cast v10, Landroid/widget/TextView;

    .line 75
    .line 76
    if-eqz v10, :cond_0

    .line 77
    .line 78
    sget v0, Lcom/transsion/member/R$id;->title:I

    .line 79
    .line 80
    invoke-static {p0, v0}, Lf4/b;->a(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v11, v1

    .line 85
    check-cast v11, Lcom/transsion/member/view/GradientTextView;

    .line 86
    .line 87
    if-eqz v11, :cond_0

    .line 88
    .line 89
    new-instance v0, Lgm/f;

    .line 90
    .line 91
    move-object v3, p0

    .line 92
    check-cast v3, Landroid/widget/LinearLayout;

    .line 93
    .line 94
    move-object v2, v0

    .line 95
    invoke-direct/range {v2 .. v11}, Lgm/f;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Lcom/transsion/member/view/GradientTextView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/transsion/member/view/CheckInView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/transsion/member/view/GradientTextView;)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    .line 108
    .line 109
    const-string v1, "Missing required view with ID: "

    .line 110
    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0
.end method


# virtual methods
.method public b()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lgm/f;->a:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgm/f;->b()Landroid/widget/LinearLayout;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
