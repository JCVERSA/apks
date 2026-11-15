.class public abstract Ltb5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
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

.method public static d(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v0

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Ltb5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lpnb;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Ltb5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lpnb;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lpnb;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Ltb5;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface {p3, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_1

    :try_start_1
    invoke-interface {p4, p3}, Lpnb;->a(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p3

    :cond_0
    invoke-static {p1, p2, p3}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-static {p1, p2, p3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1, p2, p0}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p3

    invoke-static {p1, p2, p0, p3}, Lmx7;->k(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :catch_2
    invoke-static {p1, p2, p0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_2
    invoke-static {p1, p2}, Lmx7;->m(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public static g(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {p3}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lw92;

    invoke-interface {p3, p0, v0}, Lw92;->a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    invoke-static {p1, p2, p0}, Lmx7;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_1
    invoke-static {p1, p2}, Lmx7;->m(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public static h(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lpnb;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Ltb5;->f(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lpnb;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;
    .locals 5

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ltb5;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p3}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw92;

    invoke-interface {v4, p0, v3}, Lw92;->a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v4

    invoke-static {v0, p2, v2, v3}, Lmx7;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lcom/yandex/div/json/ParsingException;

    move-result-object v3

    invoke-interface {v4, v3}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    invoke-static {p1, p2}, Lmx7;->m(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public static j(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lhm5;)Ljava/util/List;
    .locals 6

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :try_start_0
    invoke-interface {p4, p3}, Lhm5;->a(Ljava/util/List;)Z

    move-result p4

    if-nez p4, :cond_0

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p4

    invoke-static {p1, p2, p3}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v0

    invoke-interface {p4, v0}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p3

    :catch_0
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object p3

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Ltb5;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-interface {p3}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lw92;

    invoke-interface {v5, p0, v4}, Lw92;->a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v5

    invoke-static {v0, p2, v3, v4}, Lmx7;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lcom/yandex/div/json/ParsingException;

    move-result-object v4

    invoke-interface {v5, v4}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-interface {p4, v2}, Lhm5;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    :cond_5
    invoke-static {p1, p2, v2}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    invoke-static {p1, p2, v2}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_6
    invoke-static {p1, p2}, Lmx7;->m(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public static k(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v0

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Ltb5;->m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lpnb;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static l(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Ltb5;->m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lpnb;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lpnb;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1, p2}, Ltb5;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p3, v0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p3, :cond_1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, v0}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1

    :cond_1
    :try_start_1
    invoke-interface {p4, p3}, Lpnb;->a(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p3

    invoke-static {p1, p2, v0}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p4

    invoke-interface {p3, p4}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :cond_2
    return-object p3

    :catch_0
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, v0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1

    :catch_1
    move-exception p3

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, v0, p3}, Lmx7;->k(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1

    :catch_2
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, v0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static n(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {p3}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lw92;

    invoke-interface {p3, p0, v0}, Lw92;->a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p3

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lmx7;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Exception;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static o(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lpnb;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p3}, Ltb5;->m(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lpnb;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static p(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;)Ljava/util/List;
    .locals 6

    invoke-static {}, Lob5;->e()Lpnb;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Ltb5;->q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;Lpnb;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static q(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Le74;Lhm5;Lpnb;)Ljava/util/List;
    .locals 8

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :try_start_0
    invoke-interface {p4, p3}, Lhm5;->a(Ljava/util/List;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p4

    invoke-static {p1, p2, p3}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p5

    invoke-interface {p4, p5}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object p3

    :catch_0
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    invoke-static {v0, v4}, Ltb5;->b(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {p3, v5}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-interface {p5, v5}, Lpnb;->a(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v6

    invoke-static {v0, p2, v4, v5}, Lmx7;->h(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v7

    invoke-interface {v6, v7}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v6

    invoke-static {v0, p2, v4, v5}, Lmx7;->w(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v5

    invoke-interface {v6, v5}, Llx7;->c(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_2
    move-exception v6

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v7

    invoke-static {v0, p2, v4, v5, v6}, Lmx7;->i(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object v5

    invoke-interface {v7, v5}, Llx7;->c(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_3
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v6

    invoke-static {v0, p2, v4, v5}, Lmx7;->w(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v5

    invoke-interface {v6, v5}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :try_start_3
    invoke-interface {p4, v3}, Lhm5;->a(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_7

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p3

    invoke-static {p1, p2, v3}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p4

    invoke-interface {p3, p4}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_4

    return-object v1

    :cond_7
    return-object v3

    :catch_4
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, v3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static r(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;)Ljava/util/List;
    .locals 5

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Ltb5;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-interface {p3}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lw92;

    invoke-interface {v4, p0, v3}, Lw92;->a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v4

    invoke-static {p1, p2, v2, v3}, Lmx7;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lcom/yandex/div/json/ParsingException;

    move-result-object v3

    invoke-interface {v4, v3}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static s(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Lyi5;Lhm5;)Ljava/util/List;
    .locals 7

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    :try_start_0
    invoke-interface {p4, p3}, Lhm5;->a(Ljava/util/List;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p4

    invoke-static {p1, p2, p3}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object v0

    invoke-interface {p4, v0}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_1
    return-object p3

    :catch_0
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, p3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Ltb5;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {p3}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lw92;

    invoke-interface {v6, p0, v5}, Lw92;->a(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_1
    move-exception v5

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object v6

    invoke-static {v0, p2, v4, v5}, Lmx7;->a(Lorg/json/JSONArray;Ljava/lang/String;ILjava/lang/Exception;)Lcom/yandex/div/json/ParsingException;

    move-result-object v5

    invoke-interface {v6, v5}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :try_start_2
    invoke-interface {p4, v3}, Lhm5;->a(Ljava/util/List;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p3

    invoke-static {p1, p2, v3}, Lmx7;->j(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p4

    invoke-interface {p3, p4}, Llx7;->c(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    :cond_6
    return-object v3

    :catch_2
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, v3}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-object v1
.end method

.method public static t(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p1, p2}, Ltb5;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, v0, v2}, Lmx7;->k(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-static {p1, p2, v0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p1

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :goto_0
    return-object v1
.end method

.method public static u(Lex7;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Ltb5;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-static {p1, p2, p0, v0}, Lmx7;->k(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :catch_1
    invoke-static {p1, p2, p0}, Lmx7;->x(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0

    :cond_0
    invoke-static {p1, p2}, Lmx7;->m(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/yandex/div/json/ParsingException;

    move-result-object p0

    throw p0
.end method

.method public static v(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lob5;->f()Le74;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Ltb5;->w(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Le74;)V

    return-void
.end method

.method public static w(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Le74;)V
    .locals 0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p4, p3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static x(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;Lyi5;)V
    .locals 0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-interface {p4}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lpd9;

    invoke-interface {p4, p0, p3}, Lpd9;->b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static y(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Le74;)V
    .locals 4

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4, v3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static z(Lex7;Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;Lyi5;)V
    .locals 5

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p4}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lpd9;

    invoke-interface {v4, p0, v3}, Lpd9;->b(Lex7;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-interface {p0}, Lex7;->getLogger()Llx7;

    move-result-object p0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method
