.class public final Lcom/yandex/div2/p0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd9;
.implements Lgfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/p0;
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

    iput-object p1, p0, Lcom/yandex/div2/p0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div2/p0$c;->e(Lex7;Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c(Lex7;Lza3;Ljava/lang/Object;)Lza3;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/p0$c;->d(Lex7;Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;

    move-result-object p0

    return-object p0
.end method

.method public d(Lex7;Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;
    .locals 18

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

    new-instance v12, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->a:Ltp3;

    move-object v7, v3

    goto :goto_0

    :cond_0
    move-object v7, v13

    :goto_0
    iget-object v3, v0, Lcom/yandex/div2/p0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v8

    const-string v5, "margins"

    move-object v3, v11

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v14

    const-string v3, "readOptionalField(contex\u2026InsetsJsonTemplateParser)"

    invoke-static {v14, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Lacb;->a:Lzbb;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->b:Ltp3;

    move-object v8, v3

    goto :goto_1

    :cond_1
    move-object v8, v13

    :goto_1
    sget-object v16, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    const-string v5, "show_at_end"

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v6, v15

    move v7, v2

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026howAtEnd, ANY_TO_BOOLEAN)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->c:Ltp3;

    move-object v8, v3

    goto :goto_2

    :cond_2
    move-object v8, v13

    :goto_2
    const-string v5, "show_at_start"

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v6, v15

    move v7, v2

    move-object/from16 v17, v9

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026wAtStart, ANY_TO_BOOLEAN)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    iget-object v3, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->d:Ltp3;

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object v8, v13

    :goto_3
    const-string v5, "show_between"

    move-object v3, v11

    move-object/from16 v4, p3

    move-object v6, v15

    move v7, v2

    move-object v15, v9

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lra5;->u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;ZLtp3;Le74;)Ltp3;

    move-result-object v9

    const-string v3, "readOptionalFieldWithExp\u2026wBetween, ANY_TO_BOOLEAN)"

    invoke-static {v9, v3}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->e:Ltp3;

    move-object v7, v1

    goto :goto_4

    :cond_4
    move-object v7, v13

    :goto_4
    iget-object v0, v0, Lcom/yandex/div2/p0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object v8

    const-string v5, "style"

    move-object v3, v11

    move-object/from16 v4, p3

    move v6, v2

    invoke-static/range {v3 .. v8}, Lra5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;ZLtp3;Lyi5;)Ltp3;

    move-result-object v8

    const-string v0, "readField(context, data,\u2026awableJsonTemplateParser)"

    invoke-static {v8, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v12

    move-object v4, v14

    move-object/from16 v5, v17

    move-object v6, v15

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;-><init>(Ltp3;Ltp3;Ltp3;Ltp3;Ltp3;)V

    return-object v12
.end method

.method public e(Lex7;Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;)Lorg/json/JSONObject;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p2, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->a:Ltp3;

    iget-object v2, p0, Lcom/yandex/div2/p0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v2}, Lcom/yandex/div2/JsonParserComponent;->W2()Lyi5;

    move-result-object v2

    const-string v3, "margins"

    invoke-static {p1, v0, v3, v1, v2}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    const-string v1, "show_at_end"

    iget-object v2, p2, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->b:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "show_at_start"

    iget-object v2, p2, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->c:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    const-string v1, "show_between"

    iget-object v2, p2, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->d:Ltp3;

    invoke-static {p1, v0, v1, v2}, Lra5;->D(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;)V

    iget-object p2, p2, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->e:Ltp3;

    iget-object p0, p0, Lcom/yandex/div2/p0$c;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {p0}, Lcom/yandex/div2/JsonParserComponent;->T2()Lyi5;

    move-result-object p0

    const-string v1, "style"

    invoke-static {p1, v0, v1, p2, p0}, Lra5;->I(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ltp3;Lyi5;)V

    return-object v0
.end method
