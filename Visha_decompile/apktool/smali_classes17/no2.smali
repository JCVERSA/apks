.class public final Lno2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lno2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lno2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPoint;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPoint;

    invoke-virtual {p0, p1, p2}, Lno2;->e(Lex7;Lcom/yandex/div2/DivPoint;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPoint;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivPoint;

    iget-object v1, p0, Lno2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object v1

    const-string v2, "x"

    invoke-static {p1, p2, v2, v1}, Ltb5;->g(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "read(context, data, \"x\",\u2026imensionJsonEntityParser)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/yandex/div2/DivDimension;

    iget-object p0, p0, Lno2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object p0

    const-string v2, "y"

    invoke-static {p1, p2, v2, p0}, Ltb5;->g(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "read(context, data, \"y\",\u2026imensionJsonEntityParser)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/yandex/div2/DivDimension;

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/DivPoint;-><init>(Lcom/yandex/div2/DivDimension;Lcom/yandex/div2/DivDimension;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPoint;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivPoint;->a:Lcom/yandex/div2/DivDimension;

    iget-object v2, p0, Lno2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object v2

    const-string v3, "x"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivPoint;->b:Lcom/yandex/div2/DivDimension;

    iget-object p0, p0, Lno2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J2()Lyi5;

    move-result-object p0

    const-string v1, "y"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V

    return-object v0
.end method
