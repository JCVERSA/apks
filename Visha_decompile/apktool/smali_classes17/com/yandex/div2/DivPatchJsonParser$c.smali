.class public final Lcom/yandex/div2/DivPatchJsonParser$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/DivPatchJsonParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/yandex/div2/JsonParserComponent;


# direct methods
.method public constructor <init>(Lcom/yandex/div2/JsonParserComponent;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/div2/DivPatchJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPatchTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/DivPatchJsonParser$c;->e(Lex7;Lcom/yandex/div2/DivPatchTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivPatchTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/DivPatchJsonParser$c;->d(Lex7;Lcom/yandex/div2/DivPatchTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatchTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivPatchTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivPatchTemplate;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v10, p3

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lex7;->c()Z

    move-result v2

    invoke-static/range {p1 .. p1}, Lfx7;->c(Lex7;)Lex7;

    move-result-object v11

    new-instance v12, Lcom/yandex/div2/DivPatchTemplate;

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivPatchTemplate;->a:Ltp3;

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    iget-object v3, v0, Lcom/yandex/div2/DivPatchJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->D5()Lyi5;

    move-result-object v8

    sget-object v9, Lcom/yandex/div2/DivPatchJsonParser;->d:Lhm5;

    const-string v3, "null cannot be cast to non-null type com.yandex.div.internal.parser.ListValidator<T of com.yandex.div.internal.parser.ParsingValidatorsKt.cast>"

    invoke-static {v9, v3}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "changes"

    move-object v3, v11

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v9}, Lra5;->m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;Lhm5;)Ltp3;

    move-result-object v14

    const-string v3, "readListField(context, d\u2026CHANGES_VALIDATOR.cast())"

    invoke-static {v14, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Lcom/yandex/div2/DivPatchJsonParser;->c:Lzbb;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivPatchTemplate;->b:Ltp3;

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object v8, v13

    :goto_1
    sget-object v9, Lcom/yandex/div2/DivPatch$Mode;->FROM_STRING:Le74;

    const-string v5, "mode"

    move-object v3, v11

    move-object/from16 v4, p3

    move v7, v2

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026ivPatch.Mode.FROM_STRING)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivPatchTemplate;->c:Ltp3;

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object v7, v13

    :goto_2
    iget-object v3, v0, Lcom/yandex/div2/DivPatchJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v8

    const-string v5, "on_applied_actions"

    move-object v3, v11

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v15

    const-string v8, "readOptionalListField(co\u2026ActionJsonTemplateParser)"

    invoke-static {v15, v8}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/yandex/div2/DivPatchTemplate;->d:Ltp3;

    move-object v7, v1

    goto :goto_3

    :cond_3
    move-object v7, v13

    :goto_3
    iget-object v0, v0, Lcom/yandex/div2/DivPatchJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v0

    const-string v5, "on_failed_actions"

    move-object v3, v11

    move-object/from16 v4, p3

    move v6, v2

    move-object v1, v8

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lra5;->z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v0

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v14, v9, v15, v0}, Lcom/yandex/div2/DivPatchTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivPatchTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivPatchTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPatchJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->D5()Lyi5;

    move-result-object v2

    const-string v3, "changes"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPatchTemplate;->b:Ltp3;

    sget-object v2, Lcom/yandex/div2/DivPatch$Mode;->TO_STRING:Le74;

    const-string v3, "mode"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->E(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Le74;)V

    iget-object v1, p2, Lcom/yandex/div2/DivPatchTemplate;->c:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/DivPatchJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object v2

    const-string v3, "on_applied_actions"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    iget-object p2, p2, Lcom/yandex/div2/DivPatchTemplate;->d:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/DivPatchJsonParser$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->v0()Lyi5;

    move-result-object p0

    const-string v1, "on_failed_actions"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->K(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
