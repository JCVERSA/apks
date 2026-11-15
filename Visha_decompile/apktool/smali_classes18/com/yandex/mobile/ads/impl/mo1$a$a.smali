.class final Lcom/yandex/mobile/ads/impl/mo1$a$a;
.super Lcom/yandex/mobile/ads/impl/kk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/mo1$a;->g()Lcom/yandex/mobile/ads/impl/kk0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/kk0<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/yandex/mobile/ads/impl/mo1$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/mo1$a;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mo1$a$a;->e:Lcom/yandex/mobile/ads/impl/mo1$a;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/kk0;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mo1$a$a;->e:Lcom/yandex/mobile/ads/impl/mo1$a;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mo1$a;->k(Lcom/yandex/mobile/ads/impl/mo1$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/vj1;->a(II)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mo1$a$a;->e:Lcom/yandex/mobile/ads/impl/mo1$a;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mo1$a;->i(Lcom/yandex/mobile/ads/impl/mo1$a;)[Ljava/lang/Object;

    move-result-object v1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mo1$a;->j(Lcom/yandex/mobile/ads/impl/mo1$a;)I

    move-result v0

    add-int/2addr v0, p1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mo1$a$a;->e:Lcom/yandex/mobile/ads/impl/mo1$a;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mo1$a;->i(Lcom/yandex/mobile/ads/impl/mo1$a;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mo1$a;->j(Lcom/yandex/mobile/ads/impl/mo1$a;)I

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    add-int/2addr p1, p0

    aget-object p0, v1, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {p1, v0, p0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mo1$a$a;->e:Lcom/yandex/mobile/ads/impl/mo1$a;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/mo1$a;->k(Lcom/yandex/mobile/ads/impl/mo1$a;)I

    move-result p0

    return p0
.end method
