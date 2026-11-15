.class public final Lcom/yandex/div2/DivPatchJsonParser$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivPatchJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivPatchJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPatchTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivPatchJsonParser$d;->b(Lex7;Lcom/yandex/div2/DivPatchTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatch;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivPatchTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatch;
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "template"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/yandex/div2/DivPatch;

    iget-object v2, p2, Lcom/yandex/div2/DivPatchTemplate;->a:Ltp3;

    iget-object v1, p0, Lcom/yandex/div2/DivPatchJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->E5()Lyi5;

    move-result-object v5

    iget-object v1, p0, Lcom/yandex/div2/DivPatchJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->C5()Lyi5;

    move-result-object v6

    sget-object v7, Lcom/yandex/div2/DivPatchJsonParser;->d:Lhm5;

    const-string v4, "changes"

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v1 .. v7}, Lsa5;->l(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;Lhm5;)Ljava/util/List;

    move-result-object v1

    const-string v2, "resolveList(context, tem\u2026arser, CHANGES_VALIDATOR)"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p2, Lcom/yandex/div2/DivPatchTemplate;->b:Ltp3;

    sget-object v7, Lcom/yandex/div2/DivPatchJsonParser;->c:Lzbb;

    sget-object v8, Lcom/yandex/div2/DivPatch$Mode;->FROM_STRING:Le74;

    sget-object v2, Lcom/yandex/div2/DivPatchJsonParser;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "mode"

    move-object v3, p1

    move-object v5, p3

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p2, Lcom/yandex/div2/DivPatchTemplate;->c:Ltp3;

    iget-object v3, p0, Lcom/yandex/div2/DivPatchJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v7

    iget-object v3, p0, Lcom/yandex/div2/DivPatchJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v8

    const-string v6, "on_applied_actions"

    move-object v3, p1

    move-object v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p2, Lcom/yandex/div2/DivPatchTemplate;->d:Ltp3;

    iget-object p2, p0, Lcom/yandex/div2/DivPatchJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p2}, Lcom/yandex/div2/JsonParserComponent;->w0()Lyi5;

    move-result-object v8

    iget-object p0, p0, Lcom/yandex/div2/DivPatchJsonParser$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->u0()Lyi5;

    move-result-object v9

    const-string v7, "on_failed_actions"

    move-object v4, p1

    move-object v6, p3

    invoke-static/range {v4 .. v9}, Lsa5;->B(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/yandex/div2/DivPatch;-><init>(Ljava/util/List;Lcom/yandex/div/json/expressions/Expression;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
