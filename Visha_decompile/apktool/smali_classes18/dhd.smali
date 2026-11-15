.class public final synthetic Ldhd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/h40$a;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/h40;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/h40;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldhd;->b:Lcom/yandex/mobile/ads/impl/h40$a;

    iput-object p2, p0, Ldhd;->c:Lcom/yandex/mobile/ads/impl/h40;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldhd;->b:Lcom/yandex/mobile/ads/impl/h40$a;

    iget-object p0, p0, Ldhd;->c:Lcom/yandex/mobile/ads/impl/h40;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/h40$a;->b(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/h40;)V

    return-void
.end method
