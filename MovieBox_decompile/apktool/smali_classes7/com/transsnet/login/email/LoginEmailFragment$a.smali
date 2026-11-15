.class public final Lcom/transsnet/login/email/LoginEmailFragment$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/login/email/LoginEmailFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmx/b;


# direct methods
.method public constructor <init>(Lmx/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/login/email/LoginEmailFragment$a;->a:Lmx/b;

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
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    const-string v0, ""

    .line 10
    .line 11
    :cond_1
    invoke-static {v0}, Lcom/blankj/utilcode/util/u;->b(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailFragment$a;->a:Lmx/b;

    .line 18
    .line 19
    iget-object v0, v0, Lmx/b;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    const-string v1, "tvTips"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    const-string v0, "btnClear"

    .line 30
    .line 31
    if-eqz p1, :cond_4

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailFragment$a;->a:Lmx/b;

    .line 41
    .line 42
    iget-object p1, p1, Lmx/b;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailFragment$a;->a:Lmx/b;

    .line 52
    .line 53
    iget-object p1, p1, Lmx/b;->b:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    :goto_1
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
