.class public final Le8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroid/view/View$OnAttachStateChangeListener;

.field public c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public d:Le8$a;

.field public e:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "textView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le8;->a:Landroid/widget/TextView;

    return-void
.end method

.method public static final synthetic a(Le8;)V
    .locals 0

    invoke-virtual {p0}, Le8;->h()V

    return-void
.end method

.method public static final synthetic b(Le8;)Le8$a;
    .locals 0

    iget-object p0, p0, Le8;->d:Le8$a;

    return-object p0
.end method

.method public static final synthetic c(Le8;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Le8;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic d(Le8;)Z
    .locals 0

    iget-boolean p0, p0, Le8;->e:Z

    return p0
.end method

.method public static final synthetic e(Le8;)V
    .locals 0

    invoke-virtual {p0}, Le8;->k()V

    return-void
.end method

.method public static final synthetic f(Le8;Z)V
    .locals 0

    iput-boolean p1, p0, Le8;->e:Z

    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    iget-object v0, p0, Le8;->b:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le8$b;

    invoke-direct {v0, p0}, Le8$b;-><init>(Le8;)V

    iget-object v1, p0, Le8;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iput-object v0, p0, Le8;->b:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Le8;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Le8$c;

    invoke-direct {v0, p0}, Le8$c;-><init>(Le8;)V

    iget-object v1, p0, Le8;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    const-string v2, "textView.viewTreeObserver"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v0, p0, Le8;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public final i(Le8$a;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le8;->d:Le8$a;

    invoke-static {v0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Le8;->d:Le8$a;

    iget-object p1, p0, Le8;->a:Landroid/widget/TextView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Le8;->h()V

    :cond_1
    invoke-virtual {p0}, Le8;->g()V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Le8;->b:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le8;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Le8;->b:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Le8;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le8;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    const-string v2, "textView.viewTreeObserver"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Le8;->c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method public final l()V
    .locals 0

    invoke-virtual {p0}, Le8;->j()V

    invoke-virtual {p0}, Le8;->k()V

    return-void
.end method
