.class public final synthetic Lsdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/jw0;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/jw0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-object p2, p0, Lsdd;->b:Lcom/yandex/mobile/ads/impl/jw0;

    iput p3, p0, Lsdd;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lsdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-object v1, p0, Lsdd;->b:Lcom/yandex/mobile/ads/impl/jw0;

    iget p0, p0, Lsdd;->c:I

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->Q(Lcom/yandex/mobile/ads/impl/ld$a;Lcom/yandex/mobile/ads/impl/jw0;ILcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
