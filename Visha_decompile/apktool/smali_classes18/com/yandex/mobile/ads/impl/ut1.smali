.class public final Lcom/yandex/mobile/ads/impl/ut1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/y4;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ut1;->a:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/w1;
    .locals 0

    new-instance p0, Lcom/yandex/mobile/ads/impl/wt1;

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/wt1;-><init>()V

    return-object p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/s8;
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/vt1;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ut1;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/vt1;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    return-object v0
.end method
