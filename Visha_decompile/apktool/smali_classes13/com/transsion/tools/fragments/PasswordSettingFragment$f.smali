.class public Lcom/transsion/tools/fragments/PasswordSettingFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PasswordSettingFragment;->W(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PasswordSettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$f;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$f;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->R(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$f;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Lr0a;->g(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$f;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$f;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->Q(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

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
