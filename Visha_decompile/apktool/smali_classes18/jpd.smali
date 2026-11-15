.class public final synthetic Ljpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/om1;

.field public final synthetic c:Lcom/yandex/mobile/ads/impl/w3;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljpd;->b:Lcom/yandex/mobile/ads/impl/om1;

    iput-object p2, p0, Ljpd;->c:Lcom/yandex/mobile/ads/impl/w3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljpd;->b:Lcom/yandex/mobile/ads/impl/om1;

    iget-object p0, p0, Ljpd;->c:Lcom/yandex/mobile/ads/impl/w3;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/om1;->c(Lcom/yandex/mobile/ads/impl/om1;Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method
