.class public final Lcom/yandex/mobile/ads/impl/pg2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/hc0;


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/mg2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pg2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg2;->m()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/ng2;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pg2;->a:Lcom/yandex/mobile/ads/impl/mg2;

    return-void
.end method
