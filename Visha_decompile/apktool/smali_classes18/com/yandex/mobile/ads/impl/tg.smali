.class public final Lcom/yandex/mobile/ads/impl/tg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sp1;

.field private final b:Lcom/yandex/mobile/ads/impl/wr0;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/wr0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkJsonParser"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/tg;->a:Lcom/yandex/mobile/ads/impl/sp1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/tg;->b:Lcom/yandex/mobile/ads/impl/wr0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tg;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/ig;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/yandex/mobile/ads/impl/xj;",
            ")",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lcom/yandex/mobile/ads/impl/t61;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    const-string v2, "jsonAsset"

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "base64EncodingParameters"

    invoke-static {v5, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "name"

    const-string v6, "type"

    const-string v10, "clickable"

    const-string v11, "required"

    filled-new-array {v4, v6, v10, v11}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/yandex/mobile/ads/impl/l91;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v7

    const-string v8, "Native Ad json has not required attributes"

    if-eqz v7, :cond_6

    const-string v7, "jsonAttribute"

    invoke-static {v1, v2, v6, v7, v6}, Lcom/yandex/mobile/ads/impl/j91;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "null"

    invoke-static {v14, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v14}, Ly45;->g(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v13, v9}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v13}, Ly45;->g(Ljava/lang/Object;)V

    const-string v2, "link"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v16, v2

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/tg;->b:Lcom/yandex/mobile/ads/impl/wr0;

    invoke-virtual {v7, v2, v5}, Lcom/yandex/mobile/ads/impl/wr0;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/xj;)Lcom/yandex/mobile/ads/impl/vr0;

    move-result-object v2

    goto :goto_0

    :goto_1
    iget-object v7, v0, Lcom/yandex/mobile/ads/impl/tg;->c:Landroid/content/Context;

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/tg;->a:Lcom/yandex/mobile/ads/impl/sp1;

    const-string v2, "context"

    invoke-static {v7, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "reporter"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v4}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v6}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "close_button"

    invoke-static {v13, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/yandex/mobile/ads/impl/up;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/up;-><init>()V

    goto/16 :goto_2

    :cond_1
    const-string v2, "feedback"

    invoke-static {v13, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/yandex/mobile/ads/impl/ak0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ak0;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/bb0;

    invoke-direct {v2, v0}, Lcom/yandex/mobile/ads/impl/bb0;-><init>(Lcom/yandex/mobile/ads/impl/ak0;)V

    move-object v0, v2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v2, "media"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v12, Lcom/yandex/mobile/ads/impl/fx0;

    new-instance v6, Lcom/yandex/mobile/ads/impl/ow0;

    invoke-interface/range {p2 .. p2}, Lcom/yandex/mobile/ads/impl/xj;->b()Z

    move-result v2

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/p92;->a(Z)Lcom/yandex/mobile/ads/impl/o92;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/yandex/mobile/ads/impl/ow0;-><init>(Lcom/yandex/mobile/ads/impl/o92;)V

    new-instance v8, Lcom/yandex/mobile/ads/impl/ye2;

    invoke-direct {v8, v7, v0, v5}, Lcom/yandex/mobile/ads/impl/ye2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/xj;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/pj0;

    invoke-direct {v9}, Lcom/yandex/mobile/ads/impl/pj0;-><init>()V

    new-instance v15, Lcom/yandex/mobile/ads/impl/dk0;

    invoke-direct {v15}, Lcom/yandex/mobile/ads/impl/dk0;-><init>()V

    move-object v2, v12

    move-object v3, v7

    move-object v4, v0

    move-object/from16 v5, p2

    move-object v7, v8

    move-object v8, v9

    move-object v9, v15

    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/fx0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;Lcom/yandex/mobile/ads/impl/xj;Lcom/yandex/mobile/ads/impl/ow0;Lcom/yandex/mobile/ads/impl/ye2;Lcom/yandex/mobile/ads/impl/pj0;Lcom/yandex/mobile/ads/impl/dk0;)V

    move-object v0, v12

    goto :goto_2

    :sswitch_1
    const-string v0, "image"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/mobile/ads/impl/ak0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ak0;-><init>()V

    goto :goto_2

    :sswitch_2
    const-string v0, "container"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/mobile/ads/impl/f50;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/f50;-><init>()V

    goto :goto_2

    :sswitch_3
    const-string v0, "string"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/mobile/ads/impl/g32;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/g32;-><init>()V

    goto :goto_2

    :sswitch_4
    const-string v0, "number"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/yandex/mobile/ads/impl/xd1;

    new-instance v2, Lcom/yandex/mobile/ads/impl/rr1;

    invoke-direct {v2}, Lcom/yandex/mobile/ads/impl/rr1;-><init>()V

    invoke-direct {v0, v2}, Lcom/yandex/mobile/ads/impl/xd1;-><init>(Lcom/yandex/mobile/ads/impl/rr1;)V

    :goto_2
    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/ug;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v18

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    new-instance v0, Lcom/yandex/mobile/ads/impl/ig;

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/yandex/mobile/ads/impl/ig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vr0;ZZ)V

    return-object v0

    :cond_3
    :goto_3
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->b([Ljava/lang/Object;)V

    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v8}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v8}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v8}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lcom/yandex/mobile/ads/impl/t61;

    invoke-direct {v0, v8}, Lcom/yandex/mobile/ads/impl/t61;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_4
        -0x352a9fef -> :sswitch_3
        -0x187eb37f -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x62f6fe4 -> :sswitch_0
    .end sparse-switch
.end method
