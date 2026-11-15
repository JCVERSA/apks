.class final Lcom/yandex/mobile/ads/impl/ko1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ko1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/ko1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ko1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ko1$a;->b:Lcom/yandex/mobile/ads/impl/ko1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ko1$a;->b:Lcom/yandex/mobile/ads/impl/ko1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/o3;->a()Lcom/yandex/mobile/ads/impl/v7;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ko1$a;->b:Lcom/yandex/mobile/ads/impl/ko1;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method
