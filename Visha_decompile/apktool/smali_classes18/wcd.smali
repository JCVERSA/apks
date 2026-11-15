.class public final synthetic Lwcd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwcd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput p2, p0, Lwcd;->b:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lwcd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget p0, p0, Lwcd;->b:F

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->p(Lcom/yandex/mobile/ads/impl/ld$a;FLcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
