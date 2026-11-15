.class public final synthetic Lipd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/om1;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/bg;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/bg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lipd;->b:Lcom/yandex/mobile/ads/impl/om1;

    iput-object p2, p0, Lipd;->c:Lcom/yandex/mobile/ads/impl/bg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lipd;->b:Lcom/yandex/mobile/ads/impl/om1;

    iget-object p0, p0, Lipd;->c:Lcom/yandex/mobile/ads/impl/bg;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/om1;->b(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/bg;)V

    return-void
.end method
