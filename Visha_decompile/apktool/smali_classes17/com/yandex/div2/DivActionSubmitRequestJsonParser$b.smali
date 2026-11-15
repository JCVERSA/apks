.class public final Lcom/yandex/div2/DivActionSubmitRequestJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivActionSubmitRequestJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit$Request;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionSubmit$Request;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivActionSubmit$Request;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionSubmit$Request;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivActionSubmit$Request;

    iget-object p0, p0, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Y0()Lyi5;

    move-result-object p0

    const-string v1, "headers"

    invoke-static {p1, p2, v1, p0}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object p0

    sget-object v4, Lcom/yandex/div2/DivActionSubmitRequestJsonParser;->c:Lzbb;

    sget-object v5, Lcom/yandex/div2/DivActionSubmit$Request$Method;->FROM_STRING:Le74;

    sget-object v7, Lcom/yandex/div2/DivActionSubmitRequestJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "method"

    move-object v1, p1

    move-object v2, p2

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v1

    :goto_0
    sget-object v1, Lacb;->e:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->e:Le74;

    const-string v3, "url"

    invoke-static {p1, p2, v3, v1, v2}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "readExpression(context, \u2026E_HELPER_URI, ANY_TO_URI)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v7, p1}, Lcom/yandex/div2/DivActionSubmit$Request;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionSubmit$Request;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivActionSubmit$Request;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div2/DivActionSubmitRequestJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Y0()Lyi5;

    move-result-object p0

    const-string v2, "headers"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object p0, p2, Lcom/yandex/div2/DivActionSubmit$Request;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v1, Lcom/yandex/div2/DivActionSubmit$Request$Method;->TO_STRING:Le74;

    const-string v2, "method"

    invoke-static {p1, v0, v2, p0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object p0, p2, Lcom/yandex/div2/DivActionSubmit$Request;->c:Lcom/yandex/div/json/expressions/Expression;

    sget-object p2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->c:Le74;

    const-string v1, "url"

    invoke-static {p1, v0, v1, p0, p2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-object v0
.end method
