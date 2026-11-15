.class public Lcom/transsion/playercommon/fragments/AlertDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;,
        Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;,
        Lcom/transsion/playercommon/fragments/AlertDialogFragment$PlayListDialogFragment;,
        Lcom/transsion/playercommon/fragments/AlertDialogFragment$ChoiceDialogFragment;,
        Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;,
        Lcom/transsion/playercommon/fragments/AlertDialogFragment$e;,
        Lcom/transsion/playercommon/fragments/AlertDialogFragment$b;
    }
.end annotation


# static fields
.field public static r:Z = false


# instance fields
.field public l:Landroid/content/DialogInterface$OnClickListener;

.field public m:Landroid/content/DialogInterface$OnDismissListener;

.field public n:Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;

.field public o:Z

.field public p:I

.field public q:Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->m:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->o:Z

    return-void
.end method

.method public static synthetic D(ZLandroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic u(ZLandroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->D(ZLandroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic v(Z)V
    .locals 0

    sput-boolean p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->r:Z

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->l:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->p:I

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->p:I

    :cond_0
    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->w(Landroid/os/Bundle;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->a()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    :cond_2
    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->m:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->n:Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;->onDialogDismiss()V

    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->q:Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;->a()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->m:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnDialogDismissListener(Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->n:Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;

    return-void
.end method

.method public setOnDoneListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->l:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public setOnResumeListener(Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->q:Lcom/transsion/playercommon/fragments/AlertDialogFragment$d;

    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->n:Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->n:Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;

    invoke-interface {p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$c;->onDialogDismiss()V

    :cond_0
    :goto_0
    return-void
.end method

.method public w(Landroid/os/Bundle;)Lcom/transsion/widgetslib/dialog/d$a;
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_8

    const-string v2, "dialog_style"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_1

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    :cond_1
    const-string v0, "title"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_2

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->A(I)Lcom/transsion/widgetslib/dialog/d$a;

    :cond_2
    const-string v0, "message"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "layout"

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->E(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/d$a;

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_4

    invoke-virtual {v1, v0}, Lcom/transsion/widgetslib/dialog/d$a;->j(I)Lcom/transsion/widgetslib/dialog/d$a;

    :cond_4
    :goto_0
    const-string v0, "negativeTitle"

    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_5

    new-instance v2, Lcom/transsion/playercommon/fragments/AlertDialogFragment$a;

    invoke-direct {v2, p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$a;-><init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->m(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    :cond_5
    const-string v0, "DIALOG_TYPE_DELETE"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "positiveTitle"

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_6

    invoke-virtual {v1, v2, v0, p0}, Lcom/transsion/widgetslib/dialog/d$a;->v(IZLandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    :cond_6
    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iput-boolean v2, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->o:Z

    :cond_7
    const-string p0, "canceledOnTouchOutside"

    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    const-string p0, "cancelable"

    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    const-string p0, "canceledBackCode"

    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    new-instance p1, Lka;

    invoke-direct {p1, p0}, Lka;-><init>(Z)V

    invoke-virtual {v1, p1}, Lcom/transsion/widgetslib/dialog/d$a;->t(Landroid/content/DialogInterface$OnKeyListener;)Lcom/transsion/widgetslib/dialog/d$a;

    :cond_8
    return-object v1
.end method
