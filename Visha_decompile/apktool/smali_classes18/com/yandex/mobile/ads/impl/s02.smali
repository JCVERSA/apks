.class public final Lcom/yandex/mobile/ads/impl/s02;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/q02;

.field private final b:Lcom/yandex/mobile/ads/impl/vi;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/q02;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/q02;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/s02;->a:Lcom/yandex/mobile/ads/impl/q02;

    new-instance v0, Lcom/yandex/mobile/ads/impl/vi;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vi;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/s02;->b:Lcom/yandex/mobile/ads/impl/vi;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/r02;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "jsonValue"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ColorWizButton"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, Ljava/lang/String;

    move-object v7, v3

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string v3, "ColorWizButtonText"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/String;

    move-object v8, v3

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v3, "ColorWizBack"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_2

    check-cast v3, Ljava/lang/String;

    move-object v9, v3

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const-string v3, "ColorWizBackRight"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/String;

    move-object v10, v3

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    const-string v3, "backgroundColors"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "smart-center"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "smart-centers"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v6, "h"

    const-string v11, "w"

    const-string v12, "y"

    const-string v13, "x"

    if-eqz v4, :cond_4

    iget-object v14, v0, Lcom/yandex/mobile/ads/impl/s02;->a:Lcom/yandex/mobile/ads/impl/q02;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v16, v10

    new-instance v10, Lcom/yandex/mobile/ads/impl/j02;

    invoke-direct {v10, v14, v15, v5, v4}, Lcom/yandex/mobile/ads/impl/j02;-><init>(IIII)V

    move-object v4, v10

    goto :goto_4

    :cond_4
    move-object/from16 v16, v10

    const/4 v4, 0x0

    :goto_4
    if-eqz v3, :cond_5

    iget-object v5, v0, Lcom/yandex/mobile/ads/impl/s02;->b:Lcom/yandex/mobile/ads/impl/vi;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/yandex/mobile/ads/impl/vi;->a(Lorg/json/JSONObject;)Lcom/yandex/mobile/ads/impl/ui;

    move-result-object v3

    goto :goto_5

    :cond_5
    const/4 v3, 0x0

    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v10, 0x0

    invoke-static {v10, v5}, Lwn8;->q(II)Lu15;

    move-result-object v5

    new-instance v10, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v5, v14}, Lz71;->v(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v10, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v14, v5

    check-cast v14, Lq15;

    invoke-virtual {v14}, Lq15;->nextInt()I

    move-result v14

    iget-object v15, v0, Lcom/yandex/mobile/ads/impl/s02;->a:Lcom/yandex/mobile/ads/impl/q02;

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v0, "optJSONObject(...)"

    invoke-static {v14, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v14, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 p1, v1

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v17, v2

    new-instance v2, Lcom/yandex/mobile/ads/impl/j02;

    invoke-direct {v2, v0, v15, v1, v14}, Lcom/yandex/mobile/ads/impl/j02;-><init>(IIII)V

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    goto :goto_6

    :cond_6
    move-object v13, v10

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    new-instance v0, Lcom/yandex/mobile/ads/impl/r02;

    move-object v6, v0

    move-object/from16 v10, v16

    move-object v11, v3

    move-object v12, v4

    invoke-direct/range {v6 .. v13}, Lcom/yandex/mobile/ads/impl/r02;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/ui;Lcom/yandex/mobile/ads/impl/j02;Ljava/util/List;)V

    return-object v0
.end method
