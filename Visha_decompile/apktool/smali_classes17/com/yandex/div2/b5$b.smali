.class public final Lcom/yandex/div2/b5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/b5;
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

    iput-object p1, p0, Lcom/yandex/div2/b5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/b5$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTransform;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTransform;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/b5$b;->e(Lex7;Lcom/yandex/div2/DivTransform;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTransform;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivTransform;

    iget-object v1, p0, Lcom/yandex/div2/b5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->Q5()Lyi5;

    move-result-object v1

    const-string v2, "pivot_x"

    invoke-static {p1, p2, v2, v1}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/div2/DivPivot;

    if-nez v1, :cond_0

    sget-object v1, Lcom/yandex/div2/b5;->b:Lcom/yandex/div2/DivPivot$c;

    :cond_0
    const-string v2, "JsonPropertyParser.readO\u2026 ?: PIVOT_X_DEFAULT_VALUE"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div2/b5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q5()Lyi5;

    move-result-object p0

    const-string v2, "pivot_y"

    invoke-static {p1, p2, v2, p0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivPivot;

    if-nez p0, :cond_1

    sget-object p0, Lcom/yandex/div2/b5;->c:Lcom/yandex/div2/DivPivot$c;

    :cond_1
    const-string v2, "JsonPropertyParser.readO\u2026 ?: PIVOT_Y_DEFAULT_VALUE"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lacb;->d:Lzbb;

    sget-object v3, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    const-string v4, "rotation"

    invoke-static {p1, p2, v4, v2, v3}, Lpa5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/yandex/div2/DivTransform;-><init>(Lcom/yandex/div2/DivPivot;Lcom/yandex/div2/DivPivot;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTransform;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTransform;->a:Lcom/yandex/div2/DivPivot;

    iget-object v2, p0, Lcom/yandex/div2/b5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->Q5()Lyi5;

    move-result-object v2

    const-string v3, "pivot_x"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivTransform;->b:Lcom/yandex/div2/DivPivot;

    iget-object p0, p0, Lcom/yandex/div2/b5$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->Q5()Lyi5;

    move-result-object p0

    const-string v2, "pivot_y"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "rotation"

    iget-object p2, p2, Lcom/yandex/div2/DivTransform;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
