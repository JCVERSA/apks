.class final Lcom/yandex/mobile/ads/impl/ez1;
.super Lcom/yandex/mobile/ads/impl/mk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/impl/mk0<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/mk0;-><init>()V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/vj1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ez1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez1;->d:Ljava/lang/Object;

    aput-object p0, p2, p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/kk0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "TE;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez1;->d:Ljava/lang/Object;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/kk0;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/kk0;

    move-result-object p0

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez1;->d:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez1;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final iterator()Lcom/yandex/mobile/ads/impl/i82;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/i82<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez1;->d:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/lq0;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/lq0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ez1;->iterator()Lcom/yandex/mobile/ads/impl/i82;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ez1;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
