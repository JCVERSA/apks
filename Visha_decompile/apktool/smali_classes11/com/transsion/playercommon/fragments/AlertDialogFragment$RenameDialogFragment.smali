.class public Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;
.super Lcom/transsion/playercommon/fragments/AlertDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/playercommon/fragments/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;
    }
.end annotation


# instance fields
.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;

.field public w:Lcom/transsion/widgetslib/dialog/InputDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic E(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->L(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic F(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;Landroid/widget/EditText;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->K(Landroid/widget/EditText;)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->v:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;

    return-object p0
.end method

.method public static bridge synthetic H(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->u:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic I(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->J(Z)V

    return-void
.end method


# virtual methods
.method public final J(Z)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v0, :cond_4

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->o(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->s:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->u:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->u:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, ".*[/\\\\:*?\"<>|\t].*"

    if-lez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, ".."

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_3

    sget p0, Lcom/transsion/playercommon/R$string;->invalid_char_prompt:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final synthetic K(Landroid/widget/EditText;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    new-instance v0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$c;

    invoke-direct {v0, p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$c;-><init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final synthetic L(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public M(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->v:Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$d;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "default_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->s:Ljava/lang/String;

    const-string v0, "default_hint"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->t:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->u:Ljava/lang/String;

    :cond_1
    new-instance p1, Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->s:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->t:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v1

    :cond_3
    new-instance v3, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$a;

    invoke-direct {v3, p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$a;-><init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)V

    const/16 v4, 0x3d

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILcom/transsion/widgetslib/dialog/InputDialog$f;)Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    sget v0, Lcom/transsion/playercommon/R$string;->rename:I

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->A(I)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->s:Ljava/lang/String;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    iget-object v2, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->t:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    new-instance v2, Lla;

    invoke-direct {v2, p0}, Lla;-><init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/widgetslib/dialog/InputDialog;->u(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/transsion/widgetslib/dialog/InputDialog$e;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$string;->Save:I

    new-instance v1, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$b;

    invoke-direct {v1, p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment$b;-><init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->s(ILcom/transsion/widgetslib/dialog/InputDialog$g;)Lcom/transsion/widgetslib/dialog/InputDialog;

    move-result-object p1

    sget v0, Lcom/transsion/playercommon/R$string;->cancel:I

    new-instance v1, Lma;

    invoke-direct {v1, p0}, Lma;-><init>(Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->x(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object p1, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->z(Z)Lcom/transsion/widgetslib/dialog/InputDialog;

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/InputDialog;->m()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    invoke-static {}, Lcom/transsion/utils/a;->A()Z

    move-result p1

    if-eqz p1, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x51

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-object p0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->onResume()V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->J(Z)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->w:Lcom/transsion/widgetslib/dialog/InputDialog;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STORE_STRING"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_name"

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "default_hint"

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/AlertDialogFragment$RenameDialogFragment;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/transsion/playercommon/fragments/AlertDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
