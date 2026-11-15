.class public final Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/member/dialog/MemberPromoCodeDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;


# direct methods
.method constructor <init>(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

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
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lgm/h;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p1, Lgm/h;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lgm/h;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p1, Lgm/h;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const-string p2, "s"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    const-string p2, "s"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->A0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lgm/h;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lgm/h;->f:Landroidx/appcompat/widget/AppCompatEditText;

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lgm/h;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p1, Lgm/h;->c:Landroid/widget/ImageView;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/member/dialog/MemberPromoCodeDialog$b;->a:Lcom/transsion/member/dialog/MemberPromoCodeDialog;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/transsion/member/dialog/MemberPromoCodeDialog;->s0(Lcom/transsion/member/dialog/MemberPromoCodeDialog;)Lgm/h;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p1, p1, Lgm/h;->c:Landroid/widget/ImageView;

    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    return-void
.end method
