.class public final Lcom/yandex/div2/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/k;
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

    iput-object p1, p0, Lcom/yandex/div2/k$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollTo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivActionScrollTo;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k$b;->e(Lex7;Lcom/yandex/div2/DivActionScrollTo;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivActionScrollTo;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivActionScrollTo;

    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v7, Lcom/yandex/div2/k;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "animated"

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
    iget-object p0, p0, Lcom/yandex/div2/k$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->D0()Lyi5;

    move-result-object p0

    const-string v1, "destination"

    invoke-static {p1, p2, v1, p0}, Ltb5;->g(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "read(context, data, \"des\u2026tinationJsonEntityParser)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div2/DivActionScrollDestination;

    const-string v1, "id"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {p1, p2, v1, v2}, Lpa5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    const-string p2, "readExpression(context, \u2026\"id\", TYPE_HELPER_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v7, p0, p1}, Lcom/yandex/div2/DivActionScrollTo;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivActionScrollDestination;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivActionScrollTo;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollTo;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "animated"

    invoke-static {p1, v0, v2, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivActionScrollTo;->b:Lcom/yandex/div2/DivActionScrollDestination;

    iget-object p0, p0, Lcom/yandex/div2/k$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->D0()Lyi5;

    move-result-object p0

    const-string v2, "destination"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "id"

    iget-object p2, p2, Lcom/yandex/div2/DivActionScrollTo;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, p0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p0, "type"

    const-string p2, "scroll_to"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
