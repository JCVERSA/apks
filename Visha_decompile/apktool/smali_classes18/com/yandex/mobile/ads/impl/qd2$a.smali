.class public final Lcom/yandex/mobile/ads/impl/qd2$a;
.super Lfd7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/qd2;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfd7;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/qd2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qd2;)V
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/pd2;->b:Lcom/yandex/mobile/ads/impl/pd2;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/qd2$a;->a:Lcom/yandex/mobile/ads/impl/qd2;

    invoke-direct {p0, v0}, Lfd7;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Laf5;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laf5;",
            "Lcom/yandex/mobile/ads/impl/pd2;",
            "Lcom/yandex/mobile/ads/impl/pd2;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/yandex/mobile/ads/impl/pd2;

    check-cast p2, Lcom/yandex/mobile/ads/impl/pd2;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qd2$a;->a:Lcom/yandex/mobile/ads/impl/qd2;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/qd2;->a(Lcom/yandex/mobile/ads/impl/qd2;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
