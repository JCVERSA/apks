.class public final Lcom/yandex/div2/g1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/g1;
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

    iput-object p1, p0, Lcom/yandex/div2/g1$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g1$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFixedLengthInputMask;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/g1$b;->e(Lex7;Lcom/yandex/div2/DivFixedLengthInputMask;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFixedLengthInputMask;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivFixedLengthInputMask;

    sget-object v4, Lacb;->a:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v7, Lcom/yandex/div2/g1;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "always_visible"

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
    const-string v1, "pattern"

    sget-object v2, Lacb;->c:Lzbb;

    invoke-static {p1, p2, v1, v2}, Lpa5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "readExpression(context, \u2026ern\", TYPE_HELPER_STRING)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/div2/g1$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->q3()Lyi5;

    move-result-object p0

    sget-object v2, Lcom/yandex/div2/g1;->c:Lhm5;

    const-string v3, "pattern_elements"

    invoke-static {p1, p2, v3, p0, v2}, Ltb5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object p0

    const-string v2, "readList(context, data, \u2026TTERN_ELEMENTS_VALIDATOR)"

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "raw_text_variable"

    invoke-static {p1, p2, v2}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "read(context, data, \"raw_text_variable\")"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v7, v1, p0, p1}, Lcom/yandex/div2/DivFixedLengthInputMask;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFixedLengthInputMask;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivFixedLengthInputMask;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "always_visible"

    invoke-static {p1, v0, v2, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "pattern"

    iget-object v2, p2, Lcom/yandex/div2/DivFixedLengthInputMask;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivFixedLengthInputMask;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div2/g1$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->q3()Lyi5;

    move-result-object p0

    const-string v2, "pattern_elements"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    const-string p0, "raw_text_variable"

    invoke-virtual {p2}, Lcom/yandex/div2/DivFixedLengthInputMask;->a()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "type"

    const-string p2, "fixed_length"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
