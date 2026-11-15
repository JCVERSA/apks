.class public final Lcom/cloud/tmc/miniapp/action/KeyboardAction$DefaultImpls;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/KeyboardAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static hideKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V
    .locals 0

    .line 1
    const-class p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->hideKeyboard(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static showKeyboard(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V
    .locals 0

    .line 1
    const-class p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->showKeyboard(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static toggleSoftInput(Lcom/cloud/tmc/miniapp/action/KeyboardAction;Landroid/view/View;)V
    .locals 0

    .line 1
    const-class p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/cloud/tmc/integration/proxy/IKeyboardProxy;->toggleSoftInput(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
