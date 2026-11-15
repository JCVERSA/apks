.class public final Lcom/yandex/mobile/ads/impl/os0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/ns0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/qe;

.field private final b:Lcom/yandex/mobile/ads/impl/xv1;

.field private final c:Lcom/yandex/mobile/ads/impl/b01;

.field private final d:Lcom/yandex/mobile/ads/impl/ur;

.field private final e:Lcom/yandex/mobile/ads/impl/bw;

.field private final f:Lcom/yandex/mobile/ads/impl/ft0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/qe;Lcom/yandex/mobile/ads/impl/xv1;Lcom/yandex/mobile/ads/impl/b01;Lcom/yandex/mobile/ads/impl/ur;Lcom/yandex/mobile/ads/impl/bw;Lcom/yandex/mobile/ads/impl/ft0;)V
    .locals 1

    const-string v0, "appDataSource"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkIntegrationDataSource"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationNetworksDataSource"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentsDataSource"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugErrorIndicatorDataSource"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logsDataSource"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/os0;->a:Lcom/yandex/mobile/ads/impl/qe;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/os0;->b:Lcom/yandex/mobile/ads/impl/xv1;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/os0;->c:Lcom/yandex/mobile/ads/impl/b01;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/os0;->d:Lcom/yandex/mobile/ads/impl/ur;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/os0;->e:Lcom/yandex/mobile/ads/impl/bw;

    iput-object p6, p0, Lcom/yandex/mobile/ads/impl/os0;->f:Lcom/yandex/mobile/ads/impl/ft0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/nx;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/os0;->a:Lcom/yandex/mobile/ads/impl/qe;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/qe;->a()Lcom/yandex/mobile/ads/impl/xw;

    move-result-object v2

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/os0;->b:Lcom/yandex/mobile/ads/impl/xv1;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/xv1;->a()Lcom/yandex/mobile/ads/impl/yx;

    move-result-object v3

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/os0;->c:Lcom/yandex/mobile/ads/impl/b01;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/b01;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/os0;->d:Lcom/yandex/mobile/ads/impl/ur;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ur;->a()Lcom/yandex/mobile/ads/impl/ax;

    move-result-object v5

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/os0;->e:Lcom/yandex/mobile/ads/impl/bw;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/bw;->a()Lcom/yandex/mobile/ads/impl/hx;

    move-result-object v6

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/os0;->f:Lcom/yandex/mobile/ads/impl/ft0;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ft0;->a()Lcom/yandex/mobile/ads/impl/ox;

    move-result-object v7

    .line 7
    new-instance p0, Lcom/yandex/mobile/ads/impl/nx;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/yandex/mobile/ads/impl/nx;-><init>(Lcom/yandex/mobile/ads/impl/xw;Lcom/yandex/mobile/ads/impl/yx;Ljava/util/ArrayList;Lcom/yandex/mobile/ads/impl/ax;Lcom/yandex/mobile/ads/impl/hx;Lcom/yandex/mobile/ads/impl/ox;)V

    return-object p0
.end method

.method public final a(Z)V
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/os0;->e:Lcom/yandex/mobile/ads/impl/bw;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/bw;->a(Z)V

    return-void
.end method
