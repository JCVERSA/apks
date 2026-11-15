.class final Lcom/yandex/mobile/ads/impl/bo$b;
.super Lcom/yandex/mobile/ads/impl/s32;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private f:Lcom/yandex/mobile/ads/impl/sy$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/sy$a<",
            "Lcom/yandex/mobile/ads/impl/bo$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/sy$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/sy$a<",
            "Lcom/yandex/mobile/ads/impl/bo$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/s32;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/bo$b;->f:Lcom/yandex/mobile/ads/impl/sy$a;

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/bo$b;->f:Lcom/yandex/mobile/ads/impl/sy$a;

    invoke-interface {v0, p0}, Lcom/yandex/mobile/ads/impl/sy$a;->a(Lcom/yandex/mobile/ads/impl/sy;)V

    return-void
.end method
