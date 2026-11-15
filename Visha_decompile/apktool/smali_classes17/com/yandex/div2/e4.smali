.class public final Lcom/yandex/div2/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/e4;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/e4;->b(Lex7;Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs$Item;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivTabs$Item;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivTabs$Item;

    iget-object v2, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/e4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L4()Lyi5;

    move-result-object v5

    iget-object v1, p0, Lcom/yandex/div2/e4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object v6

    const-string v4, "div"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, templat\u2026nent.divJsonEntityParser)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div2/Div;

    iget-object v2, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->b:Ltp3;

    const-string v3, "title"

    sget-object v4, Lacb;->c:Lzbb;

    invoke-static {p1, v2, p3, v3, v4}, Lsa5;->g(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    const-string v3, "resolveExpression(contex\u2026tle\", TYPE_HELPER_STRING)"

    invoke-static {v2, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p2, Lcom/yandex/div2/DivTabsTemplate$ItemTemplate;->c:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/e4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v8

    iget-object p0, p0, Lcom/yandex/div2/e4;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v9

    const-string v7, "title_click_action"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/div2/DivAction;

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/div2/DivTabs$Item;-><init>(Lcom/yandex/div2/Div;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivAction;)V

    return-object v0
.end method
