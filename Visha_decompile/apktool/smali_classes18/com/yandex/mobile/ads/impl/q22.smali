.class public final Lcom/yandex/mobile/ads/impl/q22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b80;


# instance fields
.field private final b:J

.field private final c:Lcom/yandex/mobile/ads/impl/b80;


# direct methods
.method public constructor <init>(JLcom/yandex/mobile/ads/impl/b80;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/q22;->b:J

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/q22;->c:Lcom/yandex/mobile/ads/impl/b80;

    return-void
.end method

.method public static bridge synthetic a(Lcom/yandex/mobile/ads/impl/q22;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/q22;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a(II)Lcom/yandex/mobile/ads/impl/a62;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q22;->c:Lcom/yandex/mobile/ads/impl/b80;

    invoke-interface {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/b80;->a(II)Lcom/yandex/mobile/ads/impl/a62;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/q22;->c:Lcom/yandex/mobile/ads/impl/b80;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/b80;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ex1;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/q22;->c:Lcom/yandex/mobile/ads/impl/b80;

    new-instance v1, Lcom/yandex/mobile/ads/impl/q22$a;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/q22$a;-><init>(Lcom/yandex/mobile/ads/impl/q22;Lcom/yandex/mobile/ads/impl/ex1;)V

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/b80;->a(Lcom/yandex/mobile/ads/impl/ex1;)V

    return-void
.end method
