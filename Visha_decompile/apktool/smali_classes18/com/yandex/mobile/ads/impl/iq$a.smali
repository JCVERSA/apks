.class public final Lcom/yandex/mobile/ads/impl/iq$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lcom/yandex/mobile/ads/impl/iq$a;

.field private static volatile b:Lcom/yandex/mobile/ads/impl/kq;

.field private static final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/iq$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/iq$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/iq$a;->a:Lcom/yandex/mobile/ads/impl/iq$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/iq$a;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/iq;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/iq$a;->b:Lcom/yandex/mobile/ads/impl/kq;

    if-nez v0, :cond_1

    sget-object v0, Lcom/yandex/mobile/ads/impl/iq$a;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yandex/mobile/ads/impl/iq$a;->b:Lcom/yandex/mobile/ads/impl/kq;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/jq;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kq;

    move-result-object p0

    sput-object p0, Lcom/yandex/mobile/ads/impl/iq$a;->b:Lcom/yandex/mobile/ads/impl/kq;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/yandex/mobile/ads/impl/iq$a;->b:Lcom/yandex/mobile/ads/impl/kq;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
