.class public final Lcom/yandex/div2/DivTriggerJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivTriggerJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivTriggerJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTriggerTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivTriggerJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivTriggerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTrigger;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTriggerTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTrigger;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivTrigger;

    iget-object v2, p2, Lcom/yandex/div2/DivTriggerTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/DivTriggerJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v5

    iget-object p0, p0, Lcom/yandex/div2/DivTriggerJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v6

    sget-object v7, Lcom/yandex/div2/DivTriggerJsonParser;->d:Lhm5;

    const-string v4, "actions"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lsa5;->l(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object p0

    const-string v1, "resolveList(context, tem\u2026arser, ACTIONS_VALIDATOR)"

    invoke-static {p0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p2, Lcom/yandex/div2/DivTriggerTemplate;->b:Ltp3;

    sget-object v6, Lacb;->a:Lzbb;

    sget-object v7, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v5, "condition"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lsa5;->h(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    const-string v2, "resolveExpression(contex\u2026_BOOLEAN, ANY_TO_BOOLEAN)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivTriggerTemplate;->c:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivTriggerJsonParser;->c:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivTrigger$Mode;->FROM_STRING:Le74;

    sget-object p2, Lcom/yandex/div2/DivTriggerJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "mode"

    move-object v3, p1

    move-object v5, p3

    move-object v9, p2

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-direct {v0, p0, v1, p2}, Lcom/yandex/div2/DivTrigger;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0
.end method
