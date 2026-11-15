.class public final synthetic Lcom/yandex/mobile/ads/impl/vr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/t32;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/t60;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/t60;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/vr2;->b:Lcom/yandex/mobile/ads/impl/t60;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/vr2;->b:Lcom/yandex/mobile/ads/impl/t60;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/t60;->a(Lcom/yandex/mobile/ads/impl/t60;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
