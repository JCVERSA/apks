.class Landroidx/appcompat/app/d0$b;
.super Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/d0;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/d0$b;->a:Landroidx/appcompat/app/d0;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/appcompat/app/d0$b;->a:Landroidx/appcompat/app/d0;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Landroidx/appcompat/app/d0;->y:Landroidx/appcompat/view/h;

    .line 5
    .line 6
    iget-object p1, p1, Landroidx/appcompat/app/d0;->e:Landroidx/appcompat/widget/ActionBarContainer;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
