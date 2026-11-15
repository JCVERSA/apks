.class public final Lcom/yandex/div/core/view2/backbutton/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/backbutton/b$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public b:Lcom/yandex/div/core/view2/backbutton/b$a;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "mOwnerView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div/core/view2/backbutton/b;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/div/core/view2/backbutton/b;->b:Lcom/yandex/div/core/view2/backbutton/b$a;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yandex/div/core/view2/backbutton/b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/yandex/div/core/view2/backbutton/b;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/yandex/div/core/view2/backbutton/b;->b:Lcom/yandex/div/core/view2/backbutton/b$a;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/yandex/div/core/view2/backbutton/b$a;->a()Z

    move-result p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final b()V
    .locals 0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/backbutton/b;->d()V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/backbutton/b;->d()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/div/core/view2/backbutton/b;->b:Lcom/yandex/div/core/view2/backbutton/b$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/div/core/view2/backbutton/b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/div/core/view2/backbutton/b;->a:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Landroid/view/View;->requestFocus(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final setOnBackClickListener(Lcom/yandex/div/core/view2/backbutton/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/div/core/view2/backbutton/b;->b:Lcom/yandex/div/core/view2/backbutton/b$a;

    invoke-virtual {p0}, Lcom/yandex/div/core/view2/backbutton/b;->d()V

    return-void
.end method
