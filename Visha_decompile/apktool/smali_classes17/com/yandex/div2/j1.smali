.class public final Lcom/yandex/div2/j1;
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

    iput-object p1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivFocusTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/j1;->b(Lex7;Lcom/yandex/div2/DivFocusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFocus;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivFocusTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivFocus;
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivFocus;

    iget-object v2, p2, Lcom/yandex/div2/DivFocusTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->E1()Lyi5;

    move-result-object v5

    iget-object v1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C1()Lyi5;

    move-result-object v6

    const-string v4, "background"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v2

    iget-object v4, p2, Lcom/yandex/div2/DivFocusTemplate;->b:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->K1()Lyi5;

    move-result-object v7

    iget-object v1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->I1()Lyi5;

    move-result-object v8

    const-string v6, "border"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/yandex/div2/DivBorder;

    iget-object v5, p2, Lcom/yandex/div2/DivFocusTemplate;->c:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->B3()Lyi5;

    move-result-object v8

    iget-object v1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->z3()Lyi5;

    move-result-object v9

    const-string v7, "next_focus_ids"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/yandex/div2/DivFocus$NextFocusIds;

    iget-object v6, p2, Lcom/yandex/div2/DivFocusTemplate;->d:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v9

    iget-object v1, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v10

    const-string v8, "on_blur"

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v5 .. v10}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p2, Lcom/yandex/div2/DivFocusTemplate;->e:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v10

    iget-object p0, p0, Lcom/yandex/div2/j1;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v11

    const-string v9, "on_focus"

    move-object v6, p1

    move-object v8, p3

    invoke-static/range {v6 .. v11}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivFocus;-><init>(Ljava/util/List;Lcom/yandex/div2/DivBorder;Lcom/yandex/div2/DivFocus$NextFocusIds;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
