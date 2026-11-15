.class public final Lcom/yandex/mobile/ads/impl/xa2;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/xa2$a;
    }
.end annotation


# instance fields
.field private final b:Lcom/yandex/mobile/ads/impl/wa2;

.field private final c:Lcom/yandex/mobile/ads/impl/xa2$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wa2;Lcom/yandex/mobile/ads/impl/xa2$a;)V
    .locals 3

    const-string v0, "verification"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "US"

    invoke-static {v1, v2}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verification not executed with reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xa2;->b:Lcom/yandex/mobile/ads/impl/wa2;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xa2;->c:Lcom/yandex/mobile/ads/impl/xa2$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/xa2$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xa2;->c:Lcom/yandex/mobile/ads/impl/xa2$a;

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/wa2;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xa2;->b:Lcom/yandex/mobile/ads/impl/wa2;

    return-object p0
.end method
