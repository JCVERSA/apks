.class public final Lcom/yandex/mobile/ads/impl/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/n1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Lcom/yandex/mobile/ads/impl/e1;Landroid/content/Intent;Landroid/view/Window;Lcom/yandex/mobile/ads/impl/c1;)Lcom/yandex/mobile/ads/impl/m1;
    .locals 13

    move-object v1, p1

    move-object/from16 v0, p5

    const-string v2, "activity"

    invoke-static {p1, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rootLayout"

    move-object v3, p2

    invoke-static {p2, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "listener"

    move-object/from16 v4, p3

    invoke-static {v4, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "eventController"

    move-object/from16 v5, p4

    invoke-static {v5, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "intent"

    invoke-static {v0, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "window"

    move-object/from16 v5, p6

    invoke-static {v5, v2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extra_browser_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    new-instance v11, Lcom/yandex/mobile/ads/impl/x0;
    :try_end_0
    .catch Lcom/yandex/mobile/ads/impl/tj2; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v7, Lcom/yandex/mobile/ads/impl/h3;

    invoke-direct {v7, p1}, Lcom/yandex/mobile/ads/impl/h3;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/view/View;->setId(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/f8;->b()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/h8;->c(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v9

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/h8;->d(Landroid/content/Context;)Landroid/widget/ProgressBar;

    move-result-object v10

    new-instance v12, Lcom/yandex/mobile/ads/impl/y82;

    new-instance v0, Lcom/yandex/mobile/ads/impl/x82;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/x82;-><init>()V

    invoke-direct {v12, v0}, Lcom/yandex/mobile/ads/impl/y82;-><init>(Lcom/yandex/mobile/ads/impl/x82;)V

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    invoke-direct/range {v0 .. v10}, Lcom/yandex/mobile/ads/impl/x0;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/yandex/mobile/ads/impl/v1;Landroid/view/Window;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/h3;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ProgressBar;Lcom/yandex/mobile/ads/impl/y82;)V

    goto :goto_0

    :catchall_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/tj2;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/tj2;-><init>()V

    throw v0
    :try_end_2
    .catch Lcom/yandex/mobile/ads/impl/tj2; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    const/4 v11, 0x0

    :goto_0
    return-object v11
.end method
