.class public final Lcom/yandex/div2/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llga;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div2/a;
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

    iput-object p1, p0, Lcom/yandex/div2/a$d;->a:Lcom/yandex/div2/JsonParserComponent;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lex7;Lza3;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lcom/yandex/div2/DivAbsoluteEdgeInsetsTemplate;

    check-cast p3, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div2/a$d;->b(Lex7;Lcom/yandex/div2/DivAbsoluteEdgeInsetsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    move-result-object p0

    return-object p0
.end method

.method public b(Lex7;Lcom/yandex/div2/DivAbsoluteEdgeInsetsTemplate;Lorg/json/JSONObject;)Lcom/yandex/div2/DivAbsoluteEdgeInsets;
    .locals 17

    move-object/from16 v0, p2

    const-string v1, "context"

    move-object/from16 v10, p1

    invoke-static {v10, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "template"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "data"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/yandex/div2/DivAbsoluteEdgeInsets;

    iget-object v3, v0, Lcom/yandex/div2/DivAbsoluteEdgeInsetsTemplate;->a:Ltp3;

    sget-object v12, Lacb;->b:Lzbb;

    sget-object v13, Lcom/yandex/div/internal/parser/ParsingConvertersKt;->h:Le74;

    sget-object v8, Lcom/yandex/div2/a;->f:Lpnb;

    sget-object v14, Lcom/yandex/div2/a;->b:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "bottom"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v6, v12

    move-object v7, v13

    move-object v9, v14

    invoke-static/range {v2 .. v9}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v14, v2

    :goto_0
    iget-object v3, v0, Lcom/yandex/div2/DivAbsoluteEdgeInsetsTemplate;->b:Ltp3;

    sget-object v8, Lcom/yandex/div2/a;->g:Lpnb;

    sget-object v15, Lcom/yandex/div2/a;->c:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "left"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v6, v12

    move-object v7, v13

    move-object v9, v15

    invoke-static/range {v2 .. v9}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v15, v2

    :goto_1
    iget-object v3, v0, Lcom/yandex/div2/DivAbsoluteEdgeInsetsTemplate;->c:Ltp3;

    sget-object v8, Lcom/yandex/div2/a;->h:Lpnb;

    sget-object v16, Lcom/yandex/div2/a;->d:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "right"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v6, v12

    move-object v7, v13

    move-object/from16 v9, v16

    invoke-static/range {v2 .. v9}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    if-nez v2, :cond_2

    move-object/from16 v9, v16

    goto :goto_2

    :cond_2
    move-object v9, v2

    :goto_2
    iget-object v3, v0, Lcom/yandex/div2/DivAbsoluteEdgeInsetsTemplate;->d:Ltp3;

    sget-object v8, Lcom/yandex/div2/a;->i:Lpnb;

    sget-object v0, Lcom/yandex/div2/a;->e:Lcom/yandex/div/json/expressions/Expression;

    const-string v5, "top"

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v6, v12

    move-object v7, v13

    move-object v10, v9

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lsa5;->u(Lex7;Ltp3;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v2

    :goto_3
    invoke-direct {v1, v14, v15, v10, v0}, Lcom/yandex/div2/DivAbsoluteEdgeInsets;-><init>(Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v1
.end method
