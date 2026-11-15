.class public final Lcom/transsnet/login/phone/LoginSetPwdActivity$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/phone/LoginSetPwdActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/login/phone/LoginSetPwdActivity;


# direct methods
.method public constructor <init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->m0(Lcom/transsnet/login/phone/LoginSetPwdActivity;)Lmx/k;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p1, Lmx/k;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    :cond_0
    const-string p1, ""

    .line 36
    .line 37
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/16 v0, 0x8

    .line 49
    .line 50
    if-ne p1, v0, :cond_3

    .line 51
    .line 52
    :goto_0
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity$a;->a:Lcom/transsnet/login/phone/LoginSetPwdActivity;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->m0(Lcom/transsnet/login/phone/LoginSetPwdActivity;)Lmx/k;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p1, Lmx/k;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
