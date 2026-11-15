.class public final Lcom/yandex/mobile/ads/impl/d30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "video_progress"

    const-string v6, "mute_button"

    const-string v0, "native_ad_view"

    const-string v1, "timer_container"

    const-string v2, "timer_value"

    const-string v3, "skip_button"

    const-string v4, "linear_progress_view"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly71;->n([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/yandex/mobile/ads/impl/d30;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/json/JSONArray;Lcom/yandex/mobile/ads/impl/t20;Ls74;)V
    .locals 4

    .line 9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 10
    const-string v2, "<this>"

    invoke-static {p0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v2, 0x0

    .line 12
    :goto_1
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, p1, p2}, Lcom/yandex/mobile/ads/impl/d30;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/t20;Ls74;)V

    goto :goto_2

    .line 13
    :cond_0
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2, p1, p2}, Lcom/yandex/mobile/ads/impl/d30;->a(Lorg/json/JSONArray;Lcom/yandex/mobile/ads/impl/t20;Ls74;)V

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/t20;Ls74;)V
    .locals 6

    .line 14
    const-string v0, "extensions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 16
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 17
    const-string v5, "params"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 18
    const-string v5, "view_name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 19
    :goto_1
    const-string v5, "native_ad_view"

    invoke-static {v4, v5}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 20
    sget-object p1, Lcom/yandex/mobile/ads/impl/t20;->c:Lcom/yandex/mobile/ads/impl/t20;

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 21
    :cond_3
    :goto_2
    move-object v0, p2

    check-cast v0, Lcom/yandex/mobile/ads/impl/c30;

    invoke-virtual {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/c30;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    const-string v2, "keys(...)"

    invoke-static {v0, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-static {v2}, Ly45;->g(Ljava/lang/Object;)V

    const-string v3, "<this>"

    invoke-static {p0, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "key"

    invoke-static {v2, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-object v2, v1

    .line 25
    :goto_4
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 26
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2, p1, p2}, Lcom/yandex/mobile/ads/impl/d30;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/t20;Ls74;)V

    goto :goto_3

    .line 27
    :cond_5
    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_4

    .line 28
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2, p1, p2}, Lcom/yandex/mobile/ads/impl/d30;->a(Lorg/json/JSONArray;Lcom/yandex/mobile/ads/impl/t20;Ls74;)V

    goto :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/s20;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "designCard"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v1, Lcom/yandex/mobile/ads/impl/t20;->b:Lcom/yandex/mobile/ads/impl/t20;

    new-instance v2, Lcom/yandex/mobile/ads/impl/c30;

    invoke-direct {v2, p0, v0}, Lcom/yandex/mobile/ads/impl/c30;-><init>(Lcom/yandex/mobile/ads/impl/d30;Ljava/util/ArrayList;)V

    invoke-static {p1, v1, v2}, Lcom/yandex/mobile/ads/impl/d30;->a(Lorg/json/JSONObject;Lcom/yandex/mobile/ads/impl/t20;Ls74;)V

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yandex/mobile/ads/impl/s20;

    .line 6
    sget-object v2, Lcom/yandex/mobile/ads/impl/d30;->a:Ljava/util/List;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/s20;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0}, Li81;->g1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
