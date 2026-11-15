.class public final synthetic Lcom/yandex/mobile/ads/impl/wp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/jh;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/jh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wp2;->b:Lcom/yandex/mobile/ads/impl/jh;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wp2;->b:Lcom/yandex/mobile/ads/impl/jh;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/jh;->a(Lcom/yandex/mobile/ads/impl/jh;)V

    return-void
.end method
