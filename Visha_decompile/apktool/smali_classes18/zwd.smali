.class public final synthetic Lzwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/ww0$a;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/ww0;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/es0;

.field public final synthetic e:Lcom/yandex/mobile/ads/impl/lw0;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzwd;->b:Lcom/yandex/mobile/ads/impl/ww0$a;

    iput-object p2, p0, Lzwd;->c:Lcom/yandex/mobile/ads/impl/ww0;

    iput-object p3, p0, Lzwd;->d:Lcom/yandex/mobile/ads/impl/es0;

    iput-object p4, p0, Lzwd;->e:Lcom/yandex/mobile/ads/impl/lw0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzwd;->b:Lcom/yandex/mobile/ads/impl/ww0$a;

    iget-object v1, p0, Lzwd;->c:Lcom/yandex/mobile/ads/impl/ww0;

    iget-object v2, p0, Lzwd;->d:Lcom/yandex/mobile/ads/impl/es0;

    iget-object p0, p0, Lzwd;->e:Lcom/yandex/mobile/ads/impl/lw0;

    invoke-static {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/ww0$a;->d(Lcom/yandex/mobile/ads/impl/ww0$a;Lcom/yandex/mobile/ads/impl/ww0;Lcom/yandex/mobile/ads/impl/es0;Lcom/yandex/mobile/ads/impl/lw0;)V

    return-void
.end method
