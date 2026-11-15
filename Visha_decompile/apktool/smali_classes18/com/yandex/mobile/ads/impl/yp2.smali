.class public final synthetic Lcom/yandex/mobile/ads/impl/yp2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/nb1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/nb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/yp2;->b:Lcom/yandex/mobile/ads/impl/nb1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yp2;->b:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb1$a;->b(Lcom/yandex/mobile/ads/impl/nb1;)V

    return-void
.end method
