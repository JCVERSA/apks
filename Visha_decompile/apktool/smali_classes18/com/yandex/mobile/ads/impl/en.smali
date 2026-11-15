.class public interface abstract Lcom/yandex/mobile/ads/impl/en;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/en;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lubd;

    invoke-direct {v0}, Lubd;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/en;->a:Lcom/yandex/mobile/ads/impl/en;

    return-void
.end method

.method private static synthetic b(Lcom/yandex/mobile/ads/impl/xv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/xv;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xv;->a:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static synthetic c(Lcom/yandex/mobile/ads/impl/xv;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/en;->b(Lcom/yandex/mobile/ads/impl/xv;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract a(Lcom/yandex/mobile/ads/impl/xv;)Ljava/lang/String;
.end method
