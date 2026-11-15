.class public final Lcom/yandex/mobile/ads/impl/rw$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/rw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/rw$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sz0;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/yandex/mobile/ads/impl/sz0;->b:Lcom/yandex/mobile/ads/impl/sz0;

    const-string v1, "error"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/rw$a$b;->a:Lcom/yandex/mobile/ads/impl/sz0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/sz0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rw$a$b;->a:Lcom/yandex/mobile/ads/impl/sz0;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/rw$a$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/rw$a$b;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rw$a$b;->a:Lcom/yandex/mobile/ads/impl/sz0;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/rw$a$b;->a:Lcom/yandex/mobile/ads/impl/sz0;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rw$a$b;->a:Lcom/yandex/mobile/ads/impl/sz0;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/rw$a$b;->a:Lcom/yandex/mobile/ads/impl/sz0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InvalidIntegration(error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
