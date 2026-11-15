.class public final Lcom/yandex/div2/t2;
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

    iput-object p1, p0, Lcom/yandex/div2/t2;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/t2;->e(Lex7;Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/t2;->d(Lex7;Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lex7;->c()Z

    move-result v4

    invoke-static {p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v1

    new-instance p1, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;->a:Ltp3;

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    const-string v3, "id"

    invoke-static {v1, p3, v3, v4, v2}, Lra5;->c(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;)Ltp3;

    move-result-object v7

    const-string v2, "readField(context, data,\u2026llowOverride, parent?.id)"

    invoke-static {v7, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;->b:Ltp3;

    move-object v5, p2

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    iget-object p0, p0, Lcom/yandex/div2/t2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object v6

    const-string v3, "items"

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object p0

    const-string p2, "readOptionalListField(co\u2026nt.divJsonTemplateParser)"

    invoke-static {p0, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v7, p0}, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;-><init>(Ltp3;Ltp3;)V

    return-object p1
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;)Lorg/json/JSONObject;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;->a:Ltp3;

    const-string v2, "id"

    invoke-static {p1, v0, v2, v1}, Lra5;->G(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivPatchTemplate$ChangeTemplate;->b:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/t2;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->K4()Lyi5;

    move-result-object p0

    const-string v1, "items"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
