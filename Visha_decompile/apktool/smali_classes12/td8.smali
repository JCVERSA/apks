.class public Ltd8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd8$d;,
        Ltd8$b;,
        Ltd8$c;
    }
.end annotation


# instance fields
.field public final a:Ltd8$d;

.field public b:Ltd8$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ltd8$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltd8$d;-><init>(Lud8;)V

    iput-object v0, p0, Ltd8;->a:Ltd8$d;

    invoke-static {}, Ld22;->d()Ld22;

    move-result-object v0

    iput-object v0, p0, Ltd8;->b:Ltd8$b;

    return-void
.end method

.method public static bridge synthetic a(Ltd8;)Ltd8$d;
    .locals 0

    iget-object p0, p0, Ltd8;->a:Ltd8$d;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Ltd8;->c(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/view/ViewGroup;II)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ltd8;->a:Ltd8$d;

    invoke-virtual {v0, p2}, Ltd8$d;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ltd8;->h(Landroid/view/ViewGroup;II)V

    return-object v0

    :cond_0
    iget-object p0, p0, Ltd8;->b:Ltd8$b;

    invoke-interface {p0, p1, p2}, Ltd8$b;->b(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final d(Landroid/view/ViewGroup;I)V
    .locals 2

    iget-object v0, p0, Ltd8;->b:Ltd8$b;

    new-instance v1, Ltd8$a;

    invoke-direct {v1, p0}, Ltd8$a;-><init>(Ltd8;)V

    invoke-interface {v0, p1, p2, v1}, Ltd8$b;->a(Landroid/view/ViewGroup;ILtd8$c;)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ltd8;->f(Landroid/view/ViewGroup;III)V

    return-void
.end method

.method public f(Landroid/view/ViewGroup;III)V
    .locals 1

    iget-object v0, p0, Ltd8;->a:Ltd8$d;

    invoke-virtual {v0, p2}, Ltd8$d;->d(I)I

    move-result v0

    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, v0

    if-lez p4, :cond_1

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    invoke-virtual {p0, p1, p2}, Ltd8;->d(Landroid/view/ViewGroup;I)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public g(Landroid/view/ViewGroup;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, p2, v0}, Ltd8;->h(Landroid/view/ViewGroup;II)V

    return-void
.end method

.method public h(Landroid/view/ViewGroup;II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Ltd8;->f(Landroid/view/ViewGroup;III)V

    return-void
.end method

.method public i(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Ltd8;->a:Ltd8$d;

    invoke-virtual {p0, p1}, Ltd8$d;->a(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
