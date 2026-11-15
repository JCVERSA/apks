.class public final Lpo2;
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

    iput-object p1, p0, Lpo2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPointTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lpo2;->b(Lex7;Lcom/yandex/div2/DivPointTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPoint;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivPointTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPoint;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivPoint;

    iget-object v2, p2, Lcom/yandex/div2/DivPointTemplate;->a:Ltp3;

    iget-object v1, p0, Lpo2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->L2()Lyi5;

    move-result-object v5

    iget-object v1, p0, Lpo2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object v6

    const-string v4, "x"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v6}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, templat\u2026imensionJsonEntityParser)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div2/DivDimension;

    iget-object v4, p2, Lcom/yandex/div2/DivPointTemplate;->b:Ltp3;

    iget-object p2, p0, Lpo2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->L2()Lyi5;

    move-result-object v7

    iget-object p0, p0, Lpo2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object v8

    const-string v6, "y"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div2/DivDimension;

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/DivPoint;-><init>(Lcom/yandex/div2/DivDimension;Lcom/yandex/div2/DivDimension;)V

    return-object v0
.end method
