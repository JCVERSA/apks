.class public final Lcom/yandex/mobile/ads/impl/cz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/TimeUnit;

.field private final b:Lyi5;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/TimeUnit;)V
    .locals 1

    const-string v0, "timeUnit"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cz;->a:Ljava/util/concurrent/TimeUnit;

    new-instance p1, Lcom/yandex/mobile/ads/impl/bz;

    invoke-direct {p1, p0}, Lcom/yandex/mobile/ads/impl/bz;-><init>(Lcom/yandex/mobile/ads/impl/cz;)V

    invoke-static {p1}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cz;->b:Lyi5;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/cz;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/cz;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cz;->a:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cz;->b:Lyi5;

    invoke-interface {p0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
