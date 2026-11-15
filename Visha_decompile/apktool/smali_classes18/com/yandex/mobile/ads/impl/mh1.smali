.class public final Lcom/yandex/mobile/ads/impl/mh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tv;


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/mh1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/mh1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mh1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/mh1;->a:Lcom/yandex/mobile/ads/impl/mh1;

    new-instance v0, Lpnd;

    invoke-direct {v0}, Lpnd;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic e()Lcom/yandex/mobile/ads/impl/mh1;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/mh1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mh1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xv;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PlaceholderDataSource cannot be opened"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/d72;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final read([BII)I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
