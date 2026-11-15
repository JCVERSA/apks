.class public final synthetic Lkdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:I

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/hi1$c;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/hi1$c;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;ILcom/yandex/mobile/ads/impl/hi1$c;Lcom/yandex/mobile/ads/impl/hi1$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput p2, p0, Lkdd;->b:I

    iput-object p3, p0, Lkdd;->c:Lcom/yandex/mobile/ads/impl/hi1$c;

    iput-object p4, p0, Lkdd;->d:Lcom/yandex/mobile/ads/impl/hi1$c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget v1, p0, Lkdd;->b:I

    iget-object v2, p0, Lkdd;->c:Lcom/yandex/mobile/ads/impl/hi1$c;

    iget-object p0, p0, Lkdd;->d:Lcom/yandex/mobile/ads/impl/hi1$c;

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->h0(Lcom/yandex/mobile/ads/impl/ld$a;ILcom/yandex/mobile/ads/impl/hi1$c;Lcom/yandex/mobile/ads/impl/hi1$c;Lcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
