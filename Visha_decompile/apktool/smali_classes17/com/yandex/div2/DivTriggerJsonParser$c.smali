.class public final Lcom/yandex/div2/DivTriggerJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTriggerJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivTriggerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTriggerTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivTriggerJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivTriggerTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTriggerTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTriggerJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivTriggerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTriggerTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTriggerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTriggerTemplate;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v8, Lcom/yandex/div2/DivTriggerTemplate;

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/DivTriggerTemplate;->a:Ltp3;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v9

    :goto_0
    iget-object p0, p0, Lcom/yandex/div2/DivTriggerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v6

    sget-object v7, Lcom/yandex/div2/DivTriggerJsonParser;->d:Lhm5;

    const-string p0, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v7, p0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "actions"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v7}, Lra5;->m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;Lhm5;)Ltp3;

    move-result-object p0

    const-string v1, "readListField(context, d\u2026ACTIONS_VALIDATOR.cast())"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lacb;->a:Lzbb;

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/yandex/div2/DivTriggerTemplate;->b:Ltp3;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v9

    :goto_1
    sget-object v7, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v3, "condition"

    move-object v1, p1

    move-object v2, p3

    move v5, v0

    invoke-static/range {v1 .. v7}, Lra5;->i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v10

    const-string v1, "readFieldWithExpression(\u2026ondition, ANY_TO_BOOLEAN)"

    invoke-static {v10, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/yandex/div2/DivTriggerJsonParser;->c:Lzbb;

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/yandex/div2/DivTriggerTemplate;->c:Ltp3;

    move-object v6, p2

    goto :goto_2

    :cond_2
    move-object v6, v9

    :goto_2
    sget-object v7, Lcom/yandex/div2/DivTrigger$Mode;->FROM_STRING:Le74;

    const-string v3, "mode"

    move-object v1, p1

    move-object v2, p3

    move v5, v0

    invoke-static/range {v1 .. v7}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object p1

    const-string p2, "readOptionalFieldWithExp\u2026Trigger.Mode.FROM_STRING)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, p0, v10, p1}, Lcom/yandex/div2/DivTriggerTemplate;-><init>(Ltp3;Ltp3;Ltp3;)V

    return-object v8
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTriggerTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTriggerTemplate;->a:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivTriggerJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object p0

    const-string v2, "actions"

    invoke-static {p1, v0, v2, v1, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string p0, "condition"

    iget-object v1, p2, Lcom/yandex/div2/DivTriggerTemplate;->b:Ltp3;

    invoke-static {p1, v0, p0, v1}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p0, p2, Lcom/yandex/div2/DivTriggerTemplate;->c:Ltp3;

    sget-object p2, Lcom/yandex/div2/DivTrigger$Mode;->TO_STRING:Le74;

    const-string v1, "mode"

    invoke-static {p1, v0, v1, p0, p2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    return-object v0
.end method
