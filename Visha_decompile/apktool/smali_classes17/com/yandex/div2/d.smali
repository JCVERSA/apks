.class public final Lcom/yandex/div2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/d;->b(Lex7;Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionCopyToClipboardContent;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionCopyToClipboardContent;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate$b;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivActionCopyToClipboardContent$b;

    iget-object p0, p0, Lcom/yandex/div2/d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfh1;

    check-cast p2, Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate$b;->c()Lcom/yandex/div2/ContentTextTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lfh1;->b(Lex7;Lcom/yandex/div2/ContentTextTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ContentText;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionCopyToClipboardContent$b;-><init>(Lcom/yandex/div2/ContentText;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate$c;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivActionCopyToClipboardContent$c;

    iget-object p0, p0, Lcom/yandex/div2/d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->x()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lih1;

    check-cast p2, Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivActionCopyToClipboardContentTemplate$c;->c()Lcom/yandex/div2/ContentUrlTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lih1;->b(Lex7;Lcom/yandex/div2/ContentUrlTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/ContentUrl;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivActionCopyToClipboardContent$c;-><init>(Lcom/yandex/div2/ContentUrl;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
