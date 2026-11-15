.class public final Lcom/yandex/mobile/ads/impl/nb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/am1;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/di1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/di1;)V
    .locals 1

    const-string v0, "progress"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nb0;->a:Lcom/yandex/mobile/ads/impl/di1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/di1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb0;->a:Lcom/yandex/mobile/ads/impl/di1;

    return-object p0
.end method
