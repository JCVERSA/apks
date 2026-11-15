.class public final Lcom/yandex/div2/u2;
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

    iput-object p1, p0, Lcom/yandex/div2/u2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/u2;->b(Lex7;Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatch$Change;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatch$Change;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivPatch$Change;

    iget-object v1, p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;->a:Ltp3;

    const-string v2, "id"

    invoke-static {p1, v1, p3, v2}, Lsa5;->a(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "resolve(context, template.id, data, \"id\")"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iget-object v3, p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;->b:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/u2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->L4()Lyi5;

    move-result-object v6

    iget-object p0, p0, Lcom/yandex/div2/u2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->J4()Lyi5;

    move-result-object v7

    const-string v5, "items"

    move-object v2, p1

    move-object v4, p3

    invoke-static/range {v2 .. v7}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/div2/DivPatch$Change;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
