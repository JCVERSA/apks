.class public final Lqr/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lf4/a;


# instance fields
.field private final a:Landroid/view/View;

.field public final b:Lcom/transsion/shorttv_pugc/base/widget/HorizontalRecyclerview2;

.field public final c:Landroidx/appcompat/widget/AppCompatTextView;

.field public final d:Lcom/transsion/shorttv_pugc/base/widget/TnTextView;

.field public final e:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/transsion/shorttv_pugc/base/widget/HorizontalRecyclerview2;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/shorttv_pugc/base/widget/TnTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqr/g;->a:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lqr/g;->b:Lcom/transsion/shorttv_pugc/base/widget/HorizontalRecyclerview2;

    .line 7
    .line 8
    iput-object p3, p0, Lqr/g;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    iput-object p4, p0, Lqr/g;->d:Lcom/transsion/shorttv_pugc/base/widget/TnTextView;

    .line 11
    .line 12
    iput-object p5, p0, Lqr/g;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 13
    .line 14
    return-void
.end method

.method public static a(Landroid/view/View;)Lqr/g;
    .locals 8

    .line 1
    sget v0, Lcom/transsion/shorttv/R$id;->recycler_view:I

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
    check-cast v4, Lcom/transsion/shorttv_pugc/base/widget/HorizontalRecyclerview2;

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    sget v0, Lcom/transsion/shorttv/R$id;->tv_title:I

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
    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    sget v0, Lcom/transsion/shorttv/R$id;->tv_title_trending:I

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
    check-cast v6, Lcom/transsion/shorttv_pugc/base/widget/TnTextView;

    .line 31
    .line 32
    if-eqz v6, :cond_0

    .line 33
    .line 34
    sget v0, Lcom/transsion/shorttv/R$id;->tv_view_all:I

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
    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    .line 42
    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    new-instance v0, Lqr/g;

    .line 46
    .line 47
    move-object v2, v0

    .line 48
    move-object v3, p0

    .line 49
    invoke-direct/range {v2 .. v7}, Lqr/g;-><init>(Landroid/view/View;Lcom/transsion/shorttv_pugc/base/widget/HorizontalRecyclerview2;Landroidx/appcompat/widget/AppCompatTextView;Lcom/transsion/shorttv_pugc/base/widget/TnTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    .line 62
    .line 63
    const-string v1, "Missing required view with ID: "

    .line 64
    .line 65
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lqr/g;->a:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method
