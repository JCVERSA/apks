.class public final Lcom/yandex/mobile/ads/impl/t1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/t1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/fm;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/fm;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/fm;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/t1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/fm;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/fm;)V
    .locals 1

    .line 3
    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "browserAdActivityLauncher"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/t1;->a:Lcom/yandex/mobile/ads/impl/fm;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/tp1;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/t8;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/impl/o3;",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;",
            "Lcom/yandex/mobile/ads/impl/tp1;",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/impl/t8;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    const/4 v2, 0x1

    const-string v3, "adConfiguration"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adResponse"

    move-object/from16 v5, p3

    invoke-static {v5, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "reporter"

    invoke-static {v6, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v7, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "receiver"

    invoke-static {v8, v3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/yandex/mobile/ads/impl/t1$a;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    sget v3, Lcom/yandex/mobile/ads/impl/pw1;->l:I

    invoke-static {}, Lcom/yandex/mobile/ads/impl/pw1$a;->a()Lcom/yandex/mobile/ads/impl/pw1;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yandex/mobile/ads/impl/pw1;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/ju1;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ju1;->o()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v11, Lcom/yandex/mobile/ads/impl/yo;->c:Lcom/yandex/mobile/ads/impl/yo$a;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "value"

    invoke-static {v3, v11}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yo;->values()[Lcom/yandex/mobile/ads/impl/yo;

    move-result-object v11

    array-length v12, v11

    move v13, v9

    :goto_0
    if-ge v13, v12, :cond_2

    aget-object v14, v11, v13

    invoke-virtual {v14}, Lcom/yandex/mobile/ads/impl/yo;->a()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v13, v2

    goto :goto_0

    :cond_2
    :goto_1
    move-object v14, v10

    :goto_2
    if-eqz p7, :cond_3

    if-eqz v14, :cond_4

    :cond_3
    sget-object v3, Lcom/yandex/mobile/ads/impl/yo;->d:Lcom/yandex/mobile/ads/impl/yo;

    if-ne v3, v14, :cond_5

    :cond_4
    sget-object v3, Lcom/yandex/mobile/ads/impl/w82;->a:Lcom/yandex/mobile/ads/impl/w82$a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/w82$a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/t1;->a:Lcom/yandex/mobile/ads/impl/fm;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/fm;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :cond_5
    new-instance v3, Lcom/yandex/mobile/ads/impl/y82;

    new-instance v11, Lcom/yandex/mobile/ads/impl/x82;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/x82;-><init>()V

    invoke-direct {v3, v11}, Lcom/yandex/mobile/ads/impl/y82;-><init>(Lcom/yandex/mobile/ads/impl/x82;)V

    invoke-virtual {v3, v1, v7}, Lcom/yandex/mobile/ads/impl/y82;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x7

    invoke-virtual {v8, v0, v10}, Lcom/yandex/mobile/ads/impl/t8;->a(ILandroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    invoke-static/range {p5 .. p5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, v0, Lcom/yandex/mobile/ads/impl/t1;->a:Lcom/yandex/mobile/ads/impl/fm;

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/fm;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/t8;Lcom/yandex/mobile/ads/impl/o3;Ljava/lang/String;)Z

    move-result v2

    goto :goto_3

    :cond_7
    move v2, v9

    :goto_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "click_type"

    const-string v3, "default"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "click_handled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/yandex/mobile/ads/impl/v82;->a:Lcom/yandex/mobile/ads/impl/v82;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p5 .. p5}, Lcom/yandex/mobile/ads/impl/v82;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "click_url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/yandex/mobile/ads/impl/op1$b;->c:Lcom/yandex/mobile/ads/impl/op1$b;

    invoke-interface {v6, v0}, Lcom/yandex/mobile/ads/impl/tp1;->a(Ljava/util/HashMap;)V

    if-eqz v8, :cond_8

    const/16 v0, 0x9

    invoke-virtual {v8, v0, v10}, Lcom/yandex/mobile/ads/impl/t8;->a(ILandroid/os/Bundle;)V

    :cond_8
    return-void
.end method
