.class public final Lcom/yandex/mobile/ads/impl/a40$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/a40;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/net/Uri;

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/w22;",
            ">;"
        }
    .end annotation
.end field

.field private e:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/a40$b;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a40$b;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/a40$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a40$b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Ljava/util/ArrayList;)Lcom/yandex/mobile/ads/impl/a40$b;
    .locals 0
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a40$b;->d:Ljava/util/List;

    return-object p0
.end method

.method public final a([B)Lcom/yandex/mobile/ads/impl/a40$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a40$b;->g:[B

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/a40;
    .locals 10

    .line 1
    new-instance v9, Lcom/yandex/mobile/ads/impl/a40;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/a40$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/a40$b;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/a40$b;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/a40$b;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/yandex/mobile/ads/impl/kk0;->h()Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/a40$b;->e:[B

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/a40$b;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/a40$b;->g:[B

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/a40;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;[BLjava/lang/String;[BLa3d;)V

    return-object v9
.end method

.method public final b(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/a40$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a40$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b([B)Lcom/yandex/mobile/ads/impl/a40$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/a40$b;->e:[B

    return-object p0
.end method
