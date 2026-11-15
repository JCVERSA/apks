.class public final Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;
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

    iput-object p1, p0, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivChangeBoundsTransition;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivChangeBoundsTransition;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivChangeBoundsTransition;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivChangeBoundsTransition;
    .locals 12

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/yandex/div2/DivChangeBoundsTransition;

    sget-object v7, Lacb;->b:Lzbb;

    sget-object v8, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v5, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->f:Lpnb;

    sget-object v9, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "duration"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v7

    move-object v4, v8

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v9, v0

    :goto_0
    sget-object v3, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->e:Lzbb;

    sget-object v4, Lcom/yandex/div2/DivAnimationInterpolator;->FROM_STRING:Le74;

    sget-object v6, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "interpolator"

    move-object v0, p1

    move-object v1, p2

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v10, v6

    goto :goto_1

    :cond_1
    move-object v10, v0

    :goto_1
    sget-object v5, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->g:Lpnb;

    sget-object v11, Lcom/yandex/div2/DivChangeBoundsTransitionJsonParser;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v2, "start_delay"

    move-object v0, p1

    move-object v1, p2

    move-object v3, v7

    move-object v4, v8

    move-object v6, v11

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v11, p1

    :goto_2
    invoke-direct {p0, v9, v10, v11}, Lcom/yandex/div2/DivChangeBoundsTransition;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivChangeBoundsTransition;)Lorg/json/JSONObject;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/div2/DivChangeBoundsTransition;->b()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    const-string v1, "duration"

    invoke-static {p1, p0, v1, v0}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-virtual {p2}, Lcom/yandex/div2/DivChangeBoundsTransition;->c()Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sget-object v1, Lcom/yandex/div2/DivAnimationInterpolator;->TO_STRING:Le74;

    const-string v2, "interpolator"

    invoke-static {p1, p0, v2, v0, v1}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    const-string v0, "start_delay"

    invoke-virtual {p2}, Lcom/yandex/div2/DivChangeBoundsTransition;->d()Lcom/yandex/div/json/expressions/Expression;

    move-result-object p2

    invoke-static {p1, p0, v0, p2}, Lpa5;->p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V

    const-string p2, "type"

    const-string v0, "change_bounds"

    invoke-static {p1, p0, p2, v0}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method
