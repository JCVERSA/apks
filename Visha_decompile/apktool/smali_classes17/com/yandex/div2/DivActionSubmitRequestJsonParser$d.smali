.class public final Lcom/yandex/div2/DivActionSubmitRequestJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionSubmitRequestJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit$Request;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit$Request;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivActionSubmit$Request;

    iget-object v2, p2, Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->a1()Lyi5;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Y0()Lyi5;

    move-result-object v6

    const-string v4, "headers"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object p0

    iget-object v2, p2, Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate;->b:Ltp3;

    sget-object v5, Lcom/yandex/div2/DivActionSubmitRequestJsonParser;->c:Lzbb;

    sget-object v6, Lcom/yandex/div2/DivActionSubmit$Request$Method;->FROM_STRING:Le74;

    sget-object v8, Lcom/yandex/div2/DivActionSubmitRequestJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v4, "method"

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v1

    :goto_0
    iget-object v2, p2, Lcom/yandex/div2/DivActionSubmitTemplate$RequestTemplate;->c:Ltp3;

    sget-object v5, Lacb;->e:Lzbb;

    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v4, "url"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "resolveExpression(contex\u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v8, p1}, Lcom/yandex/div2/DivActionSubmit$Request;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
