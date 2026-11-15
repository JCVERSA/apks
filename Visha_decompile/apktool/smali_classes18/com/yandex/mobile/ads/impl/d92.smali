.class public final Lcom/yandex/mobile/ads/impl/d92;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/c92;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/b92;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b92;)V
    .locals 1

    const-string v0, "userAgentCreator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/d92;->a:Lcom/yandex/mobile/ads/impl/b92;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/d92;->a:Lcom/yandex/mobile/ads/impl/b92;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/b92;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
