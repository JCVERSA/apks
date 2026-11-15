.class public final Lcom/yandex/mobile/ads/impl/jw0$g;
.super Lcom/yandex/mobile/ads/impl/jw0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/jw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$d;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/kk0;Ljava/lang/Object;)V
    .locals 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/yandex/mobile/ads/impl/jw0$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/jw0$f;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$d;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/kk0;Ljava/lang/Object;Lskd;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$d;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/kk0;Ljava/lang/Object;Lskd;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/yandex/mobile/ads/impl/jw0$g;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jw0$d;Ljava/util/List;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/kk0;Ljava/lang/Object;)V

    return-void
.end method
