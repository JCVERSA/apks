.class public final synthetic Lhwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/vh$a;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/jc0;

.field public final synthetic d:Lcom/yandex/mobile/ads/impl/ty;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/vh$a;Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhwd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iput-object p2, p0, Lhwd;->c:Lcom/yandex/mobile/ads/impl/jc0;

    iput-object p3, p0, Lhwd;->d:Lcom/yandex/mobile/ads/impl/ty;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lhwd;->b:Lcom/yandex/mobile/ads/impl/vh$a;

    iget-object v1, p0, Lhwd;->c:Lcom/yandex/mobile/ads/impl/jc0;

    iget-object p0, p0, Lhwd;->d:Lcom/yandex/mobile/ads/impl/ty;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/vh$a;->j(Lcom/yandex/mobile/ads/impl/vh$a;Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/ty;)V

    return-void
.end method
