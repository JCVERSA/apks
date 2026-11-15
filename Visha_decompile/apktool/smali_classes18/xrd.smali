.class public final synthetic Lxrd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/q6;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/rm1;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/q6;Lcom/yandex/mobile/ads/impl/rm1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxrd;->b:Lcom/yandex/mobile/ads/impl/q6;

    iput-object p2, p0, Lxrd;->c:Lcom/yandex/mobile/ads/impl/rm1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxrd;->b:Lcom/yandex/mobile/ads/impl/q6;

    iget-object p0, p0, Lxrd;->c:Lcom/yandex/mobile/ads/impl/rm1;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/rm1;->h(Lcom/yandex/mobile/ads/impl/q6;Lcom/yandex/mobile/ads/impl/rm1;)V

    return-void
.end method
