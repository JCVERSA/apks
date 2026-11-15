.class public final Lcom/yandex/mobile/ads/impl/qh2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/yandex/mobile/ads/impl/oh2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/by1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/by1;-><init>()V

    const-string v1, "ViewSizeInfoStorage"

    invoke-static {v0, p1, v1}, Lcom/yandex/mobile/ads/impl/by1;->a(Lcom/yandex/mobile/ads/impl/by1;Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/oh2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/oh2;-><init>()V

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/qh2;-><init>(Landroid/content/SharedPreferences;Lcom/yandex/mobile/ads/impl/oh2;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/yandex/mobile/ads/impl/oh2;)V
    .locals 1

    .line 5
    const-string v0, "preferences"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewSizeInfoParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qh2;->a:Landroid/content/SharedPreferences;

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/qh2;->b:Lcom/yandex/mobile/ads/impl/oh2;

    return-void
.end method

.method private static b(Lcom/yandex/mobile/ads/impl/sh2;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sh2;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/sh2;->b()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sh2;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "viewSizeKey"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qh2;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/qh2;->b(Lcom/yandex/mobile/ads/impl/sh2;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/sh2;Lcom/yandex/mobile/ads/impl/nh2;)V
    .locals 13

    .line 3
    const-string v0, "viewSizeKey"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewSizeInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/qh2;->b(Lcom/yandex/mobile/ads/impl/sh2;)Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qh2;->b:Lcom/yandex/mobile/ads/impl/oh2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->d()Lcom/yandex/mobile/ads/impl/mh2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/mh2;->b()I

    move-result v2

    const-string v3, "width"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->d()Lcom/yandex/mobile/ads/impl/mh2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/mh2;->a()I

    move-result v2

    const-string v4, "height"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 12
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->b()Lcom/yandex/mobile/ads/impl/nr0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/nr0;->b()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->b()Lcom/yandex/mobile/ads/impl/nr0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yandex/mobile/ads/impl/nr0;->a()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 15
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 16
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 17
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->c()Lcom/yandex/mobile/ads/impl/tu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/tu0;->b()Lcom/yandex/mobile/ads/impl/uu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/uu0;->b()I

    move-result v8

    const-string v9, "value"

    invoke-virtual {v5, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->c()Lcom/yandex/mobile/ads/impl/tu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/tu0;->b()Lcom/yandex/mobile/ads/impl/uu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/uu0;->a()Lcom/yandex/mobile/ads/impl/vu0;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "toLowerCase(...)"

    invoke-static {v8, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "mode"

    invoke-virtual {v5, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->c()Lcom/yandex/mobile/ads/impl/tu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/tu0;->a()Lcom/yandex/mobile/ads/impl/uu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/uu0;->b()I

    move-result v8

    invoke-virtual {v6, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->c()Lcom/yandex/mobile/ads/impl/tu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/tu0;->a()Lcom/yandex/mobile/ads/impl/uu0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/mobile/ads/impl/uu0;->a()Lcom/yandex/mobile/ads/impl/vu0;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v11}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v12, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v7, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/nh2;->a()Ljava/util/Map;

    move-result-object p2

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 24
    const-string p2, "view"

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string p2, "layout_params"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string p2, "measured"

    invoke-virtual {v0, p2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string p2, "additional_info"

    invoke-virtual {v0, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "toString(...)"

    invoke-static {p2, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qh2;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 30
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
