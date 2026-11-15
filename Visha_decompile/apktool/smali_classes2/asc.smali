.class public abstract Lasc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/InputStream;)Lqx8;
    .locals 19

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    const-string v2, "UTF-8"

    move-object/from16 v3, p0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/4 v11, 0x1

    if-eq v2, v11, :cond_44

    if-eqz v2, :cond_42

    const/4 v12, 0x2

    const-string v13, "event"

    const-string v14, "sensorarguments"

    const-string/jumbo v15, "viewabilityarguments"

    const-string v1, "Adplacement"

    const-string v3, "argument"

    const-string v11, "company"

    if-eq v2, v12, :cond_9

    const/4 v12, 0x3

    if-eq v2, v12, :cond_0

    goto/16 :goto_c

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, v4, Lqx8;->b:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_d

    :cond_1
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v6, :cond_2

    iget-object v3, v5, Lva1;->g:Lpe1;

    iget-object v3, v3, Lpe1;->c:Ljava/util/HashMap;

    iget-object v11, v9, Lzf;->a:Ljava/lang/String;

    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    iget-object v3, v5, Lva1;->g:Lpe1;

    iget-object v3, v3, Lpe1;->d:Ljava/util/HashMap;

    iget-object v11, v9, Lzf;->a:Ljava/lang/String;

    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-eqz v8, :cond_4

    iget-object v3, v5, Lva1;->g:Lpe1;

    iget-object v3, v3, Lpe1;->e:Ljava/util/HashMap;

    iget-object v11, v9, Lzf;->a:Ljava/lang/String;

    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget-object v3, v5, Lva1;->g:Lpe1;

    iget-object v3, v3, Lpe1;->a:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 v9, 0x0

    :cond_5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    const/4 v9, 0x0

    :cond_6
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v7, 0x0

    const/4 v9, 0x0

    :cond_7
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_8
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    iget-object v1, v5, Lva1;->g:Lpe1;

    iget-object v1, v1, Lpe1;->b:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_9
    :try_start_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v12, "offlineCache"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v12, :cond_a

    :try_start_3
    new-instance v12, Lrd7;

    invoke-direct {v12}, Lrd7;-><init>()V

    iput-object v12, v4, Lqx8;->a:Lrd7;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_a
    :try_start_4
    iget-object v12, v4, Lqx8;->a:Lrd7;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz v12, :cond_d

    :try_start_5
    const-string v12, "length"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    iget-object v12, v4, Lqx8;->a:Lrd7;

    move-object/from16 v16, v5

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v12, Lrd7;->a:Ljava/lang/String;

    goto :goto_3

    :cond_b
    move-object/from16 v16, v5

    :goto_3
    const-string v5, "queueExpirationSecs"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v4, Lqx8;->a:Lrd7;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lrd7;->b:Ljava/lang/String;

    :cond_c
    const-string/jumbo v5, "timeout"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v4, Lqx8;->a:Lrd7;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lrd7;->c:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :cond_d
    move-object/from16 v16, v5

    :cond_e
    :goto_4
    :try_start_6
    const-string/jumbo v5, "viewability"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-eqz v5, :cond_f

    :try_start_7
    new-instance v5, Lsbc;

    invoke-direct {v5}, Lsbc;-><init>()V

    iput-object v5, v4, Lqx8;->c:Lsbc;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :cond_f
    :try_start_8
    const-string v5, "intervalTime"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    if-eqz v5, :cond_10

    :try_start_9
    iget-object v5, v4, Lqx8;->c:Lsbc;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v5, Lsbc;->a:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_10
    :try_start_a
    const-string/jumbo v5, "viewabilityFrame"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    if-eqz v5, :cond_11

    :try_start_b
    iget-object v5, v4, Lqx8;->c:Lsbc;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v5, Lsbc;->b:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :cond_11
    :try_start_c
    const-string/jumbo v5, "viewabilityTime"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    if-eqz v5, :cond_12

    :try_start_d
    iget-object v5, v4, Lqx8;->c:Lsbc;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v5, Lsbc;->c:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    :cond_12
    :try_start_e
    const-string/jumbo v5, "viewabilityVideoTime"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    if-eqz v5, :cond_13

    :try_start_f
    iget-object v5, v4, Lqx8;->c:Lsbc;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v5, Lsbc;->d:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :cond_13
    :try_start_10
    const-string v5, "maxExpirationSecs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    if-eqz v5, :cond_14

    :try_start_11
    iget-object v5, v4, Lqx8;->c:Lsbc;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v5, Lsbc;->e:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :cond_14
    :try_start_12
    const-string v5, "maxAmount"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    if-eqz v5, :cond_15

    :try_start_13
    iget-object v5, v4, Lqx8;->c:Lsbc;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v5, Lsbc;->f:I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :cond_15
    :try_start_14
    const-string v5, "companies"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    if-eqz v5, :cond_16

    :try_start_15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lqx8;->b:Ljava/util/List;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    :cond_16
    :try_start_16
    iget-object v5, v4, Lqx8;->b:Ljava/util/List;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2

    if-eqz v5, :cond_17

    :try_start_17
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    new-instance v5, Lva1;

    invoke-direct {v5}, Lva1;-><init>()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    goto :goto_5

    :cond_17
    move-object/from16 v5, v16

    :goto_5
    if-eqz v5, :cond_41

    :try_start_18
    const-string v11, "name"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_2

    if-eqz v11, :cond_18

    :try_start_19
    iget-object v11, v5, Lva1;->a:Ljava/lang/String;

    if-nez v11, :cond_18

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lva1;->a:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    :cond_18
    :try_start_1a
    const-string v11, "jsurl"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_2

    if-eqz v11, :cond_19

    :try_start_1b
    iget-object v11, v5, Lva1;->d:Ljava/lang/String;

    if-nez v11, :cond_19

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lva1;->d:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    :cond_19
    :try_start_1c
    const-string v11, "jsname"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2

    if-eqz v11, :cond_1a

    :try_start_1d
    iget-object v11, v5, Lva1;->c:Ljava/lang/String;

    if-nez v11, :cond_1a

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v5, Lva1;->c:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    :cond_1a
    :try_start_1e
    const-string v11, "domain"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2

    if-eqz v11, :cond_1b

    :try_start_1f
    new-instance v11, Lsw2;

    invoke-direct {v11}, Lsw2;-><init>()V

    iput-object v11, v5, Lva1;->b:Lsw2;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    :cond_1b
    :try_start_20
    iget-object v11, v5, Lva1;->b:Lsw2;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2

    if-eqz v11, :cond_1c

    :try_start_21
    const-string/jumbo v11, "url"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    iget-object v11, v5, Lva1;->b:Lsw2;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lsw2;->a:Ljava/lang/String;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0

    :cond_1c
    :try_start_22
    const-string/jumbo v11, "signature"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_2

    if-eqz v11, :cond_1d

    :try_start_23
    new-instance v11, Lyi9;

    invoke-direct {v11}, Lyi9;-><init>()V

    iput-object v11, v5, Lva1;->e:Lyi9;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_0

    :cond_1d
    :try_start_24
    iget-object v11, v5, Lva1;->e:Lyi9;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2

    if-eqz v11, :cond_1f

    :try_start_25
    const-string v11, "publicKey"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    iget-object v11, v5, Lva1;->e:Lyi9;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lyi9;->a:Ljava/lang/String;

    :cond_1e
    const-string v11, "paramKey"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    iget-object v11, v5, Lva1;->e:Lyi9;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lyi9;->b:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_0

    :cond_1f
    :try_start_26
    const-string/jumbo v11, "switch"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_2

    if-eqz v11, :cond_20

    :try_start_27
    new-instance v11, Lv7a;

    invoke-direct {v11}, Lv7a;-><init>()V

    iput-object v11, v5, Lva1;->f:Lv7a;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_0

    :cond_20
    :try_start_28
    iget-object v11, v5, Lva1;->f:Lv7a;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2

    if-eqz v11, :cond_26

    :try_start_29
    const-string v11, "isTrackLocation"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_21

    iget-object v11, v5, Lva1;->f:Lv7a;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v11, Lv7a;->a:Z

    :cond_21
    const-string v11, "offlineCacheExpiration"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    iget-object v11, v5, Lva1;->f:Lv7a;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lv7a;->b:Ljava/lang/String;

    :cond_22
    const-string/jumbo v11, "viewabilityTrackPolicy"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    iget-object v11, v5, Lva1;->f:Lv7a;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lv7a;->d:I

    :cond_23
    const-string v11, "encrypt"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    iget-object v11, v5, Lva1;->f:Lv7a;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v11, Lv7a;->c:Ljava/util/Map;

    :cond_24
    iget-object v11, v5, Lva1;->f:Lv7a;

    iget-object v11, v11, Lv7a;->c:Ljava/util/Map;

    if-eqz v11, :cond_26

    const-string v11, "MAC"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    const-string v11, "IDA"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    const-string v11, "IMEI"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    const-string v11, "ANDROIDID"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_26

    :cond_25
    iget-object v11, v5, Lva1;->f:Lv7a;

    iget-object v11, v11, Lv7a;->c:Ljava/util/Map;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_0

    :cond_26
    :try_start_2a
    const-string v11, "applist"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_2

    if-eqz v11, :cond_27

    :try_start_2b
    new-instance v11, Ltf;

    invoke-direct {v11}, Ltf;-><init>()V

    iput-object v11, v5, Lva1;->k:Ltf;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_0

    :cond_27
    :try_start_2c
    iget-object v11, v5, Lva1;->k:Ltf;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2

    if-eqz v11, :cond_2a

    :try_start_2d
    const-string/jumbo v11, "uploadUrl"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_28

    iget-object v11, v5, Lva1;->k:Ltf;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Ltf;->a:Ljava/lang/String;

    :cond_28
    const-string/jumbo v11, "uploadTime"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_29

    iget-object v11, v5, Lva1;->k:Ltf;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Ltf;->b:I

    :cond_29
    const-string/jumbo v11, "usegzip"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2a

    iget-object v11, v5, Lva1;->k:Ltf;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v11, Ltf;->c:Z
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_0

    :cond_2a
    :try_start_2e
    const-string v11, "config"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2

    if-eqz v11, :cond_2b

    :try_start_2f
    new-instance v11, Lpe1;

    invoke-direct {v11}, Lpe1;-><init>()V

    iput-object v11, v5, Lva1;->g:Lpe1;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_0

    :cond_2b
    :try_start_30
    iget-object v11, v5, Lva1;->g:Lpe1;

    if-eqz v11, :cond_3a

    const-string v11, "arguments"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_2

    if-eqz v11, :cond_2c

    :try_start_31
    iget-object v11, v5, Lva1;->g:Lpe1;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Lpe1;->a:Ljava/util/List;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_0

    :cond_2c
    :try_start_32
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_2

    if-eqz v3, :cond_2d

    :try_start_33
    new-instance v9, Lzf;

    invoke-direct {v9}, Lzf;-><init>()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_0

    :cond_2d
    const-string/jumbo v3, "urlEncode"

    const-string/jumbo v11, "value"

    const-string v12, "key"

    if-eqz v9, :cond_31

    :try_start_34
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_2

    if-eqz v16, :cond_2e

    move-object/from16 v17, v4

    :try_start_35
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lzf;->a:Ljava/lang/String;

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_6
    move-object/from16 v1, v17

    goto/16 :goto_d

    :cond_2e
    move-object/from16 v17, v4

    :goto_7
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lzf;->b:Ljava/lang/String;

    :cond_2f
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v9, Lzf;->c:Z

    :cond_30
    const-string v4, "isRequired"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v9, Lzf;->d:Z

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_6

    :cond_31
    move-object/from16 v17, v4

    :cond_32
    :goto_8
    const-string v4, "events"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, v5, Lva1;->g:Lpe1;

    move/from16 v18, v6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v4, Lpe1;->b:Ljava/util/List;

    goto :goto_9

    :cond_33
    move/from16 v18, v6

    :goto_9
    iget-object v4, v5, Lva1;->g:Lpe1;

    iget-object v4, v4, Lpe1;->b:Ljava/util/List;

    if-eqz v4, :cond_34

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    new-instance v10, Ltd3;

    invoke-direct {v10}, Ltd3;-><init>()V

    :cond_34
    if-eqz v10, :cond_37

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Ltd3;->a:Ljava/lang/String;

    :cond_35
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Ltd3;->b:Ljava/lang/String;

    :cond_36
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v10, Ltd3;->c:Z

    :cond_37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    iget-object v1, v5, Lva1;->g:Lpe1;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lpe1;->c:Ljava/util/HashMap;

    const/4 v6, 0x1

    goto :goto_a

    :cond_38
    move/from16 v6, v18

    :goto_a
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, v5, Lva1;->g:Lpe1;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lpe1;->d:Ljava/util/HashMap;

    const/4 v7, 0x1

    :cond_39
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, v5, Lva1;->g:Lpe1;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lpe1;->e:Ljava/util/HashMap;

    const/4 v8, 0x1

    goto :goto_b

    :cond_3a
    move-object/from16 v17, v4

    move/from16 v18, v6

    :cond_3b
    :goto_b
    const-string v1, "separator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lva1;->h:Ljava/lang/String;

    :cond_3c
    const-string v1, "adidurl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lva1;->l:Ljava/lang/String;

    :cond_3d
    const-string v1, "antidevice"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lva1;->m:Ljava/lang/String;

    :cond_3e
    const-string v1, "equalizer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lva1;->i:Ljava/lang/String;

    :cond_3f
    const-string/jumbo v1, "timeStampUseSecond"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v5, Lva1;->j:Z

    :cond_40
    move-object/from16 v4, v17

    goto :goto_c

    :cond_41
    move-object/from16 v17, v4

    move/from16 v18, v6

    goto :goto_c

    :cond_42
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move/from16 v18, v6

    new-instance v1, Lqx8;

    invoke-direct {v1}, Lqx8;-><init>()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_35} :catch_1

    move-object v4, v1

    move-object/from16 v5, v16

    move/from16 v6, v18

    :cond_43
    :goto_c
    :try_start_36
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_0

    goto/16 :goto_0

    :cond_44
    move-object/from16 v17, v4

    goto :goto_e

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v1

    :goto_e
    return-object v4
.end method
