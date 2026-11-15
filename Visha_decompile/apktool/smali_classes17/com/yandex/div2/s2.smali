.class public final Lcom/yandex/div2/s2;
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

    iput-object p1, p0, Lcom/yandex/div2/s2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/s2;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatch$Change;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPatch$Change;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/s2;->e(Lex7;Lcom/yandex/div2/DivPatch$Change;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatch$Change;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivPatch$Change;

    const-string v1, "id"

    invoke-static {p1, p2, v1}, Ltb5;->d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "read(context, data, \"id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/div2/s2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object p0

    const-string v2, "items"

    invoke-static {p1, p2, v2, p0}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/DivPatch$Change;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPatch$Change;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivPatch$Change;->a:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {p1, v0, v2, v1}, Ltb5;->v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p2, Lcom/yandex/div2/DivPatch$Change;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div2/s2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object p0

    const-string v1, "items"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    return-object v0
.end method
