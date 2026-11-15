.class public final synthetic Lt4e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/zi;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/zi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt4e;->b:Lcom/yandex/mobile/ads/impl/zi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lt4e;->b:Lcom/yandex/mobile/ads/impl/zi;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/zi;->h(Lcom/yandex/mobile/ads/impl/zi;)V

    return-void
.end method
