.class public final Lcom/yandex/mobile/ads/impl/sa2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hw0;

.field private final b:Lcom/yandex/mobile/ads/impl/j12;

.field private final c:Lcom/yandex/mobile/ads/impl/x4;

.field private final d:Lcom/yandex/mobile/ads/impl/y9;

.field private final e:Lcom/yandex/mobile/ads/impl/ju1;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v2, Lcom/yandex/mobile/ads/impl/hw0;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/hw0;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v3, Lcom/yandex/mobile/ads/impl/j12;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/j12;-><init>()V

    .line 3
    new-instance v4, Lcom/yandex/mobile/ads/impl/x4;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/x4;-><init>()V

    .line 4
    new-instance v5, Lcom/yandex/mobile/ads/impl/y9;

    invoke-direct {v5}, Lcom/yandex/mobile/ads/impl/y9;-><init>()V

    .line 5
    sget v0, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    .line 6
    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/sa2;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/hw0;Lcom/yandex/mobile/ads/impl/j12;Lcom/yandex/mobile/ads/impl/x4;Lcom/yandex/mobile/ads/impl/y9;Lcom/yandex/mobile/ads/impl/ju1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/hw0;Lcom/yandex/mobile/ads/impl/j12;Lcom/yandex/mobile/ads/impl/x4;Lcom/yandex/mobile/ads/impl/y9;Lcom/yandex/mobile/ads/impl/ju1;)V
    .locals 1

    .line 7
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaFileProvider"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "socialAdInfoProvider"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adInfoProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adTuneInfoProvider"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sa2;->a:Lcom/yandex/mobile/ads/impl/hw0;

    .line 10
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sa2;->b:Lcom/yandex/mobile/ads/impl/j12;

    .line 11
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/sa2;->c:Lcom/yandex/mobile/ads/impl/x4;

    .line 12
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/sa2;->d:Lcom/yandex/mobile/ads/impl/y9;

    .line 13
    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/sa2;->e:Lcom/yandex/mobile/ads/impl/ju1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 13

    const-string v0, "videoAds"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/yandex/mobile/ads/impl/mb2;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/mb2;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Li81;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/yandex/mobile/ads/impl/uu;

    const/4 v1, 0x0

    if-eqz v4, :cond_e

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sa2;->e:Lcom/yandex/mobile/ads/impl/ju1;

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ju1;->G()Z

    move-result v2

    if-ne v2, v5, :cond_2

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/mb2;->o()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/yandex/mobile/ads/impl/ra2;

    new-instance v2, Lcom/yandex/mobile/ads/impl/ew0$a;

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/mb2;->k()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    invoke-direct {v2, v5}, Lcom/yandex/mobile/ads/impl/ew0$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ew0$a;->a()Lcom/yandex/mobile/ads/impl/ew0;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/ra2;-><init>(Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/ew0;Lcom/yandex/mobile/ads/impl/i12;Ljava/lang/String;Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/w9;)V

    goto/16 :goto_9

    :cond_2
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/sa2;->a:Lcom/yandex/mobile/ads/impl/hw0;

    invoke-virtual {v2, v4}, Lcom/yandex/mobile/ads/impl/hw0;->a(Lcom/yandex/mobile/ads/impl/uu;)Lcom/yandex/mobile/ads/impl/ew0;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/mb2;->l()Lcom/yandex/mobile/ads/impl/ub2;

    move-result-object v2

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/sa2;->b:Lcom/yandex/mobile/ads/impl/j12;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "videoAdExtensions"

    invoke-static {v2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ub2;->a()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/yandex/mobile/ads/impl/u70;

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/u70;->a()Ljava/lang/String;

    move-result-object v11

    const-string v12, "social_ad_info"

    invoke-static {v11, v12}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v10}, Lcom/yandex/mobile/ads/impl/u70;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    goto :goto_1

    :cond_4
    move-object v9, v1

    :goto_1
    check-cast v9, Lcom/yandex/mobile/ads/impl/u70;

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/yandex/mobile/ads/impl/u70;->b()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_5
    move-object v8, v1

    :goto_2
    if-eqz v8, :cond_6

    new-instance v9, Lcom/yandex/mobile/ads/impl/i12;

    invoke-direct {v9, v8}, Lcom/yandex/mobile/ads/impl/i12;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v9, v1

    :goto_3
    iget-object v8, p0, Lcom/yandex/mobile/ads/impl/sa2;->c:Lcom/yandex/mobile/ads/impl/x4;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/x4;->a(Lcom/yandex/mobile/ads/impl/ub2;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/yandex/mobile/ads/impl/sa2;->c:Lcom/yandex/mobile/ads/impl/x4;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/x4;->a(Lcom/yandex/mobile/ads/impl/ub2;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-static {v10}, Lcom/yandex/mobile/ads/impl/vq0;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    goto :goto_4

    :cond_7
    move-object v10, v1

    :goto_4
    iget-object v11, p0, Lcom/yandex/mobile/ads/impl/sa2;->d:Lcom/yandex/mobile/ads/impl/y9;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v7}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/ub2;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/yandex/mobile/ads/impl/u70;

    invoke-virtual {v11}, Lcom/yandex/mobile/ads/impl/u70;->a()Ljava/lang/String;

    move-result-object v11

    const-string v12, "AdTune"

    invoke-static {v11, v12}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_5

    :cond_9
    move-object v7, v1

    :goto_5
    check-cast v7, Lcom/yandex/mobile/ads/impl/u70;

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/yandex/mobile/ads/impl/u70;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    move-object v2, v1

    :goto_6
    if-eqz v2, :cond_b

    invoke-static {v2}, Lcom/yandex/mobile/ads/impl/vq0;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_7

    :cond_b
    move-object v2, v1

    :goto_7
    if-eqz v2, :cond_d

    new-instance v1, Lcom/yandex/mobile/ads/impl/w9;

    const-string v7, "show"

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_c

    goto :goto_8

    :cond_c
    move v5, v11

    :goto_8
    const-string v7, "token"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "optString(...)"

    invoke-static {v7, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "advertiserInfo"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v7, v2, v5}, Lcom/yandex/mobile/ads/impl/w9;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_d
    new-instance v11, Lcom/yandex/mobile/ads/impl/ra2;

    move-object v2, v11

    move-object v5, v6

    move-object v6, v9

    move-object v7, v8

    move-object v8, v10

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/yandex/mobile/ads/impl/ra2;-><init>(Lcom/yandex/mobile/ads/impl/mb2;Lcom/yandex/mobile/ads/impl/uu;Lcom/yandex/mobile/ads/impl/ew0;Lcom/yandex/mobile/ads/impl/i12;Ljava/lang/String;Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/w9;)V

    move-object v1, v11

    :cond_e
    :goto_9
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_f
    return-object v0
.end method
