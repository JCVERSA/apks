.class final Lcom/yandex/mobile/ads/impl/jb0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ee2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/jb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/g5;

.field private final b:Lcom/yandex/mobile/ads/impl/we2;

.field private final c:Lcom/yandex/mobile/ads/impl/jb0$b;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/fb1;Lcom/yandex/mobile/ads/impl/za1;Ljava/util/Iterator;Lcom/yandex/mobile/ads/impl/dw;)V
    .locals 7

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoLoadListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeVideoCacheManager"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "urlToRequests"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugEventsReporter"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->a:Lcom/yandex/mobile/ads/impl/g5;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->b:Lcom/yandex/mobile/ads/impl/we2;

    new-instance v0, Lcom/yandex/mobile/ads/impl/jb0$b;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/jb0$b;-><init>(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/we2;Lcom/yandex/mobile/ads/impl/za1;Ljava/util/Iterator;Lcom/yandex/mobile/ads/impl/dw;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->c:Lcom/yandex/mobile/ads/impl/jb0$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->r:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->b:Lcom/yandex/mobile/ads/impl/we2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/we2;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->c:Lcom/yandex/mobile/ads/impl/jb0$b;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jb0$b;->a()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->a:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->r:Lcom/yandex/mobile/ads/impl/f5;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->b:Lcom/yandex/mobile/ads/impl/we2;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/we2;->a()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jb0$a;->c:Lcom/yandex/mobile/ads/impl/jb0$b;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/jb0$b;->b()V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method
