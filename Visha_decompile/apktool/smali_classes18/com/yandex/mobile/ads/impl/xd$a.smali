.class public final Lcom/yandex/mobile/ads/impl/xd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/xd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/xd$a;-><init>()V

    return-void
.end method

.method public static a()Lcom/yandex/mobile/ads/impl/wd;
    .locals 1

    .line 2
    invoke-static {}, Lcom/yandex/mobile/ads/impl/xd;->b()Lcom/yandex/mobile/ads/impl/wd;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic a(Ljava/lang/Class;)Lcom/yandex/mobile/ads/impl/xd;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/xd$a;->b(Ljava/lang/Class;)Lcom/yandex/mobile/ads/impl/xd;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/Class;)Lcom/yandex/mobile/ads/impl/xd;
    .locals 3

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpenSSLSocketImpl"

    invoke-static {v1, v2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No OpenSSLSocketImpl superclass of socket of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    new-instance p0, Lcom/yandex/mobile/ads/impl/xd;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/xd;-><init>(Ljava/lang/Class;)V

    return-object p0
.end method
