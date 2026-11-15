.class public final Lcom/yandex/div2/DivActionScrollByJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionScrollByJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivActionScrollByJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionScrollByTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionScrollByJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollBy;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionScrollByTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollBy;
    .locals 12

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivActionScrollBy;

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->a:Ltp3;

    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v7, Lcom/yandex/div2/DivActionScrollByJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "animated"

    move-object v0, p1

    move-object v2, p3

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v7

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v0, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->b:Ltp3;

    const-string v2, "id"

    sget-object v3, Lacb;->c:Lzbb;

    invoke-static {p1, v0, p3, v2, v3}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    const-string v0, "resolveExpression(contex\u2026\"id\", TYPE_HELPER_STRING)"

    invoke-static {v2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->c:Ltp3;

    sget-object v0, Lacb;->b:Lzbb;

    sget-object v10, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v11, Lcom/yandex/div2/DivActionScrollByJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "item_count"

    move-object v3, p1

    move-object v5, p3

    move-object v7, v0

    move-object v8, v10

    move-object v9, v11

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v11

    :cond_1
    iget-object v6, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->d:Ltp3;

    sget-object v4, Lcom/yandex/div2/DivActionScrollByJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v8, "offset"

    move-object v5, p1

    move-object v7, p3

    move-object v9, v0

    move-object v11, v4

    invoke-static/range {v5 .. v11}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    iget-object v6, p2, Lcom/yandex/div2/DivActionScrollByTemplate;->e:Ltp3;

    sget-object v9, Lcom/yandex/div2/DivActionScrollByJsonParser;->f:Lzbb;

    sget-object v10, Lcom/yandex/div2/DivActionScrollBy$Overflow;->FROM_STRING:Le74;

    sget-object p2, Lcom/yandex/div2/DivActionScrollByJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v8, "overflow"

    move-object v5, p1

    move-object v7, p3

    move-object v11, p2

    invoke-static/range {v5 .. v11}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_3

    move-object v5, p2

    goto :goto_2

    :cond_3
    move-object v5, p1

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/div2/DivActionScrollBy;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
