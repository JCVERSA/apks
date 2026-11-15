.class public Lcom/transsion/xuanniao/account/comm/widget/EmailInput$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/EmailInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/EmailInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$e;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$e;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    iget v1, v0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0pO:I

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    iget-object p1, v0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$e;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0Op()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput$e;->b:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0pO:I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
