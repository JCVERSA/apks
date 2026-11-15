.class public final Lcom/yandex/div2/DivPatchJsonParser$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lw92;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivPatchJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivPatchJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPatchJsonParser$b;->d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatch;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPatch;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPatchJsonParser$b;->e(Lex7;Lcom/yandex/div2/DivPatch;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatch;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivPatch;

    iget-object v1, p0, Lcom/yandex/div2/DivPatchJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C5()Lyi5;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivPatchJsonParser;->d:Lhm5;

    const-string v3, "changes"

    invoke-static {p1, p2, v3, v1, v2}, Ltb5;->j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v1

    const-string v2, "readList(context, data, \u2026arser, CHANGES_VALIDATOR)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivPatchJsonParser;->c:Lzbb;

    sget-object v7, Lcom/yandex/div2/DivPatch$Mode;->FROM_STRING:Le74;

    sget-object v2, Lcom/yandex/div2/DivPatchJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "mode"

    move-object v3, p1

    move-object v4, p2

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lpa5;->l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v3, p0, Lcom/yandex/div2/DivPatchJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v3

    const-string v4, "on_applied_actions"

    invoke-static {p1, p2, v4, v3}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object v3

    iget-object p0, p0, Lcom/yandex/div2/DivPatchJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object p0

    const-string v4, "on_failed_actions"

    invoke-static {p1, p2, v4, p0}, Ltb5;->r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yandex/div2/DivPatch;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPatch;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivPatch;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/div2/DivPatchJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->C5()Lyi5;

    move-result-object v2

    const-string v3, "changes"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPatch;->b:Lcom/yandex/div/json/expressions/Expression;

    sget-object v2, Lcom/yandex/div2/DivPatch$Mode;->TO_STRING:Le74;

    const-string v3, "mode"

    invoke-static {p1, v0, v3, v1, v2}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPatch;->c:Ljava/util/List;

    iget-object v2, p0, Lcom/yandex/div2/DivPatchJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v2

    const-string v3, "on_applied_actions"

    invoke-static {p1, v0, v3, v1, v2}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivPatch;->d:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/div2/DivPatchJsonParser$b;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object p0

    const-string v1, "on_failed_actions"

    invoke-static {p1, v0, v1, p2, p0}, Ltb5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V

    return-object v0
.end method
