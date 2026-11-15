.class public final Lcom/yandex/div2/d4;
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

    iput-object p1, p0, Lcom/yandex/div2/d4;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/d4;->e(Lex7;Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/d4;->d(Lex7;Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v0

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object p1

    new-instance v7, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->a:Ltp3;

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, v8

    :goto_0
    iget-object v1, p0, Lcom/yandex/div2/d4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v6

    const-string v3, "div"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v6}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v9

    const-string v1, "readField(context, data,\u2026nt.divJsonTemplateParser)"

    invoke-static {v9, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lacb;->c:Lzbb;

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->b:Ltp3;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v8

    :goto_1
    const-string v3, "title"

    move-object v1, p1

    move-object v2, p3

    move v5, v0

    invoke-static/range {v1 .. v6}, Lra5;->h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;)Ltp3;

    move-result-object v10

    const-string v1, "readFieldWithExpression(\u2026wOverride, parent?.title)"

    invoke-static {v10, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->c:Ltp3;

    move-object v5, p2

    goto :goto_2

    :cond_2
    move-object v5, v8

    :goto_2
    iget-object p0, p0, Lcom/yandex/div2/d4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v6

    const-string v3, "title_click_action"

    move-object v1, p1

    move-object v2, p3

    move v4, v0

    invoke-static/range {v1 .. v6}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object p0

    const-string p1, "readOptionalField(contex\u2026ActionJsonTemplateParser)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v9, v10, p0}, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;-><init>(Ltp3;Ltp3;Ltp3;)V

    return-object v7
.end method

.method public e(Lex7;Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/d4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v2

    const-string v3, "div"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "title"

    iget-object v2, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->b:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->c:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/d4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object p0

    const-string v1, "title_click_action"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
