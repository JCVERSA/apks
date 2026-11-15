.class public final synthetic Lofd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/dt;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/dt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lofd;->b:Lcom/yandex/mobile/ads/impl/dt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lofd;->b:Lcom/yandex/mobile/ads/impl/dt;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/g11;->b(Lcom/yandex/mobile/ads/impl/dt;)V

    return-void
.end method
