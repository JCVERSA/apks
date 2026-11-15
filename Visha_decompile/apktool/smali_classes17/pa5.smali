.class public abstract Lpa5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lnj3;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lof1;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lof1;-><init>(Ljava/util/List;)V

    sput-object v0, Lpa5;->a:Lnj3;

    return-void
.end method

.method public static a()Lnj3;
    .locals 1

    sget-object v0, Lpa5;->a:Lnj3;

    return-object v0
.end method

.method public static b(Lorg/json/JSONArray;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;
    .locals 6

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v4

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lpa5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;
    .locals 6

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lpa5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;
    .locals 10

    invoke-static {p1, p2}, Lpa5;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/yandex/div/json/expressions/Expression;->d(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/yandex/div/json/expressions/Expression$MutableExpression;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v7

    const/4 v9, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Le74;Lpnb;Llx7;Lzbb;Lcom/yandex/div/json/expressions/Expression;)V

    return-object p1

    :cond_0
    :try_start_0
    invoke-interface {p4, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_3

    invoke-interface {p3, p0}, Lzbb;->b(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    :try_start_1
    invoke-interface {p5, p0}, Lpnb;->a(Ljava/lang/Object;)Z

    move-result p3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p3, :cond_1

    invoke-static {p0}, Lcom/yandex/div/json/expressions/Expression;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0

    :cond_1
    :try_start_2
    invoke-static {p1, p2, v0}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    invoke-static {p1, p2, v0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {p1, p2, v0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_3
    invoke-static {p1, p2, v0}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    invoke-static {p1, p2, v0, p0}, Lmx7;->k(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :catch_2
    invoke-static {p1, p2, v0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_4
    invoke-static {p1, p2}, Lmx7;->m(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public static g(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Lpnb;)Lcom/yandex/div/json/expressions/Expression;
    .locals 6

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lpa5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;)Lcom/yandex/div/json/expressions/Expression;
    .locals 7

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v4

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;)Lcom/yandex/div/json/expressions/Expression;
    .locals 7

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;)Lcom/yandex/div/json/expressions/Expression;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;
    .locals 9

    invoke-static {p1, p2}, Lpa5;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-static {v3}, Lcom/yandex/div/json/expressions/Expression;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v6

    move-object v1, v0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v7, p3

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Le74;Lpnb;Llx7;Lzbb;Lcom/yandex/div/json/expressions/Expression;)V

    return-object v0

    :cond_1
    :try_start_0
    invoke-interface {p4, v3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_2

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {p1, p2, v3}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v1

    invoke-interface {v0, v1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v4

    :cond_2
    invoke-interface {p3, v0}, Lzbb;->b(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {p1, p2, v3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v1

    invoke-interface {v0, v1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v4

    :cond_3
    :try_start_1
    invoke-interface {p5, v0}, Lpnb;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {p1, p2, v3}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v5

    invoke-interface {v0, v5}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4

    :cond_4
    invoke-static {v0}, Lcom/yandex/div/json/expressions/Expression;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    return-object v0

    :catch_0
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {p1, p2, v3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v1

    invoke-interface {v0, v1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v4

    :catch_1
    move-exception v0

    move-object v5, v0

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {p1, p2, v3, v5}, Lmx7;->k(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object v1

    invoke-interface {v0, v1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v4

    :catch_2
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {p1, p2, v3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v1

    invoke-interface {v0, v1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v4
.end method

.method public static l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;
    .locals 7

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;
    .locals 7

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lpa5;->k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lpnb;Lcom/yandex/div/json/expressions/Expression;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lhm5;)Lnj3;
    .locals 7

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lpa5;->o(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lhm5;Lpnb;)Lnj3;

    move-result-object p0

    return-object p0
.end method

.method public static o(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lzbb;Le74;Lhm5;Lpnb;)Lnj3;
    .locals 21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual/range {p1 .. p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :try_start_0
    invoke-interface {v3, v0}, Lhm5;->a(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v3

    invoke-static {v1, v2, v0}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v4

    invoke-interface {v3, v4}, Llx7;->c(Ljava/lang/Exception;)V

    invoke-static {}, Lpa5;->a()Lnj3;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_1
    invoke-static {}, Lpa5;->a()Lnj3;

    move-result-object v0

    return-object v0

    :catch_0
    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v3

    invoke-static {v1, v2, v0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v0

    invoke-interface {v3, v0}, Llx7;->c(Ljava/lang/Exception;)V

    invoke-static {}, Lpa5;->a()Lnj3;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v9, v6, :cond_9

    invoke-static {v4, v9}, Lpa5;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v12}, Lcom/yandex/div/json/expressions/Expression;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v11, :cond_4

    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v11

    :cond_4
    new-instance v0, Lcom/yandex/div/json/expressions/Expression$MutableExpression;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "["

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v20, 0x0

    move-object v13, v0

    move-object/from16 v16, p4

    move-object/from16 v17, p6

    move-object/from16 v18, v11

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v20}, Lcom/yandex/div/json/expressions/Expression$MutableExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Le74;Lpnb;Llx7;Lzbb;Lcom/yandex/div/json/expressions/Expression;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v14, p3

    move-object/from16 v13, p4

    :goto_2
    move-object/from16 v15, p6

    goto/16 :goto_3

    :cond_5
    move-object/from16 v13, p4

    :try_start_1
    invoke-interface {v13, v12}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_6

    move-object/from16 v14, p3

    goto :goto_2

    :cond_6
    move-object/from16 v14, p3

    invoke-interface {v14, v0}, Lzbb;->b(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {v4, v2, v9, v12}, Lmx7;->w(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v12

    invoke-interface {v0, v12}, Llx7;->c(Ljava/lang/Exception;)V

    goto :goto_2

    :cond_7
    move-object/from16 v15, p6

    :try_start_2
    invoke-interface {v15, v0}, Lpnb;->a(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v12

    invoke-static {v4, v2, v9, v0}, Lmx7;->h(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v8

    invoke-interface {v12, v8}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_8
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_1
    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v8

    invoke-static {v4, v2, v9, v0}, Lmx7;->w(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v0

    invoke-interface {v8, v0}, Llx7;->c(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v14, p3

    move-object/from16 v15, p6

    move-object v8, v0

    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {v4, v2, v9, v12, v8}, Lmx7;->i(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object v8

    invoke-interface {v0, v8}, Llx7;->c(Ljava/lang/Exception;)V

    goto :goto_3

    :catch_3
    move-object/from16 v14, p3

    move-object/from16 v15, p6

    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {v4, v2, v9, v12}, Lmx7;->w(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v8

    invoke-interface {v0, v8}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v10, :cond_c

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_b

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/yandex/div/json/expressions/Expression;

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v1}, Lcom/yandex/div/json/expressions/Expression;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    invoke-interface {v7, v8, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_b
    new-instance v0, Lcom/yandex/div/json/expressions/MutableExpressionList;

    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v1

    invoke-direct {v0, v2, v7, v3, v1}, Lcom/yandex/div/json/expressions/MutableExpressionList;-><init>(Ljava/lang/String;Ljava/util/List;Lhm5;Llx7;)V

    return-object v0

    :cond_c
    :try_start_3
    invoke-interface {v3, v7}, Lhm5;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {v1, v2, v7}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v3

    invoke-interface {v0, v3}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    return-object v5

    :cond_d
    new-instance v0, Lof1;

    invoke-direct {v0, v7}, Lof1;-><init>(Ljava/util/List;)V

    return-object v0

    :catch_4
    invoke-interface/range {p0 .. p0}, Lex7;->getLogger()Llx7;

    move-result-object v0

    invoke-static {v1, v2, v7}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v1

    invoke-interface {v0, v1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v5
.end method

.method public static p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;)V
    .locals 1

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lpa5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V

    return-void
.end method

.method public static q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lcom/yandex/div/json/expressions/Expression;Le74;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/yandex/div/json/expressions/Expression;->c()Ljava/lang/Object;

    move-result-object v0

    instance-of p3, p3, Lcom/yandex/div/json/expressions/Expression$MutableExpression;

    if-nez p3, :cond_1

    :try_start_0
    invoke-interface {p4, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public static r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lnj3;Le74;)V
    .locals 5

    if-nez p3, :cond_0

    return-void

    :cond_0
    instance-of v0, p3, Lof1;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Loj3;->b:Loj3;

    invoke-interface {p3, v0}, Lnj3;->a(Loj3;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_1
    return-void

    :cond_2
    instance-of v0, p3, Lcom/yandex/div/json/expressions/MutableExpressionList;

    if-eqz v0, :cond_6

    check-cast p3, Lcom/yandex/div/json/expressions/MutableExpressionList;

    invoke-virtual {p3}, Lcom/yandex/div/json/expressions/MutableExpressionList;->c()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    if-ge v1, v0, :cond_5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yandex/div/json/expressions/Expression;

    instance-of v4, v3, Lcom/yandex/div/json/expressions/Expression$b;

    if-eqz v4, :cond_4

    sget-object v4, Loj3;->b:Loj3;

    invoke-virtual {v3, v4}, Lcom/yandex/div/json/expressions/Expression;->b(Loj3;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/yandex/div/json/expressions/Expression;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    :try_start_1
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :cond_6
    :goto_4
    return-void
.end method
