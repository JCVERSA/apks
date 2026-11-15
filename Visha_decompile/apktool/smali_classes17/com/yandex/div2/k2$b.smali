.class public final Lcom/yandex/div2/k2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/k2;
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

    iput-object p1, p0, Lcom/yandex/div2/k2$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k2$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradient;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivLinearGradient;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/k2$b;->e(Lex7;Lcom/yandex/div2/DivLinearGradient;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivLinearGradient;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivLinearGradient;

    sget-object v4, Lacb;->b:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v6, Lcom/yandex/div2/k2;->c:Lpnb;

    sget-object v8, Lcom/yandex/div2/k2;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v3, "angle"

    move-object v1, p1

    move-object v2, p2

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v8, v1

    :goto_0
    iget-object p0, p0, Lcom/yandex/div2/k2$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P4()Lyi5;

    move-result-object p0

    sget-object v1, Lcom/yandex/div2/k2;->e:Lhm5;

    const-string v2, "color_map"

    invoke-static {p1, p2, v2, p0, v1}, Ltb5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object p0

    sget-object v4, Lacb;->f:Lzbb;

    sget-object v5, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->b:Le74;

    sget-object v6, Lcom/yandex/div2/k2;->d:Lhm5;

    const-string v3, "colors"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lpa5;->n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lhm5;)Lnj3;

    move-result-object p1

    invoke-direct {v0, v8, p0, p1}, Lcom/yandex/div2/DivLinearGradient;-><init>(Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Lnj3;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivLinearGradient;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivLinearGradient;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "angle"

    invoke-static {p1, v0, v2, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    iget-object v1, p2, Lcom/yandex/div2/DivLinearGradient;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div2/k2$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->P4()Lyi5;

    move-result-object p0

    const-string v2, "color_map"

    invoke-static {p1, v0, v2, v1, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object p0, p2, Lcom/yandex/div2/DivLinearGradient;->c:Lnj3;

    sget-object p2, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->a:Le74;

    const-string v1, "colors"

    invoke-static {p1, v0, v1, p0, p2}, Lpa5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lnj3;Le74;)V

    const-string p0, "type"

    const-string p2, "gradient"

    invoke-static {p1, v0, p0, p2}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
