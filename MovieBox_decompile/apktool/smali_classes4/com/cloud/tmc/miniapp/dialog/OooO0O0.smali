.class public Lcom/cloud/tmc/miniapp/dialog/OooO0O0;
.super Landroidx/appcompat/app/w;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/action/ActivityAction;
.implements Lcom/cloud/tmc/miniapp/action/ResourcesAction;
.implements Lcom/cloud/tmc/miniapp/action/HandlerAction;
.implements Lcom/cloud/tmc/miniapp/action/ClickAction;
.implements Lcom/cloud/tmc/miniapp/action/AnimAction;
.implements Lcom/cloud/tmc/miniapp/action/KeyboardAction;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0O0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0OO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0o;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOOO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o000oOoO;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o0OoOo0;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00O0O;,
        Lcom/cloud/tmc/miniapp/dialog/OooO0O0$o00Oo0;
    }
.end annotation


# instance fields
.field public final OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0O0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0OO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0Oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/w;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;-><init>(Landroid/content/DialogInterface$OnShowListener;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    .line 15
    .line 16
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 12
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    return-void
.end method

.method public static final OooO0O0(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    .line 2
    .line 3
    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public static final OooO0OO(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    .line 2
    .line 3
    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public OooO00o(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_0
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0;-><init>(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 11
    .line 12
    invoke-static {p0, v1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getSystemService(Lcom/cloud/tmc/miniapp/action/ResourcesAction;Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/w;->dismiss()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ActivityAction$DefaultImpls;->getActivity(Lcom/cloud/tmc/miniapp/action/ActivityAction;)Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getColor(I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getColor(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getDrawable(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->getHandler(Lcom/cloud/tmc/miniapp/action/HandlerAction;)Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getResources(Lcom/cloud/tmc/miniapp/action/ResourcesAction;)Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getString(Lcom/cloud/tmc/miniapp/action/ResourcesAction;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)TS;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ResourcesAction$DefaultImpls;->getSystemService(Lcom/cloud/tmc/miniapp/action/ResourcesAction;Ljava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public hideKeyboard(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->hideKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOOO0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->onClick(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/w;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0Oo:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;->onDismiss(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0O0:Ljava/util/List;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v2, p0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;->onShow(Lcom/cloud/tmc/miniapp/dialog/OooO0O0;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/q;->onStart()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/w;->onStop()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->post(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public postAtTime(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postAtTime(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public postDelayed(Ljava/lang/Object;JLjava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;JLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->postDelayed(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public removeCallbacks()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacks(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/HandlerAction$DefaultImpls;->removeCallbacksAndMessages(Lcom/cloud/tmc/miniapp/action/HandlerAction;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0O0;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0O0;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    .line 10
    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    new-instance p1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOO0O;

    .line 21
    .line 22
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO0OO:Ljava/util/List;

    .line 26
    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[I)V

    return-void
.end method

.method public varargs setOnClickListener(Landroid/view/View$OnClickListener;[Landroid/view/View;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;Landroid/view/View$OnClickListener;[Landroid/view/View;)V

    return-void
.end method

.method public varargs setOnClickListener([I)V
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[I)V

    return-void
.end method

.method public varargs setOnClickListener([Landroid/view/View;)V
    .locals 0

    .line 4
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/ClickAction$DefaultImpls;->setOnClickListener(Lcom/cloud/tmc/miniapp/action/ClickAction;[Landroid/view/View;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0o;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO0o;-><init>(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooOo00;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo0;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo0;-><init>(Landroid/content/DialogInterface$OnShowListener;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0;->OooO00o(Lcom/cloud/tmc/miniapp/dialog/OooO0O0$Oooo000;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->showKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public toggleSoftInput(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;->toggleSoftInput(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
