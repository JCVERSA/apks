.class public final Lcom/yandex/mobile/ads/impl/f6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/co0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/co0;)V
    .locals 1

    const-string v0, "instreamVastAdPlayer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/f6;->a:Lcom/yandex/mobile/ads/impl/co0;

    return-void
.end method


# virtual methods
.method public final a(FZ)V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/f6;->a:Lcom/yandex/mobile/ads/impl/co0;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/co0;->a(F)V

    return-void
.end method
