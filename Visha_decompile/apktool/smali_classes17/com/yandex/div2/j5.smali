.class public final Lcom/yandex/div2/j5;
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

    iput-object p1, p0, Lcom/yandex/div2/j5;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivVideoSourceTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/j5;->b(Lex7;Lcom/yandex/div2/DivVideoSourceTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideoSource;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivVideoSourceTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivVideoSource;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivVideoSource;

    iget-object v2, p2, Lcom/yandex/div2/DivVideoSourceTemplate;->a:Ltp3;

    sget-object v5, Lacb;->b:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    const-string v4, "bitrate"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->s(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    iget-object v2, p2, Lcom/yandex/div2/DivVideoSourceTemplate;->b:Ltp3;

    const-string v3, "mime_type"

    sget-object v4, Lacb;->c:Lzbb;

    invoke-static {p1, v2, p3, v3, v4}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    const-string v3, "resolveExpression(contex\u2026ype\", TYPE_HELPER_STRING)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p2, Lcom/yandex/div2/DivVideoSourceTemplate;->c:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/j5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->p9()Lyi5;

    move-result-object v8

    iget-object p0, p0, Lcom/yandex/div2/j5;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->n9()Lyi5;

    move-result-object v9

    const-string v7, "resolution"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivVideoSource$Resolution;

    iget-object v4, p2, Lcom/yandex/div2/DivVideoSourceTemplate;->d:Ltp3;

    sget-object v7, Lacb;->e:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v6, "url"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "resolveExpression(contex\u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p0, p1}, Lcom/yandex/div2/DivVideoSource;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivVideoSource$Resolution;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
