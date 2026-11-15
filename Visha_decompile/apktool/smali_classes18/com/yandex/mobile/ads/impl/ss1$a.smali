.class final Lcom/yandex/mobile/ads/impl/ss1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/f1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ss1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ea1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ea1;)V
    .locals 1

    const-string v0, "nativeRewardViewController"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ss1$a;->a:Lcom/yandex/mobile/ads/impl/ea1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ss1$a;->a:Lcom/yandex/mobile/ads/impl/ea1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ea1;->c()V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ss1$a;->a:Lcom/yandex/mobile/ads/impl/ea1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ea1;->b()V

    return-void
.end method
