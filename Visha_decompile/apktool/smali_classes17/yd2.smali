.class public final Lyd2;
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

    iput-object p1, p0, Lyd2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lyd2;->b(Lex7;Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArrayRemoveValue;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionArrayRemoveValue;
    .locals 6

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivActionArrayRemoveValue;

    iget-object v1, p2, Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;->a:Ltp3;

    sget-object v4, Lacb;->b:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    const-string v3, "index"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v1, "resolveExpression(contex\u2026ELPER_INT, NUMBER_TO_INT)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/yandex/div2/DivActionArrayRemoveValueTemplate;->b:Ltp3;

    const-string v1, "variable_name"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {p1, p2, p3, v1, v2}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "resolveExpression(contex\u2026ame\", TYPE_HELPER_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/yandex/div2/DivActionArrayRemoveValue;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
