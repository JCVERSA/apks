.class public final Lrf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luf2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/div2/DivActionTyped;Lcom/yandex/div/core/view2/Div2View;Loj3;)Z
    .locals 0

    const-string p1, "action"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "resolver"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/yandex/div2/DivActionTyped$h;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/yandex/div2/DivActionTyped$h;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionTyped$h;->c()Lcom/yandex/div2/DivActionCopyToClipboard;

    move-result-object p1

    iget-object p1, p1, Lcom/yandex/div2/DivActionCopyToClipboard;->a:Lcom/yandex/div2/DivActionCopyToClipboardContent;

    invoke-virtual {p0, p1, p3, p4}, Lrf2;->e(Lcom/yandex/div2/DivActionCopyToClipboardContent;Lcom/yandex/div/core/view2/Div2View;Loj3;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(Lcom/yandex/div2/DivActionCopyToClipboardContent$b;Loj3;)Landroid/content/ClipData;
    .locals 1

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionCopyToClipboardContent$b;->c()Lcom/yandex/div2/ContentText;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/ContentText;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance p1, Landroid/content/ClipData;

    const-string p2, "text/plain"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    const-string p0, "Copied text"

    invoke-direct {p1, p0, p2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object p1
.end method

.method public final c(Lcom/yandex/div2/DivActionCopyToClipboardContent$c;Loj3;)Landroid/content/ClipData;
    .locals 1

    invoke-virtual {p1}, Lcom/yandex/div2/DivActionCopyToClipboardContent$c;->c()Lcom/yandex/div2/ContentUrl;

    move-result-object p0

    iget-object p0, p0, Lcom/yandex/div2/ContentUrl;->a:Lcom/yandex/div/json/expressions/Expression;

    invoke-virtual {p0, p2}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    new-instance p1, Landroid/content/ClipData;

    const-string p2, "text/uri-list"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/content/ClipData$Item;

    invoke-direct {v0, p0}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    const-string p0, "Copied url"

    invoke-direct {p1, p0, p2, v0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    return-object p1
.end method

.method public final d(Lcom/yandex/div2/DivActionCopyToClipboardContent;Loj3;)Landroid/content/ClipData;
    .locals 1

    instance-of v0, p1, Lcom/yandex/div2/DivActionCopyToClipboardContent$b;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/yandex/div2/DivActionCopyToClipboardContent$b;

    invoke-virtual {p0, p1, p2}, Lrf2;->b(Lcom/yandex/div2/DivActionCopyToClipboardContent$b;Loj3;)Landroid/content/ClipData;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/yandex/div2/DivActionCopyToClipboardContent$c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/yandex/div2/DivActionCopyToClipboardContent$c;

    invoke-virtual {p0, p1, p2}, Lrf2;->c(Lcom/yandex/div2/DivActionCopyToClipboardContent$c;Loj3;)Landroid/content/ClipData;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public final e(Lcom/yandex/div2/DivActionCopyToClipboardContent;Lcom/yandex/div/core/view2/Div2View;Loj3;)V
    .locals 1

    invoke-virtual {p2}, Lcom/yandex/div/core/view2/Div2View;->getContext$div_release()Lcom/yandex/div/core/Div2Context;

    move-result-object p2

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Lcom/yandex/div/core/Div2Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/content/ClipboardManager;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    const-string p0, "Failed to access clipboard manager!"

    invoke-static {p0}, Lxi;->i(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p3}, Lrf2;->d(Lcom/yandex/div2/DivActionCopyToClipboardContent;Loj3;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
