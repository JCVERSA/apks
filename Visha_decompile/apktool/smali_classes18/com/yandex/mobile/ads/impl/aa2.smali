.class public final Lcom/yandex/mobile/ads/impl/aa2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dq1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/aa2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/dq1<",
        "Lcom/yandex/mobile/ads/impl/z92;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ha2;

.field private final b:Lcom/yandex/mobile/ads/impl/g5;

.field private final c:Lcom/yandex/mobile/ads/impl/dq1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/dq1<",
            "Lcom/yandex/mobile/ads/impl/z92;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yandex/mobile/ads/impl/yd2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/o3;Lcom/yandex/mobile/ads/impl/ha2;Lcom/yandex/mobile/ads/impl/ia2;Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/x92;Lcom/yandex/mobile/ads/impl/dq1;Lcom/yandex/mobile/ads/impl/yd2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adConfiguration"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "vastRequestConfiguration"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestConfigurationParametersProvider"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adLoadingPhasesManager"

    invoke-static {p5, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reportParametersProvider"

    invoke-static {p6, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestListener"

    invoke-static {p7, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseHandler"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/aa2;->a:Lcom/yandex/mobile/ads/impl/ha2;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/aa2;->b:Lcom/yandex/mobile/ads/impl/g5;

    iput-object p7, p0, Lcom/yandex/mobile/ads/impl/aa2;->c:Lcom/yandex/mobile/ads/impl/dq1;

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/aa2;->d:Lcom/yandex/mobile/ads/impl/yd2;

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/aa2;)V
    .locals 3

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v0, Lcom/yandex/mobile/ads/impl/fa2;

    const-string v1, "success"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/fa2;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/sb2;)V

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/aa2;->b:Lcom/yandex/mobile/ads/impl/g5;

    .line 9
    sget-object v2, Lcom/yandex/mobile/ads/impl/f5;->v:Lcom/yandex/mobile/ads/impl/f5;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aa2;->a:Lcom/yandex/mobile/ads/impl/ha2;

    .line 10
    invoke-virtual {v1, v2, v0, p0}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/zg1;Lcom/yandex/mobile/ads/impl/ha2;)V

    return-void
.end method

.method public static final a(Lcom/yandex/mobile/ads/impl/aa2;Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/yandex/mobile/ads/impl/fa2;

    const-string v1, "error"

    invoke-direct {v0, v1, p1}, Lcom/yandex/mobile/ads/impl/fa2;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/sb2;)V

    .line 3
    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/aa2;->b:Lcom/yandex/mobile/ads/impl/g5;

    .line 4
    sget-object v1, Lcom/yandex/mobile/ads/impl/f5;->v:Lcom/yandex/mobile/ads/impl/f5;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aa2;->a:Lcom/yandex/mobile/ads/impl/ha2;

    .line 5
    invoke-virtual {p1, v1, v0, p0}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/zg1;Lcom/yandex/mobile/ads/impl/ha2;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/sb2;)V
    .locals 4

    .line 11
    const-string v0, "error"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/yandex/mobile/ads/impl/fa2;

    invoke-direct {v1, v0, p1}, Lcom/yandex/mobile/ads/impl/fa2;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/impl/sb2;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/aa2;->b:Lcom/yandex/mobile/ads/impl/g5;

    .line 14
    sget-object v2, Lcom/yandex/mobile/ads/impl/f5;->v:Lcom/yandex/mobile/ads/impl/f5;

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/aa2;->a:Lcom/yandex/mobile/ads/impl/ha2;

    .line 15
    invoke-virtual {v0, v2, v1, v3}, Lcom/yandex/mobile/ads/impl/g5;->a(Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/zg1;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aa2;->c:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dq1;->a(Lcom/yandex/mobile/ads/impl/sb2;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 17
    check-cast p1, Lcom/yandex/mobile/ads/impl/z92;

    .line 18
    const-string v0, "result"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/z92;->b()Lcom/yandex/mobile/ads/impl/u92;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/u92;->b()Ljava/util/List;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/yandex/mobile/ads/impl/aa2$a;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/aa2;->c:Lcom/yandex/mobile/ads/impl/dq1;

    invoke-direct {v1, p0, p1, v2}, Lcom/yandex/mobile/ads/impl/aa2$a;-><init>(Lcom/yandex/mobile/ads/impl/aa2;Lcom/yandex/mobile/ads/impl/z92;Lcom/yandex/mobile/ads/impl/dq1;)V

    .line 21
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/aa2;->d:Lcom/yandex/mobile/ads/impl/yd2;

    invoke-virtual {p0, v0, v1}, Lcom/yandex/mobile/ads/impl/yd2;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/dq1;)V

    return-void
.end method
