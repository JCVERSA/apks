.class public final Lcom/yandex/mobile/ads/impl/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/q3;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/t8;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yandex/mobile/ads/impl/p51;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/p51;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/t8;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/t8;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/mobile/ads/impl/c5;-><init>(Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/t8;Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/p51;Lcom/yandex/mobile/ads/impl/t8;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/p51;",
            "Lcom/yandex/mobile/ads/impl/t8;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/yandex/mobile/ads/impl/p51;",
            ">;)V"
        }
    .end annotation

    .line 4
    const-string v0, "nativeAdEventController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adResultReceiver"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventControllerReference"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/c5;->a:Lcom/yandex/mobile/ads/impl/t8;

    .line 7
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/c5;->b:Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {p2, p0}, Lcom/yandex/mobile/ads/impl/t8;->a(Lcom/yandex/mobile/ads/impl/q3;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/t8;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c5;->a:Lcom/yandex/mobile/ads/impl/t8;

    return-object p0
.end method

.method public final a(ILandroid/os/Bundle;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/c5;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/p51;

    if-eqz p0, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    const/16 p2, 0x14

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p51;->b()V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p51;->c()V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p51;->d()V

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p51;->e()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p51;->f()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/p51;->g()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
