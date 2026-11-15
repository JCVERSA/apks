.class public Lcom/mbridge/msdk/tracker/network/toolbox/f;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static a(Lcom/mbridge/msdk/tracker/network/q;)Lcom/mbridge/msdk/tracker/network/b$a;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2
    iget-object v3, v0, Lcom/mbridge/msdk/tracker/network/q;->c:Ljava/util/Map;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 3
    :cond_0
    const-string v5, "Date"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 4
    invoke-static {v5}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->b(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    .line 5
    :goto_0
    const-string v5, "Cache-Control"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v5, :cond_9

    .line 6
    const-string v11, ","

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    move v11, v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 7
    :goto_1
    array-length v6, v5

    if-ge v10, v6, :cond_8

    .line 8
    aget-object v6, v5, v10

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 9
    const-string v7, "no-cache"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "no-store"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 10
    :cond_2
    const-string v7, "max-age="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x8

    .line 11
    :try_start_0
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 12
    :cond_3
    const-string v7, "stale-while-revalidate="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x17

    .line 13
    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 14
    :cond_4
    const-string v7, "must-revalidate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "proxy-revalidate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v11, 0x1

    :catch_0
    :cond_6
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    return-object v4

    :cond_8
    const/4 v10, 0x1

    goto :goto_4

    :cond_9
    move v11, v10

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    .line 15
    :goto_4
    const-string v4, "Expires"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 16
    invoke-static {v4}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->b(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_5

    :cond_a
    const-wide/16 v4, 0x0

    .line 17
    :goto_5
    const-string v6, "Last-Modified"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 18
    invoke-static {v6}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->b(Ljava/lang/String;)J

    move-result-wide v6

    move-wide/from16 v16, v6

    goto :goto_6

    :cond_b
    const-wide/16 v16, 0x0

    .line 19
    :goto_6
    const-string v6, "ETag"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v10, :cond_d

    const-wide/16 v4, 0x3e8

    mul-long/2addr v12, v4

    add-long/2addr v1, v12

    if-eqz v11, :cond_c

    :goto_7
    move-wide v10, v1

    goto :goto_8

    :cond_c
    invoke-static {v14, v15}, Ljava/lang/Long;->signum(J)I

    mul-long/2addr v14, v4

    add-long v4, v1, v14

    move-wide v10, v1

    move-wide v1, v4

    goto :goto_8

    :cond_d
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_e

    cmp-long v7, v4, v8

    if-ltz v7, :cond_e

    sub-long/2addr v4, v8

    add-long/2addr v1, v4

    goto :goto_7

    :cond_e
    move-wide v1, v10

    .line 20
    :goto_8
    new-instance v4, Lcom/mbridge/msdk/tracker/network/b$a;

    invoke-direct {v4}, Lcom/mbridge/msdk/tracker/network/b$a;-><init>()V

    .line 21
    iget-object v5, v0, Lcom/mbridge/msdk/tracker/network/q;->b:[B

    iput-object v5, v4, Lcom/mbridge/msdk/tracker/network/b$a;->a:[B

    .line 22
    iput-object v6, v4, Lcom/mbridge/msdk/tracker/network/b$a;->b:Ljava/lang/String;

    .line 23
    iput-wide v10, v4, Lcom/mbridge/msdk/tracker/network/b$a;->f:J

    .line 24
    iput-wide v1, v4, Lcom/mbridge/msdk/tracker/network/b$a;->e:J

    .line 25
    iput-wide v8, v4, Lcom/mbridge/msdk/tracker/network/b$a;->c:J

    move-wide/from16 v6, v16

    .line 26
    iput-wide v6, v4, Lcom/mbridge/msdk/tracker/network/b$a;->d:J

    .line 27
    iput-object v3, v4, Lcom/mbridge/msdk/tracker/network/b$a;->g:Ljava/util/Map;

    .line 28
    iget-object v0, v0, Lcom/mbridge/msdk/tracker/network/q;->d:Ljava/util/List;

    iput-object v0, v4, Lcom/mbridge/msdk/tracker/network/b$a;->h:Ljava/util/List;

    return-object v4
.end method

.method static a(J)Ljava/lang/String;
    .locals 2

    .line 29
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 39
    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    .line 32
    :cond_0
    const-string v0, "Content-Type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 33
    const-string v0, ";"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    move v2, v0

    .line 34
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 35
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 36
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 37
    aget-object v4, v3, v1

    const-string v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    aget-object p0, v3, v0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 2

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 31
    const-string p0, "GMT"

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method static a(Ljava/util/List;Lcom/mbridge/msdk/tracker/network/b$a;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/network/g;",
            ">;",
            "Lcom/mbridge/msdk/tracker/network/b$a;",
            ")",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/tracker/network/g;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 41
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/tracker/network/g;

    .line 43
    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/network/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    iget-object p0, p1, Lcom/mbridge/msdk/tracker/network/b$a;->h:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 46
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 47
    iget-object p0, p1, Lcom/mbridge/msdk/tracker/network/b$a;->h:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/tracker/network/g;

    .line 48
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/network/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 50
    :cond_2
    iget-object p0, p1, Lcom/mbridge/msdk/tracker/network/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    .line 51
    iget-object p0, p1, Lcom/mbridge/msdk/tracker/network/b$a;->g:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 53
    new-instance v2, Lcom/mbridge/msdk/tracker/network/g;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v2, v3, p1}, Lcom/mbridge/msdk/tracker/network/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method

.method static a(Lcom/mbridge/msdk/tracker/network/b$a;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mbridge/msdk/tracker/network/b$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 54
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/mbridge/msdk/tracker/network/b$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 57
    const-string v2, "If-None-Match"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_1
    iget-wide v1, p0, Lcom/mbridge/msdk/tracker/network/b$a;->d:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_2

    .line 59
    invoke-static {v1, v2}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->a(J)Ljava/lang/String;

    move-result-object p0

    .line 60
    const-string v1, "If-Modified-Since"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    :try_start_0
    const-string v4, "EEE, dd MMM yyyy HH:mm:ss zzz"

    .line 6
    .line 7
    invoke-static {v4}, Lcom/mbridge/msdk/tracker/network/toolbox/f;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-virtual {v4, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v4

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    return-wide v2

    .line 25
    :goto_1
    const-string v5, "0"

    .line 26
    .line 27
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const-string v6, "Unable to parse dateStr: %s, falling back to 0"

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    const-string v5, "-1"

    .line 36
    .line 37
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_1

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    aput-object p0, v1, v0

    .line 47
    .line 48
    invoke-static {v4, v6, v1}, Lcom/mbridge/msdk/tracker/network/c0;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_3

    .line 52
    :cond_2
    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object p0, v1, v0

    .line 55
    .line 56
    invoke-static {v6, v1}, Lcom/mbridge/msdk/tracker/network/c0;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :goto_3
    return-wide v2
.end method
