.class public Lcom/transsion/tools/fragments/PrivacyPasswordFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$c;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$c;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->a0(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;I)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$c;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->T(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->V(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/fragments/PrivacyPasswordFragment$c;->b:Lcom/transsion/tools/fragments/PrivacyPasswordFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/tools/fragments/PrivacyPasswordFragment;->W(Lcom/transsion/tools/fragments/PrivacyPasswordFragment;Z)V

    :cond_1
    :goto_0
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
