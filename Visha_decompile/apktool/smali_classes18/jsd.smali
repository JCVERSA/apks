.class public final synthetic Ljsd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/wj1;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/s00;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/s00;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljsd;->b:Lcom/yandex/mobile/ads/impl/s00;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ljsd;->b:Lcom/yandex/mobile/ads/impl/s00;

    check-cast p1, Lcom/yandex/mobile/ads/impl/jc0;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/s00;->j(Lcom/yandex/mobile/ads/impl/s00;Lcom/yandex/mobile/ads/impl/jc0;)Z

    move-result p0

    return p0
.end method
