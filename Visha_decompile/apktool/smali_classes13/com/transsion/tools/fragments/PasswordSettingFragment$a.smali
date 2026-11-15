.class public Lcom/transsion/tools/fragments/PasswordSettingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PasswordSettingFragment;->W(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/tools/fragments/PasswordSettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->c:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    iput-object p2, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->c:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->c:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->c:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->c:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->c:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;->c:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void
.end method
