.class public final Lcom/yandex/div2/x3;
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

    iput-object p1, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/x3;->b(Lex7;Lcom/yandex/div2/DivStateTemplate$StateTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivState$State;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivStateTemplate$StateTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivState$State;
    .locals 12

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivState$State;

    iget-object v2, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p1()Lyi5;

    move-result-object v5

    iget-object v1, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v6

    const-string v4, "animation_in"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/yandex/div2/DivAnimation;

    iget-object v4, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->b:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->p1()Lyi5;

    move-result-object v7

    iget-object v1, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->n1()Lyi5;

    move-result-object v8

    const-string v6, "animation_out"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/yandex/div2/DivAnimation;

    iget-object v5, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->c:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L4()Lyi5;

    move-result-object v8

    iget-object v1, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object v9

    const-string v7, "div"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/yandex/div2/Div;

    iget-object v1, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->d:Ltp3;

    const-string v5, "state_id"

    invoke-static {p1, v1, p3, v5}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "resolve(context, templat\u2026tateId, data, \"state_id\")"

    invoke-static {v1, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    iget-object v7, p2, Lcom/yandex/div2/DivStateTemplate$StateTemplate;->e:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v10

    iget-object p0, p0, Lcom/yandex/div2/x3;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v11

    const-string v9, "swipe_out_actions"

    move-object v6, p1

    move-object v8, p3

    invoke-static/range {v6 .. v11}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/div2/DivState$State;-><init>(Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/DivAnimation;Lcom/yandex/div2/Div;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
