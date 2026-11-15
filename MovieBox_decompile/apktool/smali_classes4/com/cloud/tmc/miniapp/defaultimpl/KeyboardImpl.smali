.class public final Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO00o;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO00o;


# instance fields
.field public OooO00o:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

.field public OooO0O0:I

.field public OooO0OO:Z

.field public final OooO0Oo:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->Companion:Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    new-instance v2, Lcom/cloud/tmc/miniapp/defaultimpl/f;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/f;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO0Oo:Landroid/os/Handler;

    .line 25
    .line 26
    return-void
.end method

.method public static final OooO00o(Landroid/view/View;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;Landroid/os/Message;)Z
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO00o:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardAnimEnd()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO00o:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    if-eqz p0, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardHeightChange(I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO00o:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;->onKeyBoardAnimStart()V

    :cond_3
    :goto_0
    return v1
.end method

.method public static final OooO0O0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "input_method"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public static final OooO0OO(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "input_method"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of v0, p0, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    if-eqz p0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public static final synthetic access$getHandler$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO0Oo:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLastHeight$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO0O0:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$isStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO0OO:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$setLastHeight$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO0O0:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setStarted$p(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO0OO:Z

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public hideKeyboard(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/c;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/c;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public initKeyBoardChange(Landroid/view/View;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;

    .line 4
    .line 5
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-instance v3, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl$OooO0O0;-><init>(Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/defaultimpl/OooO;-><init>(IILcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public releaseKeyBoardChange(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/core/view/WindowInsetsAnimationCompat$Callback;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO0Oo:Landroid/os/Handler;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setKeyBoardListener(Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/KeyboardImpl;->OooO00o:Lcom/cloud/tmc/integration/proxy/OnKeyboardListener;

    .line 2
    .line 3
    return-void
.end method

.method public showKeyboard(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/e;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/e;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public toggleSoftInput(Landroid/view/View;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/cloud/tmc/miniapp/defaultimpl/d;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Lcom/cloud/tmc/miniapp/defaultimpl/d;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
