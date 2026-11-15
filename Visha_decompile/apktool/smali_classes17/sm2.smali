.class public final Lsm2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsm2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivNeighbourPageSizeTemplate;

    invoke-virtual {p0, p1, p2}, Lsm2;->e(Lex7;Lcom/yandex/div2/DivNeighbourPageSizeTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivNeighbourPageSizeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lsm2;->d(Lex7;Lcom/yandex/div2/DivNeighbourPageSizeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNeighbourPageSizeTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivNeighbourPageSizeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivNeighbourPageSizeTemplate;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v4

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v1

    new-instance p1, Lcom/yandex/div2/DivNeighbourPageSizeTemplate;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/yandex/div2/DivNeighbourPageSizeTemplate;->a:Ltp3;

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lsm2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object v6

    const-string v3, "neighbour_page_width"

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object p0

    const-string p2, "readField(context, data,\u2026edSizeJsonTemplateParser)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/yandex/div2/DivNeighbourPageSizeTemplate;-><init>(Ltp3;)V

    return-object p1
.end method

.method public e(Lex7;Lcom/yandex/div2/DivNeighbourPageSizeTemplate;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object p2, p2, Lcom/yandex/div2/DivNeighbourPageSizeTemplate;->a:Ltp3;

    iget-object p0, p0, Lsm2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u3()Lyi5;

    move-result-object p0

    const-string v1, "neighbour_page_width"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "type"

    const-string p2, "fixed"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
