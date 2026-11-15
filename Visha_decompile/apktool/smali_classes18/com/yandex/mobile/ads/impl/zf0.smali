.class public final Lcom/yandex/mobile/ads/impl/zf0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bg0;

.field private final b:Lcom/yandex/mobile/ads/impl/n2;

.field private final c:Lcom/yandex/mobile/ads/impl/gg0;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/bg0;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/bg0;-><init>()V

    .line 2
    sget v1, Lcom/yandex/mobile/ads/impl/n2;->e:I

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/n2$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/n2;

    move-result-object v1

    .line 3
    new-instance v2, Lcom/yandex/mobile/ads/impl/gg0;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/gg0;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/yandex/mobile/ads/impl/zf0;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bg0;Lcom/yandex/mobile/ads/impl/n2;Lcom/yandex/mobile/ads/impl/gg0;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bg0;Lcom/yandex/mobile/ads/impl/n2;Lcom/yandex/mobile/ads/impl/gg0;)V
    .locals 1

    .line 5
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hostAccessAdBlockerDetector"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adBlockerStateStorageManager"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "hostAccessCheckerFactory"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/zf0;->a:Lcom/yandex/mobile/ads/impl/bg0;

    .line 8
    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/zf0;->b:Lcom/yandex/mobile/ads/impl/n2;

    .line 9
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/zf0;->c:Lcom/yandex/mobile/ads/impl/gg0;

    return-void
.end method

.method private static final a(Lcom/yandex/mobile/ads/impl/zf0;Lcom/yandex/mobile/ads/impl/g2;Lcom/yandex/mobile/ads/impl/e2;Ljava/lang/Boolean;)V
    .locals 1

    .line 5
    const-string v0, "this$0"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$requestPolicy"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adBlockerDetectorListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zf0;->b:Lcom/yandex/mobile/ads/impl/n2;

    invoke-virtual {p0, p3, p1}, Lcom/yandex/mobile/ads/impl/n2;->a(Ljava/lang/Boolean;Lcom/yandex/mobile/ads/impl/g2;)V

    .line 7
    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/e2;->a()V

    return-void
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/zf0;Lcom/yandex/mobile/ads/impl/g2;Lcom/yandex/mobile/ads/impl/e2;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/zf0;->a(Lcom/yandex/mobile/ads/impl/zf0;Lcom/yandex/mobile/ads/impl/g2;Lcom/yandex/mobile/ads/impl/e2;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/e2;Lcom/yandex/mobile/ads/impl/g2;)V
    .locals 1

    .line 1
    const-string v0, "adBlockerDetectorListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestPolicy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lo4e;

    invoke-direct {v0, p0, p2, p1}, Lo4e;-><init>(Lcom/yandex/mobile/ads/impl/zf0;Lcom/yandex/mobile/ads/impl/g2;Lcom/yandex/mobile/ads/impl/e2;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/zf0;->c:Lcom/yandex/mobile/ads/impl/gg0;

    invoke-virtual {p1, p2}, Lcom/yandex/mobile/ads/impl/gg0;->a(Lcom/yandex/mobile/ads/impl/g2;)Lcom/yandex/mobile/ads/impl/ct;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/zf0;->a:Lcom/yandex/mobile/ads/impl/bg0;

    invoke-virtual {p0, v0, p1}, Lcom/yandex/mobile/ads/impl/bg0;->a(Lcom/yandex/mobile/ads/impl/cg0;Lcom/yandex/mobile/ads/impl/ct;)V

    return-void
.end method
