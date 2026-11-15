.class public Lcom/transsion/tools/fragments/PasswordSettingFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$e;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$e;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->P(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x6

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$e;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->Q(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment$e;->b:Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->Q(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/TextView;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->privacy_password_error_2:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
