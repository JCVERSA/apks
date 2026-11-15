.class public final Lcom/yandex/mobile/ads/impl/vm$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/vm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/sm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sm;)Lcom/yandex/mobile/ads/impl/vm$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vm$b;->a:Lcom/yandex/mobile/ads/impl/sm;

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/vm;
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/vm;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vm$b;->a:Lcom/yandex/mobile/ads/impl/sm;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/vm;-><init>(Lcom/yandex/mobile/ads/impl/sm;)V

    return-object v0
.end method
