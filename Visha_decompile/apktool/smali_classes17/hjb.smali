.class public final Lhjb;
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

    iput-object p1, p0, Lhjb;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/UrlValueTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lhjb;->b(Lex7;Lcom/yandex/div2/UrlValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlValue;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/UrlValueTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/UrlValue;
    .locals 6

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/UrlValue;

    iget-object v1, p2, Lcom/yandex/div2/UrlValueTemplate;->a:Ltp3;

    sget-object v4, Lacb;->e:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v3, "value"

    move-object v0, p1

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "resolveExpression(contex\u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div2/UrlValue;-><init>(Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method
