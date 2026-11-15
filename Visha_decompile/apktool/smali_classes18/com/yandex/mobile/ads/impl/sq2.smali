.class public final synthetic Lcom/yandex/mobile/ads/impl/sq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/yandex/mobile/ads/impl/hi1$c;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/hi1$c;


# direct methods
.method public synthetic constructor <init>(ILcom/yandex/mobile/ads/impl/hi1$c;Lcom/yandex/mobile/ads/impl/hi1$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/sq2;->a:I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/sq2;->b:Lcom/yandex/mobile/ads/impl/hi1$c;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/sq2;->c:Lcom/yandex/mobile/ads/impl/hi1$c;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/yandex/mobile/ads/impl/sq2;->a:I

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/sq2;->b:Lcom/yandex/mobile/ads/impl/hi1$c;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sq2;->c:Lcom/yandex/mobile/ads/impl/hi1$c;

    check-cast p1, Lcom/yandex/mobile/ads/impl/hi1$b;

    invoke-static {v0, v1, p0, p1}, Lcom/yandex/mobile/ads/impl/r60;->A(ILcom/yandex/mobile/ads/impl/hi1$c;Lcom/yandex/mobile/ads/impl/hi1$c;Lcom/yandex/mobile/ads/impl/hi1$b;)V

    return-void
.end method
