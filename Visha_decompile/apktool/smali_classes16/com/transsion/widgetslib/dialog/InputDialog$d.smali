.class public Lcom/transsion/widgetslib/dialog/InputDialog$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/InputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public b:Ljava/lang/ref/WeakReference;

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/dialog/InputDialog;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->f:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->b:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->c:I

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->g(Lcom/transsion/widgetslib/dialog/InputDialog;)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->e:I

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->b(Lcom/transsion/widgetslib/dialog/InputDialog;)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->d:I

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/InputDialog;->d(Lcom/transsion/widgetslib/dialog/InputDialog;)Lcom/transsion/widgetslib/widget/editext/ExtendedEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/dialog/InputDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->o(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getNeedEmptyUnable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/InputDialog;->o(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->h(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->h(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->c:I

    const-string v4, "/"

    const-string v5, "%d"

    if-ge v1, v2, :cond_3

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->h(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->h(Lcom/transsion/widgetslib/dialog/InputDialog;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmOSMaterialEditText()Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->j(Lcom/transsion/widgetslib/dialog/InputDialog;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->f:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/InputDialog;->getmOSMaterialEditText()Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;->setError(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/editext/OSMaterialEditText;

    invoke-virtual {v0, v3}, Lcom/transsion/widgetslib/dialog/InputDialog;->setOSMaterialEditTextError(Z)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/InputDialog$d;->f:Ljava/lang/String;

    :cond_6
    :goto_2
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
