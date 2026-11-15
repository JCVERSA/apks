.class public final Lcom/yandex/div2/DivFadeTransitionJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivFadeTransitionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivFadeTransitionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivFadeTransitionJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFadeTransition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFadeTransition;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivFadeTransitionJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivFadeTransition;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFadeTransition;
    .locals 13

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivFadeTransition;

    sget-object v3, Lacb;->d:Lzbb;

    sget-object v4, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->g:Le74;

    sget-object v5, Lcom/yandex/div2/DivFadeTransitionJsonParser;->g:Lpnb;

    sget-object v7, Lcom/yandex/div2/DivFadeTransitionJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "alpha"

    move-object v0, p1

    move-object v1, p2

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    sget-object v8, Lacb;->b:Lzbb;

    sget-object v9, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v5, Lcom/yandex/div2/DivFadeTransitionJsonParser;->h:Lpnb;

    sget-object v10, Lcom/yandex/div2/DivFadeTransitionJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "duration"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v8

    move-object v4, v9

    move-object v6, v10

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v0

    :goto_1
    sget-object v3, Lcom/yandex/div2/DivFadeTransitionJsonParser;->f:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivFadeTransitionJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "interpolator"

    move-object v0, p1

    move-object v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v11, v6

    goto :goto_2

    :cond_2
    move-object v11, v0

    :goto_2
    sget-object v5, Lcom/yandex/div2/DivFadeTransitionJsonParser;->i:Lpnb;

    sget-object v12, Lcom/yandex/div2/DivFadeTransitionJsonParser;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "start_delay"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v8

    move-object v4, v9

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    move-object v12, p1

    :goto_3
    invoke-direct {p0, v7, v10, v11, v12}, Lcom/yandex/div2/DivFadeTransition;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivFadeTransition;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lcom/yandex/div2/DivFadeTransition;->a:Lcom/yandex/div/json/expressions/Expression;

    const-string v1, "alpha"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string v0, "duration"

    invoke-virtual {p2}, Lcom/yandex/div2/DivFadeTransition;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-static {p1, p0, v0, v1}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivFadeTransition;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v2, "interpolator"

    invoke-static {p1, p0, v2, v0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v0, "start_delay"

    invoke-virtual {p2}, Lcom/yandex/div2/DivFadeTransition;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p2

    invoke-static {p1, p0, v0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p2, "type"

    const-string v0, "fade"

    invoke-static {p1, p0, p2, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
