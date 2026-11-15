.class public final Lcom/tn/tranpay/fragment/TranPayWebFragment$b;
.super Landroid/webkit/WebChromeClient;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/tranpay/fragment/TranPayWebFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/tranpay/fragment/TranPayWebFragment;


# direct methods
.method constructor <init>(Lcom/tn/tranpay/fragment/TranPayWebFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "title"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->k0(Lcom/tn/tranpay/fragment/TranPayWebFragment;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/tn/tranpay/fragment/TranPayWebFragment;->e0(Lcom/tn/tranpay/fragment/TranPayWebFragment;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    iget-object p2, p0, Lcom/tn/tranpay/fragment/TranPayWebFragment$b;->a:Lcom/tn/tranpay/fragment/TranPayWebFragment;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/tn/tranpay/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Lrg/c;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    iget-object p2, p2, Lrg/c;->i:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method
