.class public Lcn/com/custommma/mobile/tracking/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lcn/com/custommma/mobile/tracking/api/a;

.field public static d:Lcn/com/custommma/mobile/tracking/util/LRU;

.field public static e:Lcn/com/custommma/mobile/tracking/util/LRU;

.field public static f:Ljava/util/Map;

.field public static g:Ljava/util/Map;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/custommma/mobile/tracking/api/a;->b:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "RecordEventMessage context can`t be null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/api/a;
    .locals 2

    sget-object v0, Lcn/com/custommma/mobile/tracking/api/a;->c:Lcn/com/custommma/mobile/tracking/api/a;

    if-nez v0, :cond_1

    const-class v0, Lcn/com/custommma/mobile/tracking/api/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/com/custommma/mobile/tracking/api/a;->c:Lcn/com/custommma/mobile/tracking/api/a;

    if-nez v1, :cond_0

    new-instance v1, Lcn/com/custommma/mobile/tracking/api/a;

    invoke-direct {v1, p0}, Lcn/com/custommma/mobile/tracking/api/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcn/com/custommma/mobile/tracking/api/a;->c:Lcn/com/custommma/mobile/tracking/api/a;

    new-instance p0, Lcn/com/custommma/mobile/tracking/util/LRU;

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lcn/com/custommma/mobile/tracking/util/LRU;-><init>(I)V

    sput-object p0, Lcn/com/custommma/mobile/tracking/api/a;->d:Lcn/com/custommma/mobile/tracking/util/LRU;

    new-instance p0, Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-direct {p0, v1}, Lcn/com/custommma/mobile/tracking/util/LRU;-><init>(I)V

    sput-object p0, Lcn/com/custommma/mobile/tracking/api/a;->e:Lcn/com/custommma/mobile/tracking/util/LRU;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcn/com/custommma/mobile/tracking/api/a;->c:Lcn/com/custommma/mobile/tracking/api/a;

    return-object p0
.end method


# virtual methods
.method public final a(Lva1;J)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object p0, p1, Lva1;->f:Lv7a;

    iget-object p0, p0, Lv7a;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lva1;->f:Lv7a;

    iget-object p0, p0, Lv7a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    add-long/2addr p0, p2

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move-wide p0, v0

    :goto_0
    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/32 p0, 0x5265c00

    add-long/2addr p0, p2

    :cond_1
    return-wide p0
.end method

.method public declared-synchronized c(Ljava/lang/String;Lcn/com/custommma/mobile/tracking/viewability/origin/CallBack;Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v7}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->g(Landroid/content/Context;)Lqx8;

    move-result-object v7

    if-eqz v7, :cond_56

    iget-object v8, v7, Lqx8;->b:Ljava/util/List;

    if-nez v8, :cond_0

    goto/16 :goto_15

    :cond_0
    const-string v8, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    :try_start_1
    invoke-static {v4}, Lna1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v7, v7, Lqx8;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lva1;

    iget-object v11, v10, Lva1;->b:Lsw2;

    iget-object v11, v11, Lsw2;->a:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_1

    move-object v9, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_16

    :catch_0
    :cond_2
    :goto_0
    if-nez v9, :cond_3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u76d1\u6d4b\u94fe\u63a5: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' \u6ca1\u6709\u5bf9\u5e94\u7684\u914d\u7f6e\u9879,\u8bf7\u68c0\u67e5sdkconfig.xml"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lrq5;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    new-instance v7, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;

    invoke-direct {v7}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;-><init>()V

    iget-object v10, v9, Lva1;->g:Lpe1;

    iget-object v10, v10, Lpe1;->e:Ljava/util/HashMap;

    invoke-virtual {v7, v10}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->setSensorarguments(Ljava/util/HashMap;)V

    const-string/jumbo v10, "trackmkmgtv"

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0xc

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move/from16 v20, v12

    goto :goto_2

    :cond_4
    const-string/jumbo v10, "trackmkmgtv"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "trackmkmgtv"

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    sub-int/2addr v13, v12

    invoke-virtual {v2, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "trackmkmgtv"

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0xb

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    move/from16 v20, v11

    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v14, v9, Lva1;->h:Ljava/lang/String;

    iget-object v15, v9, Lva1;->i:Ljava/lang/String;

    invoke-static {v4, v14, v15}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v13

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v9, Lva1;->g:Lpe1;

    iget-object v11, v11, Lpe1;->a:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v11

    move-object/from16 v11, v17

    check-cast v11, Lzf;

    iget-boolean v3, v11, Lzf;->d:Z

    if-eqz v3, :cond_6

    iget-object v3, v11, Lzf;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v11, Lzf;->b:Ljava/lang/String;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "[^"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]*"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, ""

    invoke-virtual {v4, v3, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v22, v2

    :goto_4
    move-object v2, v0

    goto/16 :goto_11

    :cond_6
    :goto_5
    move-object/from16 v11, p1

    move-object/from16 v3, p3

    goto :goto_3

    :cond_7
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-wide/16 v17, 0x3e8

    if-eqz v12, :cond_49

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lzf;

    move-object/from16 p1, v11

    iget-object v11, v12, Lzf;->a:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v12, Lzf;->b:Ljava/lang/String;

    move-object/from16 v19, v4

    const-string v4, "TS"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lva1;->j:Z

    if-eqz v3, :cond_8

    div-long v3, v5, v17

    goto :goto_7

    :cond_8
    move-wide v3, v5

    :goto_7
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_8
    move-object/from16 v22, v2

    goto/16 :goto_d

    :cond_a
    const-string v4, "AAID"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v4, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lzq8;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sget-object v12, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v12, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lna1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_c
    if-eqz v11, :cond_9

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    const-string v4, "REDIRECTURL"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lva1;->i:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".*"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    move-object/from16 v3, v21

    :goto_9
    move-object/from16 v22, v2

    goto/16 :goto_e

    :cond_f
    const-string v4, "WIFIBSSID"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v4, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v12, ":"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v22, v2

    :try_start_5
    const-string v2, ""

    invoke-virtual {v4, v12, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :catch_2
    move-exception v0

    goto/16 :goto_4

    :cond_10
    move-object/from16 v22, v2

    :goto_a
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_11

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lna1;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_11
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_12
    move-object/from16 v22, v2

    const-string v2, "WIFISSID"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_14
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_15
    const-string v2, "WIFI"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_17
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_18
    const-string v2, "LBS"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, v9, Lva1;->f:Lv7a;

    iget-boolean v2, v2, Lv7a;->a:Z

    if-eqz v2, :cond_1c

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->h(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->h(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1b

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_1b
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_1c
    const-string v2, "OAID"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/ssp/MGTVAdFactory;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lub7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_1d
    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mgmi/ssp/MGTVAdFactory;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lub7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_1f
    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_21

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_21
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_22
    const-string v2, "ADID"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    sget-object v2, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->e:Ljava/lang/String;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    sget-object v2, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->e:Ljava/lang/String;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_25

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_25
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_26
    const-string v2, "ANDROIDID"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_28

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_28
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_29
    const-string v2, "OSVS"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->n()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2b

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_2b
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_2c
    const-string v2, "TERM"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->i()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2e

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_2e
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_2f
    const-string v2, "ANAME"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    if-eqz v20, :cond_31

    invoke-static {}, Lcom/mgmi/platform/e;->b()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_30

    const-string v2, "MangoTV"

    goto :goto_b

    :cond_30
    const-string/jumbo v2, "\u8292\u679cTV"

    goto :goto_b

    :cond_31
    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_b
    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_33

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_33
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_34
    const-string v2, "AKEY"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    if-eqz v20, :cond_36

    invoke-static {}, Lcom/mgmi/platform/e;->b()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_35

    const-string v2, "com.hunantv.imgo.activity.inter"

    goto :goto_c

    :cond_35
    const-string v2, "com.hunantv.imgo.activity"

    goto :goto_c

    :cond_36
    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :goto_c
    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_38

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_38
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_39
    const-string v2, "SCWH"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3b

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_3b
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_3c
    const-string v2, "OS"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_3d
    const-string v2, "SDKVS"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "V2.2.4"

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_3e
    const-string v2, "IMEI"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v23, v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v23

    :cond_40
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_41

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_41
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    :cond_42
    const-string v2, "RAWIMEI"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {v2, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v23, v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v23

    :cond_44
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_45

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_45
    if-eqz v4, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_46
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v12, v9}, Lna1;->b(Ljava/lang/String;Lzf;Lva1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_47
    if-eqz v2, :cond_48

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_48
    :goto_d
    move-object/from16 v3, v21

    :goto_e
    move-object/from16 v11, p1

    move-object/from16 v4, v19

    move-object/from16 v2, v22

    goto/16 :goto_6

    :cond_49
    move-object/from16 v22, v2

    move-object/from16 v21, v3

    move-object/from16 v19, v4

    iget-object v2, v9, Lva1;->m:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    const-string v4, "isRoot"

    invoke-virtual {v7, v4}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4b

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    const-string v11, "isRoot"

    invoke-static {v4, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->c()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    const-string v12, "isRoot"

    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    const-string v11, "isRoot"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    const-string v11, "isRoot"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "isRoot"

    invoke-virtual {v7, v11}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4b
    const-string v4, "isSimulator"

    invoke-virtual {v7, v4}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4d

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    const-string v11, "isSimulator"

    invoke-static {v4, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v11}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->v(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    const-string v12, "isSimulator"

    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    const-string v11, "isSimulator"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    const-string v11, "isSimulator"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "isSimulator"

    invoke-virtual {v7, v11}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4d
    const-string v4, "isHook"

    invoke-virtual {v7, v4}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4f

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    const-string v11, "isHook"

    invoke-static {v4, v11}, Lcn/com/custommma/mobile/tracking/util/SdkConfigUpdateUtil;->e(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->t()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v11, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    const-string v12, "isHook"

    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->g:Ljava/util/Map;

    const-string v11, "isHook"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    sget-object v4, Lcn/com/custommma/mobile/tracking/api/a;->f:Ljava/util/Map;

    const-string v11, "isHook"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "isHook"

    invoke-virtual {v7, v11}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4f
    const-string v4, "isAdb"

    invoke-virtual {v7, v4}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_50

    const-string v4, "isAdb"

    invoke-virtual {v7, v4}, Lcn/com/custommma/mobile/tracking/util/AntiConstantStats;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v7}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->g(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v3, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_50
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lna1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    iget-object v2, v9, Lva1;->e:Lyi9;

    if-eqz v2, :cond_52

    iget-object v2, v2, Lyi9;->b:Ljava/lang/String;

    if-eqz v2, :cond_52

    const-string v2, ""

    move-object/from16 v4, v19

    invoke-virtual {v4, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v13, "V2.2.4"

    div-long v2, v5, v17

    const-string v16, ""

    iget-object v4, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v4}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcn/com/custommma/mobile/tracking/util/DeviceInfoUtil;->i()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v4, v14

    move-object v7, v15

    move-wide v14, v2

    invoke-static/range {v13 .. v20}, Lna1;->h(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lva1;->e:Lyi9;

    iget-object v3, v3, Lyi9;->b:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lna1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_52
    :goto_f
    move-object/from16 v3, v21

    goto :goto_10

    :cond_53
    const-string v2, "The monitor URL format is illegal,signature verification failed!"

    invoke-static {v2}, Lrq5;->d(Ljava/lang/String;)V

    goto :goto_f

    :goto_10
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_12

    :goto_11
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lrq5;->b(Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v5, v6}, Lcn/com/custommma/mobile/tracking/api/a;->a(Lva1;J)J

    move-result-wide v3

    sget-object v5, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->EXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    move-object/from16 v6, p3

    if-eq v6, v5, :cond_55

    sget-object v5, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->VIDEOEXPOSEWITHABILITY:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    if-ne v6, v5, :cond_54

    goto :goto_13

    :cond_54
    move-object v5, v6

    goto :goto_14

    :cond_55
    :goto_13
    sget-object v5, Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;->IMPRESSION:Lcn/com/custommma/mobile/tracking/api/ViewAbilityHandler$MonitorType;

    :goto_14
    sget-object v6, Lcn/com/custommma/mobile/tracking/api/a;->d:Lcn/com/custommma/mobile/tracking/util/LRU;

    move-object/from16 v7, p2

    invoke-virtual {v6, v2, v7}, Lcn/com/custommma/mobile/tracking/util/LRU;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Lcn/com/custommma/mobile/tracking/api/a;->e:Lcn/com/custommma/mobile/tracking/util/LRU;

    invoke-virtual {v6, v2, v5}, Lcn/com/custommma/mobile/tracking/util/LRU;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    const-string v6, "cn.com.mma.mobile.tracking.mgmi_ssp_normal"

    invoke-static {v5, v6, v2, v3, v4}, Lng9;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v2, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    const-string v3, "cn.com.mma.mobile.tracking.mgmi_ssp_normal"

    iget-object v4, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcn/com/custommma/mobile/tracking/api/SendMessageThread;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    iput-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->b:Lcn/com/custommma/mobile/tracking/api/SendMessageThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v2, v1, Lcn/com/custommma/mobile/tracking/api/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->e(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/util/AppListUploader;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v2, v3, v9}, Lcn/com/custommma/mobile/tracking/util/AppListUploader;->f(Ljava/lang/String;Lva1;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_56
    :goto_15
    :try_start_7
    const-string/jumbo v2, "\u6ca1\u6709\u8bfb\u53d6\u5230\u76d1\u6d4b\u914d\u7f6e\u6587\u4ef6,\u5f53\u524d\u4e8b\u4ef6\u65e0\u6cd5\u76d1\u6d4b!"

    invoke-static {v2}, Lrq5;->b(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :goto_16
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2
.end method
