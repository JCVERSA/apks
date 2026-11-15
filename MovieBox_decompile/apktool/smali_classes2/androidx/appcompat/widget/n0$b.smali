.class Landroidx/appcompat/widget/n0$b;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/n0;->e(IJ)Landroidx/core/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:I

.field final synthetic c:Landroidx/appcompat/widget/n0;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/n0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/n0$b;->c:Landroidx/appcompat/widget/n0;

    .line 2
    .line 3
    iput p2, p0, Landroidx/appcompat/widget/n0$b;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Landroidx/appcompat/widget/n0$b;->a:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/n0$b;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/appcompat/widget/n0$b;->a:Z

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/appcompat/widget/n0$b;->c:Landroidx/appcompat/widget/n0;

    .line 6
    .line 7
    iget-object p1, p1, Landroidx/appcompat/widget/n0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 8
    .line 9
    iget v0, p0, Landroidx/appcompat/widget/n0$b;->b:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/n0$b;->c:Landroidx/appcompat/widget/n0;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/appcompat/widget/n0;->a:Landroidx/appcompat/widget/Toolbar;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
