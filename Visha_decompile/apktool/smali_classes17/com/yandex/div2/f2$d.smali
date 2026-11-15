.class public final Lcom/yandex/div2/f2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/f2;
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

    iput-object p1, p0, Lcom/yandex/div2/f2$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivInputValidatorRegexTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/f2$d;->b(Lex7;Lcom/yandex/div2/DivInputValidatorRegexTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputValidatorRegex;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivInputValidatorRegexTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputValidatorRegex;
    .locals 8

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "template"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivInputValidatorRegex;

    iget-object v1, p2, Lcom/yandex/div2/DivInputValidatorRegexTemplate;->a:Ltp3;

    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v7, Lcom/yandex/div2/f2;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "allow_empty"

    move-object v0, p1

    move-object v2, p3

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    iget-object v0, p2, Lcom/yandex/div2/DivInputValidatorRegexTemplate;->b:Ltp3;

    sget-object v1, Lacb;->c:Lzbb;

    const-string v2, "label_id"

    invoke-static {p1, v0, p3, v2, v1}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v2, "resolveExpression(contex\u2026_id\", TYPE_HELPER_STRING)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/yandex/div2/DivInputValidatorRegexTemplate;->c:Ltp3;

    const-string v3, "pattern"

    invoke-static {p1, v2, p3, v3, v1}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "resolveExpression(contex\u2026ern\", TYPE_HELPER_STRING)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p2, Lcom/yandex/div2/DivInputValidatorRegexTemplate;->d:Ltp3;

    const-string v2, "variable"

    invoke-static {p1, p2, p3, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "resolve(context, templat\u2026riable, data, \"variable\")"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v7, v0, v1, p1}, Lcom/yandex/div2/DivInputValidatorRegex;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/lang/String;)V

    return-object p0
.end method
