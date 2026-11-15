.class public final Lcom/yandex/div2/p0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/p0;
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

    iput-object p1, p0, Lcom/yandex/div2/p0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/p0$d;->b(Lex7;Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivContainer$Separator;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivContainer$Separator;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "context"

    move-object/from16 v10, p1

    invoke-static {v10, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "template"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "data"

    move-object/from16 v11, p3

    invoke-static {v11, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/yandex/div2/DivContainer$Separator;

    iget-object v4, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->a:Ltp3;

    iget-object v3, v0, Lcom/yandex/div2/p0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->X2()Lyi5;

    move-result-object v7

    iget-object v3, v0, Lcom/yandex/div2/p0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v3}, Lcom/yandex/div2/JsonParserComponent;->V2()Lyi5;

    move-result-object v8

    const-string v6, "margins"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->p(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/yandex/div2/DivEdgeInsets;

    iget-object v4, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->b:Ltp3;

    sget-object v13, Lacb;->a:Lzbb;

    sget-object v14, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->f:Le74;

    sget-object v15, Lcom/yandex/div2/p0;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "show_at_end"

    move-object/from16 v3, p1

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v3

    :goto_0
    iget-object v4, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->c:Ltp3;

    sget-object v16, Lcom/yandex/div2/p0;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "show_at_start"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, v16

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v3

    :goto_1
    iget-object v4, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->d:Ltp3;

    sget-object v17, Lcom/yandex/div2/p0;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v6, "show_between"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object v7, v13

    move-object v8, v14

    move-object/from16 v9, v17

    invoke-static/range {v3 .. v9}, Lsa5;->v(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v17, v3

    :goto_2
    iget-object v4, v1, Lcom/yandex/div2/DivContainerTemplate$SeparatorTemplate;->e:Ltp3;

    iget-object v1, v0, Lcom/yandex/div2/p0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v1}, Lcom/yandex/div2/JsonParserComponent;->U2()Lyi5;

    move-result-object v7

    iget-object v0, v0, Lcom/yandex/div2/p0$d;->a:Lcom/yandex/div2/JsonParserComponent;

    invoke-virtual {v0}, Lcom/yandex/div2/JsonParserComponent;->S2()Lyi5;

    move-result-object v8

    const-string v6, "style"

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lsa5;->d(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lyi5;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "resolve(context, templat\u2026DrawableJsonEntityParser)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v0

    check-cast v8, Lcom/yandex/div2/DivDrawable;

    move-object v3, v2

    move-object v4, v12

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-direct/range {v3 .. v8}, Lcom/yandex/div2/DivContainer$Separator;-><init>(Lcom/yandex/div2/DivEdgeInsets;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div2/DivDrawable;)V

    return-object v2
.end method
