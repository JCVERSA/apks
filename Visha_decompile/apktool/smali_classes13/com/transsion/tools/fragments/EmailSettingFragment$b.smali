.class public Lcom/transsion/tools/fragments/EmailSettingFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/EmailSettingFragment;->X(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/EmailSettingFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/EmailSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$b;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$b;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->R(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment$b;->b:Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->Q(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/TextView;

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
