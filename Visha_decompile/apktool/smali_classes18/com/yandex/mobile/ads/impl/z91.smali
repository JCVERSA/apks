.class public final Lcom/yandex/mobile/ads/impl/z91;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/z91$a;,
        Lcom/yandex/mobile/ads/impl/z91$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;

.field private final b:Lcom/yandex/mobile/ads/impl/y91;

.field private final c:Lcom/yandex/mobile/ads/impl/i51;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/yandex/mobile/ads/impl/su;->a()Lnk1;

    move-result-object v6

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v0, "getApplicationContext(...)"

    invoke-static {v7, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v8, Lcom/yandex/mobile/ads/impl/y91;

    invoke-interface {p2}, Lcom/yandex/mobile/ads/impl/bv1;->c()Lcom/yandex/mobile/ads/impl/s01;

    move-result-object v0

    invoke-direct {v8, p1, v0}, Lcom/yandex/mobile/ads/impl/y91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/sp1;)V

    .line 4
    new-instance v9, Lcom/yandex/mobile/ads/impl/i51;

    move-object v0, v9

    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/i51;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .line 5
    invoke-direct/range {v0 .. v8}, Lcom/yandex/mobile/ads/impl/z91;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/y91;Lcom/yandex/mobile/ads/impl/i51;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lnk1;Landroid/content/Context;Lcom/yandex/mobile/ads/impl/y91;Lcom/yandex/mobile/ads/impl/i51;)V
    .locals 1

    .line 6
    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkEnvironmentModule"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "coroutineScope"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appContext"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeResponseConverter"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nativeAdCreationManager"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/z91;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 9
    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/z91;->b:Lcom/yandex/mobile/ads/impl/y91;

    .line 10
    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/z91;->c:Lcom/yandex/mobile/ads/impl/i51;

    .line 11
    sget-object p0, Lcom/yandex/mobile/ads/impl/ca1;->c:Lcom/yandex/mobile/ads/impl/ca1;

    invoke-virtual {p3, p0}, Lcom/yandex/mobile/ads/impl/o3;->a(Lcom/yandex/mobile/ads/impl/ca1;)V

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/z91;)Lcom/yandex/mobile/ads/impl/i51;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z91;->c:Lcom/yandex/mobile/ads/impl/i51;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z91;->c:Lcom/yandex/mobile/ads/impl/i51;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/i51;->a()V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/z91$b;Lcom/yandex/mobile/ads/impl/dr1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/z91$b;",
            "Lcom/yandex/mobile/ads/impl/dr1;",
            ")V"
        }
    .end annotation

    .line 2
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseCreationListener"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converterListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/z91$a;

    .line 4
    new-instance v6, Lcom/yandex/mobile/ads/impl/gw1;

    .line 5
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/z91;->a:Lcom/yandex/mobile/ads/impl/bv1;

    .line 6
    invoke-direct {v6, v1}, Lcom/yandex/mobile/ads/impl/gw1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;)V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/z91$a;-><init>(Lcom/yandex/mobile/ads/impl/z91;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/z91$b;Lcom/yandex/mobile/ads/impl/dr1;Lcom/yandex/mobile/ads/impl/gw1;)V

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z91;->b:Lcom/yandex/mobile/ads/impl/y91;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/y91;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/dr1;)V

    return-void
.end method
