.class public Lcom/transsion/xuanniao/account/center/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/center/view/p$b;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p3, p3, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {p3, p1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setText(Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "+"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "-"

    const-string p3, " "

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p3, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p3, p3, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Ljn7;->d:Ljava/lang/String;

    iget-object p3, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object v0, p3, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p3, p3, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {p3}, Ljn7;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string p1, "[[\\s-:punct:]]"

    const-string p3, ""

    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p2, p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/b;->a:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
