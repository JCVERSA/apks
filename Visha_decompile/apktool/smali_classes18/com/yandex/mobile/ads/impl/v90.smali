.class public final Lcom/yandex/mobile/ads/impl/v90;
.super Lcom/yandex/mobile/ads/impl/c90;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/v90$a;,
        Lcom/yandex/mobile/ads/impl/v90$b;
    }
.end annotation


# instance fields
.field private final A:Lcom/yandex/mobile/ads/impl/t71;

.field private final B:Lcom/yandex/mobile/ads/impl/z91;

.field private final C:Lcom/yandex/mobile/ads/impl/sg0;

.field private final x:Lcom/yandex/mobile/ads/impl/z90;

.field private final y:Lcom/yandex/mobile/ads/impl/v7;

.field private final z:Lcom/yandex/mobile/ads/impl/xt1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/z90;Lcom/yandex/mobile/ads/impl/v7;Lcom/yandex/mobile/ads/impl/ka0;Lcom/yandex/mobile/ads/impl/xt1;Lcom/yandex/mobile/ads/impl/t71;Lcom/yandex/mobile/ads/impl/z91;Lcom/yandex/mobile/ads/impl/sg0;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adConfiguration"

    invoke-static {p3, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "feedItemLoadListener"

    invoke-static {p4, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "adRequestData"

    invoke-static {p5, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "sdkAdapterReporter"

    invoke-static {p7, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "requestParameterManager"

    invoke-static {p8, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "nativeResponseCreator"

    invoke-static {p9, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "htmlAdResponseReportManager"

    invoke-static {p10, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/yandex/mobile/ads/impl/g5;

    invoke-direct {p2}, Lcom/yandex/mobile/ads/impl/g5;-><init>()V

    invoke-direct {p0, p1, p3, p2, p6}, Lcom/yandex/mobile/ads/impl/c90;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/ka0;)V

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/v90;->x:Lcom/yandex/mobile/ads/impl/z90;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/v90;->y:Lcom/yandex/mobile/ads/impl/v7;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/v90;->z:Lcom/yandex/mobile/ads/impl/xt1;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/v90;->A:Lcom/yandex/mobile/ads/impl/t71;

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/v90;->B:Lcom/yandex/mobile/ads/impl/z91;

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/v90;->C:Lcom/yandex/mobile/ads/impl/sg0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/v90;)Lcom/yandex/mobile/ads/impl/z90;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v90;->x:Lcom/yandex/mobile/ads/impl/z90;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/v90;)Lcom/yandex/mobile/ads/impl/t71;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v90;->A:Lcom/yandex/mobile/ads/impl/t71;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/v90;)Lcom/yandex/mobile/ads/impl/xt1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v90;->z:Lcom/yandex/mobile/ads/impl/xt1;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 7
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v90;->C:Lcom/yandex/mobile/ads/impl/sg0;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/impl/sg0;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    .line 8
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v90;->C:Lcom/yandex/mobile/ads/impl/sg0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ck;->f()Lcom/yandex/mobile/ads/impl/o3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/impl/sg0;->a(Lcom/yandex/mobile/ads/impl/o3;)V

    .line 9
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v90;->B:Lcom/yandex/mobile/ads/impl/z91;

    .line 10
    new-instance v1, Lcom/yandex/mobile/ads/impl/v90$b;

    invoke-direct {v1, p0, p1}, Lcom/yandex/mobile/ads/impl/v90$b;-><init>(Lcom/yandex/mobile/ads/impl/v90;Lcom/yandex/mobile/ads/impl/o8;)V

    .line 11
    new-instance v2, Lcom/yandex/mobile/ads/impl/v90$a;

    invoke-direct {v2, p0, p1}, Lcom/yandex/mobile/ads/impl/v90$a;-><init>(Lcom/yandex/mobile/ads/impl/v90;Lcom/yandex/mobile/ads/impl/o8;)V

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Lcom/yandex/mobile/ads/impl/z91;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/z91$b;Lcom/yandex/mobile/ads/impl/dr1;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 2
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v90;->x:Lcom/yandex/mobile/ads/impl/z90;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/z90;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/yandex/mobile/ads/impl/o8;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/v90;->a(Lcom/yandex/mobile/ads/impl/o8;)V

    return-void
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v90;->y:Lcom/yandex/mobile/ads/impl/v7;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method
