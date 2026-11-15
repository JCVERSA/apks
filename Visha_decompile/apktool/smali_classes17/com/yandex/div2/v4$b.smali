.class public final Lcom/yandex/div2/v4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/v4;
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

    iput-object p1, p0, Lcom/yandex/div2/v4$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/v4$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeMaskParticles;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTextRangeMaskParticles;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/v4$b;->e(Lex7;Lcom/yandex/div2/DivTextRangeMaskParticles;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTextRangeMaskParticles;
    .locals 13

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivTextRangeMaskParticles;

    sget-object v1, Lacb;->f:Lzbb;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    const-string v3, "color"

    invoke-static {p1, p2, v3, v1, v2}, Lpa5;->e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    const-string v1, "readExpression(context, \u2026LOR, STRING_TO_COLOR_INT)"

    invoke-static {v2, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lacb;->d:Lzbb;

    sget-object v7, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v8, Lcom/yandex/div2/v4;->f:Lpnb;

    sget-object v1, Lcom/yandex/div2/v4;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "density"

    move-object v3, p1

    move-object v4, p2

    move-object v9, v1

    invoke-static/range {v3 .. v9}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_0

    move-object v3, v1

    :cond_0
    sget-object v1, Lacb;->a:Lzbb;

    sget-object v10, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v11, Lcom/yandex/div2/v4;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "is_animated"

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    move-object v8, v10

    move-object v9, v11

    invoke-static/range {v4 .. v9}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v11, v4

    :goto_0
    sget-object v12, Lcom/yandex/div2/v4;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "is_enabled"

    move-object v4, p1

    move-object v5, p2

    move-object v7, v1

    move-object v8, v10

    move-object v9, v12

    invoke-static/range {v4 .. v9}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v5, v12

    goto :goto_1

    :cond_2
    move-object v5, v1

    :goto_1
    iget-object p0, p0, Lcom/yandex/div2/v4$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object p0

    const-string v1, "particle_size"

    invoke-static {p1, p2, v1, p0}, Ltb5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivFixedSize;

    if-nez p0, :cond_3

    sget-object p0, Lcom/yandex/div2/v4;->e:Lcom/yandex/div2/DivFixedSize;

    :cond_3
    move-object v6, p0

    const-string p0, "JsonPropertyParser.readO\u2026RTICLE_SIZE_DEFAULT_VALUE"

    invoke-static {v6, p0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    move-object v4, v11

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivTextRangeMaskParticles;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivFixedSize;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTextRangeMaskParticles;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTextRangeMaskParticles;->a:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v3, "color"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v1, "density"

    iget-object v2, p2, Lcom/yandex/div2/DivTextRangeMaskParticles;->b:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "is_animated"

    iget-object v2, p2, Lcom/yandex/div2/DivTextRangeMaskParticles;->c:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v1, "is_enabled"

    iget-object v2, p2, Lcom/yandex/div2/DivTextRangeMaskParticles;->d:Lcom/yandex/div/json/expressions/Expression;

    invoke-static {p1, v0, v1, v2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTextRangeMaskParticles;->e:Lcom/yandex/div2/DivFixedSize;

    iget-object p0, p0, Lcom/yandex/div2/v4$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->t3()Lyi5;

    move-result-object p0

    const-string v1, "particle_size"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    const-string p0, "type"

    const-string p2, "particles"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
