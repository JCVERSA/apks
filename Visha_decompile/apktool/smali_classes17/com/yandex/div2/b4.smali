.class public final Lcom/yandex/div2/b4;
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

    iput-object p1, p0, Lcom/yandex/div2/b4;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivStrokeStyleTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/b4;->b(Lex7;Lcom/yandex/div2/DivStrokeStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStrokeStyle;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivStrokeStyleTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStrokeStyle;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p2, Lcom/yandex/div2/DivStrokeStyleTemplate$c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/yandex/div2/DivStrokeStyle$c;

    iget-object p0, p0, Lcom/yandex/div2/b4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->H7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljr2;

    check-cast p2, Lcom/yandex/div2/DivStrokeStyleTemplate$c;

    invoke-virtual {p2}, Lcom/yandex/div2/DivStrokeStyleTemplate$c;->c()Lcom/yandex/div2/DivStrokeStyleSolidTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Ljr2;->b(Lex7;Lcom/yandex/div2/DivStrokeStyleSolidTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStrokeStyleSolid;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivStrokeStyle$c;-><init>(Lcom/yandex/div2/DivStrokeStyleSolid;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/div2/DivStrokeStyleTemplate$b;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div2/DivStrokeStyle$b;

    iget-object p0, p0, Lcom/yandex/div2/b4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->B7()Lyi5;

    move-result-object p0

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgr2;

    check-cast p2, Lcom/yandex/div2/DivStrokeStyleTemplate$b;

    invoke-virtual {p2}, Lcom/yandex/div2/DivStrokeStyleTemplate$b;->c()Lcom/yandex/div2/DivStrokeStyleDashedTemplate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lgr2;->b(Lex7;Lcom/yandex/div2/DivStrokeStyleDashedTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivStrokeStyleDashed;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/yandex/div2/DivStrokeStyle$b;-><init>(Lcom/yandex/div2/DivStrokeStyleDashed;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
