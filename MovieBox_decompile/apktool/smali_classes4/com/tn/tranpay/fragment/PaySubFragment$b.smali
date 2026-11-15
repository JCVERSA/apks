.class public final Lcom/tn/tranpay/fragment/PaySubFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/PaySubFragment;->g0(Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Ljava/lang/String;)Lcom/tn/tranpay/fragment/PaySubFragment$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/AppCompatImageView;

.field final synthetic b:Lcom/tn/tranpay/fragment/PaySubFragment;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatImageView;Lcom/tn/tranpay/fragment/PaySubFragment;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->b:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->b:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->c:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {v0, v1, p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->f0(Lcom/tn/tranpay/fragment/PaySubFragment;Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/16 p1, 0x8

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->b:Lcom/tn/tranpay/fragment/PaySubFragment;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/tn/tranpay/fragment/PaySubFragment;->e0(Lcom/tn/tranpay/fragment/PaySubFragment;)V

    .line 27
    .line 28
    .line 29
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
    iget-object p2, p0, Lcom/tn/tranpay/fragment/PaySubFragment$b;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 15
    .line 16
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
