.class public Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->num:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d / %d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-ltz p4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO0O0:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/NickNameInput;->OppO0O0:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
