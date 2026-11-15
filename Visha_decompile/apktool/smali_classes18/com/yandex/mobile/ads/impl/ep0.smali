.class public final Lcom/yandex/mobile/ads/impl/ep0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/aj2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/aj2<",
        "Lcom/yandex/mobile/ads/impl/rx;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hr1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/hr1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu95;

.field private final c:Lcom/yandex/mobile/ads/impl/ui2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/f32;Lu95;Lcom/yandex/mobile/ads/impl/ui2;)V
    .locals 1

    const-string v0, "stringResponseParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsonParser"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseMapper"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ep0;->a:Lcom/yandex/mobile/ads/impl/hr1;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ep0;->b:Lu95;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ep0;->c:Lcom/yandex/mobile/ads/impl/ui2;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/xc1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "networkResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ep0;->c:Lcom/yandex/mobile/ads/impl/ui2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ui2;->a(Lcom/yandex/mobile/ads/impl/xc1;)Lcom/yandex/mobile/ads/impl/wq1;

    move-result-object p1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ep0;->a:Lcom/yandex/mobile/ads/impl/hr1;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/hr1;->a(Lcom/yandex/mobile/ads/impl/wq1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ep0;->b:Lu95;

    invoke-virtual {p0}, Lu95;->a()Ltd9;

    sget-object v0, Lcom/yandex/mobile/ads/impl/rx;->Companion:Lcom/yandex/mobile/ads/impl/rx$b;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/rx$b;->serializer()Lef5;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lu95;->c(Lk92;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/rx;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method
