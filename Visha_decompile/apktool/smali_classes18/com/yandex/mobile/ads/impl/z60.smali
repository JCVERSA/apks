.class public final Lcom/yandex/mobile/ads/impl/z60;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/z60$a;
    }
.end annotation


# static fields
.field private static final c:J


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/hi1$b;

.field private final b:Lcom/yandex/mobile/ads/impl/mg1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/yandex/mobile/ads/impl/z60;->c:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/hi1$b;)V
    .locals 1

    .line 1
    sget v0, Lcom/yandex/mobile/ads/impl/mg1;->a:I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/mg1$a;->a(Z)Lcom/yandex/mobile/ads/impl/mg1;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/z60;-><init>(Lcom/yandex/mobile/ads/impl/hi1$b;Lcom/yandex/mobile/ads/impl/mg1;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hi1$b;Lcom/yandex/mobile/ads/impl/mg1;)V
    .locals 1

    .line 3
    const-string v0, "eventListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pausableTimer"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z60;->a:Lcom/yandex/mobile/ads/impl/hi1$b;

    .line 6
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/z60;->b:Lcom/yandex/mobile/ads/impl/mg1;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/z60;)Lcom/yandex/mobile/ads/impl/hi1$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z60;->a:Lcom/yandex/mobile/ads/impl/hi1$b;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/z60$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/z60$a;-><init>(Lcom/yandex/mobile/ads/impl/z60;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z60;->b:Lcom/yandex/mobile/ads/impl/mg1;

    sget-wide v1, Lcom/yandex/mobile/ads/impl/z60;->c:J

    invoke-interface {p0, v1, v2, v0}, Lcom/yandex/mobile/ads/impl/mg1;->a(JLcom/yandex/mobile/ads/impl/og1;)V

    return-void
.end method

.method public final b()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z60;->b:Lcom/yandex/mobile/ads/impl/mg1;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/mg1;->stop()V

    return-void
.end method
