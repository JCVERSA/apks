.class public Lcom/transsion/tools/fragments/EmailVerifyFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/EmailVerifyFragment;->c0(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/EmailVerifyFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$a;->b:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$a;->b:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->T(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment$a;->b:Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->R(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setEnabled(Z)V

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
