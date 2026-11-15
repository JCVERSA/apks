.class final Lcom/yandex/mobile/ads/impl/nb1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/mp1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/nb1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/nb1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/nb1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/nb1$b;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/yb1;)V
    .locals 1

    const-string v0, "nativeVideoView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/nb1$b;->a:Lcom/yandex/mobile/ads/impl/nb1;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/nb1;->c(Lcom/yandex/mobile/ads/impl/nb1;)Lcom/yandex/mobile/ads/impl/xh1;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/nb1;->a(Lcom/yandex/mobile/ads/impl/nb1;Lcom/yandex/mobile/ads/impl/xh1;)V

    return-void
.end method
