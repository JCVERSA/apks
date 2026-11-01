.class public abstract Lcom/wandoujia/download/rpc/c;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "buffer"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "state"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    invoke-static {v0}, Lcom/wandoujia/download/rpc/c;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "count"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1

    const-string v3, "buffer"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :cond_2
    return-object v0

    :catch_2
    return-object p0
.end method

.method public static c(Landroid/content/Context;J)I
    .locals 1

    invoke-static {p0}, Lcom/wandoujia/download/rpc/e;->h(Landroid/content/Context;)Lcom/wandoujia/download/rpc/e;

    move-result-object p0

    sget-object v0, Lcom/wandoujia/download/rpc/DownloadConstants$a;->a:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/wandoujia/download/rpc/e;->f(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static d(Lcom/wandoujia/download/rpc/InnerDownloadFilter;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/wandoujia/download/rpc/InnerDownloadFilter;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a$a;

    iget-object v4, v3, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a$a;->a:Lcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;

    invoke-virtual {v4}, Lcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;->getColumnName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    add-int/2addr v2, v5

    if-ne v2, v5, :cond_0

    const-string v6, " ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v6, " AND ("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    sget-object v6, Lcom/wandoujia/download/rpc/c$a;->a:[I

    iget-object v7, v3, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a$a;->b:Lcom/wandoujia/download/rpc/InnerDownloadFilter$Operator;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v5, :cond_5

    const/4 v5, 0x2

    if-eq v6, v5, :cond_4

    const/4 v5, 0x3

    if-eq v6, v5, :cond_3

    const/4 v5, 0x4

    if-eq v6, v5, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v3, v3, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a$a;->c:Ljava/util/List;

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    const-string v6, " LIKE "

    if-nez v5, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v7, " AND "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const-string v4, " < "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a$a;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_4
    const-string v4, " > "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a$a;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_5
    iget-object v3, v3, Lcom/wandoujia/download/rpc/InnerDownloadFilter$a$a;->c:Ljava/util/List;

    const/4 v5, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    const-string v6, " = "

    if-nez v5, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    const-string v7, " OR "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_6
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(IILcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;Z)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    const-string v1, " offset "

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;->getColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ASC LIMIT "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;->getColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " DESC LIMIT "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resouce_identity IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/wandoujia/download/rpc/e;->h(Landroid/content/Context;)Lcom/wandoujia/download/rpc/e;

    move-result-object v3

    sget-object v4, Lcom/wandoujia/download/rpc/DownloadConstants$a;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, [Ljava/lang/String;

    const-string v8, "_id DESC"

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/wandoujia/download/rpc/e;->l(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v2}, Lcom/wandoujia/download/rpc/c;->p(Landroid/database/Cursor;)Lcom/wandoujia/download/rpc/h;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :goto_3
    :try_start_1
    const-string p1, "DownloadDbException"

    invoke-static {p1, p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_4
    return-object v1

    :goto_5
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lcom/wandoujia/download/rpc/h;
    .locals 0

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/wandoujia/download/rpc/c;->f(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/wandoujia/download/rpc/h;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/Long;)Lcom/wandoujia/download/rpc/h;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/wandoujia/download/rpc/e;->h(Landroid/content/Context;)Lcom/wandoujia/download/rpc/e;

    move-result-object v1

    sget-object v2, Lcom/wandoujia/download/rpc/DownloadConstants$a;->a:Landroid/net/Uri;

    const-string v4, "_id= ?"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/wandoujia/download/rpc/e;->l(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/wandoujia/download/rpc/c;->p(Landroid/database/Cursor;)Lcom/wandoujia/download/rpc/h;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_1
    :try_start_2
    const-string v1, "DownloadDbException"

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_2
    return-object v0

    :goto_3
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1
.end method

.method public static i(Landroid/content/Context;Lcom/wandoujia/download/rpc/InnerDownloadFilter;IILcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;Z)Ljava/util/List;
    .locals 2

    invoke-static {p2, p3, p4, p5}, Lcom/wandoujia/download/rpc/c;->e(IILcom/wandoujia/download/rpc/InnerDownloadFilter$FilterArea;Z)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1}, Lcom/wandoujia/download/rpc/c;->d(Lcom/wandoujia/download/rpc/InnerDownloadFilter;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/wandoujia/download/rpc/e;->h(Landroid/content/Context;)Lcom/wandoujia/download/rpc/e;

    move-result-object p0

    sget-object p1, Lcom/wandoujia/download/rpc/DownloadConstants$a;->a:Landroid/net/Uri;

    const/4 p2, 0x0

    const/4 p4, 0x0

    invoke-virtual/range {p0 .. p5}, Lcom/wandoujia/download/rpc/e;->l(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {v1}, Lcom/wandoujia/download/rpc/c;->p(Landroid/database/Cursor;)Lcom/wandoujia/download/rpc/h;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_0
    if-eqz v1, :cond_1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_3
    const-string p1, "DownloadDbException"

    invoke-static {p1, p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_3
    return-object v0

    :goto_4
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p0
.end method

.method public static j([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Ljava/lang/String;Landroid/database/Cursor;)I
    .locals 0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;Landroid/database/Cursor;)J
    .locals 0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/content/Context;Lcom/wandoujia/download/rpc/InnerDownloadRequest;)J
    .locals 9

    const-string v0, "download-task"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->a:Ljava/lang/String;

    const-string v3, "uri"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "allowed_download_without_wifi"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_1

    iget-wide v6, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->g:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_0

    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->d:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    invoke-static {v2, v6, v7}, Lcom/wandoujia/download/utils/StorageUtil;->f(Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;J)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->d:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    invoke-static {v2}, Lcom/wandoujia/download/utils/StorageUtil;->e(Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->m:Ljava/lang/String;

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v6, "filename"

    invoke-static {v1, v6, v2}, Lcom/wandoujia/download/rpc/c;->o(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->n:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/snaptube/premium/vault/LockManager;->a:Lcom/snaptube/premium/vault/LockManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->n:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/snaptube/premium/vault/LockManager;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->n:Ljava/lang/String;

    invoke-static {v6}, Lo/nj2;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    iget-object v6, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->n:Ljava/lang/String;

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "_data"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->t:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    if-eqz v2, :cond_5

    const-string v6, "verify_type"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "verify_value"

    iget-object v6, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->u:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-boolean v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->r:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v6, "visible"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "no_integrity"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->e:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string v6, "resource_extras"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->d:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "resource_type"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "source"

    iget-object v6, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->i:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/wandoujia/download/rpc/c;->o(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v6, "current_bytes"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-wide v6, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->g:J

    cmp-long v2, v6, v4

    if-lez v2, :cond_8

    move-wide v4, v6

    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "total_bytes"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v2, 0xbd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "title"

    iget-object v4, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->b:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/wandoujia/download/rpc/c;->o(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "description"

    iget-object v4, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->h:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/wandoujia/download/rpc/c;->o(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "icon_url"

    iget-object v4, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->k:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/wandoujia/download/rpc/c;->o(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v4, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "check_size"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "resouce_identity"

    iget-object v4, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->l:[Ljava/lang/String;

    invoke-static {v2}, Lcom/wandoujia/download/rpc/c;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dservice_urls"

    invoke-static {v1, v3, v2}, Lcom/wandoujia/download/rpc/c;->o(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->s:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "speed_limit"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->j:Ljava/util/Map;

    if-eqz v2, :cond_9

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/wandoujia/download/rpc/InnerDownloadRequest;->j:Ljava/util/Map;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "headers_list"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_2
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Values to insert: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/wandoujia/download/rpc/e;->h(Landroid/content/Context;)Lcom/wandoujia/download/rpc/e;

    move-result-object p0

    sget-object p1, Lcom/wandoujia/download/rpc/DownloadConstants$a;->a:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1}, Lcom/wandoujia/download/rpc/e;->j(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri returned from DB: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_a

    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    :catch_1
    move-exception p0

    const-string p1, "DownloadDbException"

    invoke-static {p1, p0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public static o(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static p(Landroid/database/Cursor;)Lcom/wandoujia/download/rpc/h;
    .locals 11

    new-instance v0, Lcom/wandoujia/download/rpc/h;

    invoke-direct {v0}, Lcom/wandoujia/download/rpc/h;-><init>()V

    const-string v1, "allowed_download_without_wifi"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/wandoujia/download/rpc/h;->A:Z

    const-string v1, "current_bytes"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->l(Ljava/lang/String;Landroid/database/Cursor;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/wandoujia/download/rpc/h;->r:J

    const-string v1, "description"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->e:Ljava/lang/String;

    const-string v1, "_data"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->m:Ljava/lang/String;

    const-string v1, "filename"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->z:Ljava/lang/String;

    const-string v1, "_id"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->l(Ljava/lang/String;Landroid/database/Cursor;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/wandoujia/download/rpc/h;->a:J

    const-string v1, "lastmod"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->l(Ljava/lang/String;Landroid/database/Cursor;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/wandoujia/download/rpc/h;->q:J

    const-string v1, "mimetype"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->c:Ljava/lang/String;

    const-string v1, "uri"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->b:Ljava/lang/String;

    const-string v1, "notification_class"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->E:Ljava/lang/String;

    invoke-static {}, Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;->values()[Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    move-result-object v1

    const-string v4, "resource_type"

    invoke-static {v4, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v4

    aget-object v1, v1, v4

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->g:Lcom/wandoujia/download/rpc/DownloadConstants$ResourceType;

    const-string v1, "resouce_identity"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->h:Ljava/lang/String;

    const-string v1, "resource_extras"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->i:Ljava/lang/String;

    const-string v1, "status"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/download/rpc/h;->f(I)V

    const-string v1, "title"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->d:Ljava/lang/String;

    const-string v1, "total_bytes"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->l(Ljava/lang/String;Landroid/database/Cursor;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/wandoujia/download/rpc/h;->f:J

    const-string v1, "use_agent"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->F:Ljava/lang/String;

    const-string v1, "visible"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/wandoujia/download/rpc/h;->p:Z

    const-string v1, "no_integrity"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/wandoujia/download/rpc/h;->D:Z

    const-string v1, "failed_times"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->B:I

    const-string v1, "source"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->k:Ljava/lang/String;

    const-string v1, "check_size"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->G:I

    const-string v1, "icon_url"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->l:Ljava/lang/String;

    const-string v1, "duration"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->l(Ljava/lang/String;Landroid/database/Cursor;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/wandoujia/download/rpc/h;->j:J

    const-string v1, "segment_config"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "dservice_urls"

    invoke-static {v4, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/wandoujia/download/rpc/c;->q(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/wandoujia/download/rpc/h;->w:[Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v1}, Lcom/wandoujia/download/model/segments/DownloadConfigInfo;->fromJson(Ljava/lang/String;)Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->x:Lcom/wandoujia/download/model/segments/DownloadConfigInfo;

    :cond_3
    const-string v1, "verify_type"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-class v4, Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    invoke-static {v4, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->u:Lcom/wandoujia/download/rpc/DownloadConstants$VerifyType;

    :cond_4
    const-string v1, "verify_value"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->v:Ljava/lang/String;

    const-string v1, "md5_checksum"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->s:Ljava/lang/String;

    const-string v1, "retried_urls"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->n:Ljava/lang/String;

    const-string v1, "last_url_retried_times"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    iput v1, v0, Lcom/wandoujia/download/rpc/h;->o:I

    const-string v1, "speed_limit"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->l(Ljava/lang/String;Landroid/database/Cursor;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/wandoujia/download/rpc/h;->t:J

    const-string v1, "speed"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->l(Ljava/lang/String;Landroid/database/Cursor;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/wandoujia/download/rpc/h;->e(J)V

    const-string v1, "md5_state"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/wandoujia/download/rpc/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v4, Lcom/twmacinta/util/MD5State;

    invoke-static {v1, v4}, Lo/j23;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twmacinta/util/MD5State;

    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->H:Lcom/twmacinta/util/MD5State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    :try_start_1
    const-string v1, "headers_list"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_5

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_6

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_7

    :cond_6
    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_7
    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->K:Ljava/util/Map;

    goto :goto_8

    :cond_8
    const-string v1, "headers"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_9
    iput-object v1, v0, Lcom/wandoujia/download/rpc/h;->K:Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_a
    :goto_8
    const-string v1, "is_download_with_multi_thread"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->k(Ljava/lang/String;Landroid/database/Cursor;)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    :cond_b
    iput-boolean v2, v0, Lcom/wandoujia/download/rpc/h;->L:Z

    :try_start_2
    const-string v1, "downloaded_sections"

    invoke-static {v1, p0}, Lcom/wandoujia/download/rpc/c;->m(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p0}, Lcom/wandoujia/mtdownload/c;->c(Ljava/lang/String;)Lcom/wandoujia/mtdownload/c;

    move-result-object p0

    iput-object p0, v0, Lcom/wandoujia/download/rpc/h;->M:Lcom/wandoujia/mtdownload/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_9
    return-object v0
.end method

.method public static q(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static r(Landroid/content/Context;JLandroid/content/ContentValues;)I
    .locals 1

    invoke-static {p0}, Lcom/wandoujia/download/rpc/e;->h(Landroid/content/Context;)Lcom/wandoujia/download/rpc/e;

    move-result-object p0

    sget-object v0, Lcom/wandoujia/download/rpc/DownloadConstants$a;->a:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2, p2}, Lcom/wandoujia/download/rpc/e;->m(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
