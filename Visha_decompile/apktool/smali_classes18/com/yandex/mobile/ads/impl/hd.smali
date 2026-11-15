.class public final Lcom/yandex/mobile/ads/impl/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/le;


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/hd;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hd;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object v0, Lcom/yandex/mobile/ads/impl/hd;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/hd;Lcom/yandex/mobile/ads/impl/je;)V
    .locals 1

    .line 3
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$report"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hd;->b(Lcom/yandex/mobile/ads/impl/je;)V

    .line 5
    sget-object p0, Lcom/yandex/mobile/ads/impl/fd;->a:Lcom/yandex/mobile/ads/impl/fd;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/fd;->a(Lcom/yandex/mobile/ads/impl/je;)V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/hd;Lcom/yandex/mobile/ads/impl/je;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/hd;->a(Lcom/yandex/mobile/ads/impl/hd;Lcom/yandex/mobile/ads/impl/je;)V

    return-void
.end method

.method private static b(Lcom/yandex/mobile/ads/impl/je;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/je;->a()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/je;->b()Ljava/lang/String;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/sp0;->a([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/je;)V
    .locals 2

    .line 1
    const-string v0, "report"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/hd;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lqhd;

    invoke-direct {v1, p0, p1}, Lqhd;-><init>(Lcom/yandex/mobile/ads/impl/hd;Lcom/yandex/mobile/ads/impl/je;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
