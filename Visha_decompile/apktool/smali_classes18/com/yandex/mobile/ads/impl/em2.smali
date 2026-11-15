.class public final Lcom/yandex/mobile/ads/impl/em2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/instream/InstreamAdBreakQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/instream/InstreamAdBreakQueue<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ut0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/ut0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ut0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/ut0<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "manualAdBreakQueue"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/em2;->a:Lcom/yandex/mobile/ads/impl/ut0;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/em2;->a:Lcom/yandex/mobile/ads/impl/ut0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ut0;->a()I

    move-result p0

    return p0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/em2;->a:Lcom/yandex/mobile/ads/impl/ut0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ut0;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
