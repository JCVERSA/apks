.class public final Lcom/yandex/mobile/ads/impl/gv0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/gv0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/yandex/mobile/ads/impl/kv0;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Lcom/yandex/mobile/ads/impl/jc0;

.field public final d:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:Landroid/media/MediaCrypto;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/impl/kv0;Landroid/media/MediaFormat;Lcom/yandex/mobile/ads/impl/jc0;Landroid/view/Surface;Landroid/media/MediaCrypto;)V
    .locals 0
    .param p4    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gv0$a;->a:Lcom/yandex/mobile/ads/impl/kv0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/gv0$a;->b:Landroid/media/MediaFormat;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/gv0$a;->c:Lcom/yandex/mobile/ads/impl/jc0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/gv0$a;->d:Landroid/view/Surface;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/gv0$a;->e:Landroid/media/MediaCrypto;

    return-void
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/kv0;Landroid/media/MediaFormat;Lcom/yandex/mobile/ads/impl/jc0;Landroid/media/MediaCrypto;)Lcom/yandex/mobile/ads/impl/gv0$a;
    .locals 7
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v6, Lcom/yandex/mobile/ads/impl/gv0$a;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/gv0$a;-><init>(Lcom/yandex/mobile/ads/impl/kv0;Landroid/media/MediaFormat;Lcom/yandex/mobile/ads/impl/jc0;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    return-object v6
.end method

.method public static a(Lcom/yandex/mobile/ads/impl/kv0;Landroid/media/MediaFormat;Lcom/yandex/mobile/ads/impl/jc0;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/yandex/mobile/ads/impl/gv0$a;
    .locals 7
    .param p3    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v6, Lcom/yandex/mobile/ads/impl/gv0$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/gv0$a;-><init>(Lcom/yandex/mobile/ads/impl/kv0;Landroid/media/MediaFormat;Lcom/yandex/mobile/ads/impl/jc0;Landroid/view/Surface;Landroid/media/MediaCrypto;)V

    return-object v6
.end method
