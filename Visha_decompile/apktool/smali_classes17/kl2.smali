.class public final Lkl2;
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

    iput-object p1, p0, Lkl2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivInputFilterExpressionTemplate;

    invoke-virtual {p0, p1, p2}, Lkl2;->e(Lex7;Lcom/yandex/div2/DivInputFilterExpressionTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivInputFilterExpressionTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lkl2;->d(Lex7;Lcom/yandex/div2/DivInputFilterExpressionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputFilterExpressionTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivInputFilterExpressionTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivInputFilterExpressionTemplate;
    .locals 7

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v4

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v0

    new-instance p0, Lcom/yandex/div2/DivInputFilterExpressionTemplate;

    sget-object v3, Lacb;->a:Lzbb;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/yandex/div2/DivInputFilterExpressionTemplate;->a:Ltp3;

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    sget-object v6, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v2, "condition"

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lra5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object p1

    const-string p2, "readFieldWithExpression(\u2026ondition, ANY_TO_BOOLEAN)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/yandex/div2/DivInputFilterExpressionTemplate;-><init>(Ltp3;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivInputFilterExpressionTemplate;)Lorg/json/JSONObject;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "condition"

    iget-object p2, p2, Lcom/yandex/div2/DivInputFilterExpressionTemplate;->a:Ltp3;

    invoke-static {p1, p0, v0, p2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string p2, "type"

    const-string v0, "expression"

    invoke-static {p1, p0, p2, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
