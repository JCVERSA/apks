.class public final synthetic Lwvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vf2$a;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/py;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/py;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwvd;->b:Lcom/yandex/mobile/ads/impl/vf2$a;

    iput-object p2, p0, Lwvd;->c:Lcom/yandex/mobile/ads/impl/py;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lwvd;->b:Lcom/yandex/mobile/ads/impl/vf2$a;

    iget-object p0, p0, Lwvd;->c:Lcom/yandex/mobile/ads/impl/py;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/vf2$a;->i(Lcom/yandex/mobile/ads/impl/vf2$a;Lcom/yandex/mobile/ads/impl/py;)V

    return-void
.end method
