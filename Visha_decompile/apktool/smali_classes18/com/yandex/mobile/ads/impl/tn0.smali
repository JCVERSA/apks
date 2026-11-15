.class public final Lcom/yandex/mobile/ads/impl/tn0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/tn0$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/kj0;

.field private final b:Lcom/yandex/mobile/ads/impl/g5;

.field private final c:Lcom/yandex/mobile/ads/impl/bh;

.field private final d:Lcom/yandex/mobile/ads/impl/ck0;

.field private final e:Lcom/yandex/mobile/ads/impl/vu;

.field private final f:Lcom/yandex/mobile/ads/impl/ek0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/kj0;Lcom/yandex/mobile/ads/impl/g5;)V
    .locals 1

    const-string v0, "imageLoadManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadingPhasesManager"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tn0;->a:Lcom/yandex/mobile/ads/impl/kj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/tn0;->b:Lcom/yandex/mobile/ads/impl/g5;

    new-instance p1, Lcom/yandex/mobile/ads/impl/bh;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/bh;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tn0;->c:Lcom/yandex/mobile/ads/impl/bh;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ck0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ck0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tn0;->d:Lcom/yandex/mobile/ads/impl/ck0;

    new-instance p1, Lcom/yandex/mobile/ads/impl/vu;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/vu;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tn0;->e:Lcom/yandex/mobile/ads/impl/vu;

    new-instance p1, Lcom/yandex/mobile/ads/impl/ek0;

    invoke-direct {p1}, Lcom/yandex/mobile/ads/impl/ek0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/tn0;->f:Lcom/yandex/mobile/ads/impl/ek0;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/tn0;)Lcom/yandex/mobile/ads/impl/g5;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tn0;->b:Lcom/yandex/mobile/ads/impl/g5;

    return-object p0
.end method

.method public static final synthetic b(Lcom/yandex/mobile/ads/impl/tn0;)Lcom/yandex/mobile/ads/impl/bh;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tn0;->c:Lcom/yandex/mobile/ads/impl/bh;

    return-object p0
.end method

.method public static final synthetic c(Lcom/yandex/mobile/ads/impl/tn0;)Lcom/yandex/mobile/ads/impl/ck0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/tn0;->d:Lcom/yandex/mobile/ads/impl/ck0;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/zb2;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/eo0;)V
    .locals 9

    .line 2
    const-string v0, "videoAdInfo"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageProvider"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tn0;->e:Lcom/yandex/mobile/ads/impl/vu;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->b()Lcom/yandex/mobile/ads/impl/uu;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/vu;->a(Lcom/yandex/mobile/ads/impl/uu;)Ljava/util/List;

    move-result-object v4

    .line 4
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/tn0;->f:Lcom/yandex/mobile/ads/impl/ek0;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v4, v1}, Lcom/yandex/mobile/ads/impl/ek0;->a(Ljava/util/List;Lcom/yandex/mobile/ads/impl/vr0;)Ljava/util/Set;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/tn0;->b:Lcom/yandex/mobile/ads/impl/g5;

    sget-object v3, Lcom/yandex/mobile/ads/impl/f5;->q:Lcom/yandex/mobile/ads/impl/f5;

    .line 7
    const-string v5, "adLoadingPhaseType"

    invoke-static {v2, v3, v5, v3, v1}, Lcom/yandex/mobile/ads/impl/bk;->a(Lcom/yandex/mobile/ads/impl/g5;Lcom/yandex/mobile/ads/impl/f5;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/f5;Lcom/yandex/mobile/ads/impl/ha2;)V

    .line 8
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/tn0;->a:Lcom/yandex/mobile/ads/impl/kj0;

    .line 9
    new-instance v8, Lcom/yandex/mobile/ads/impl/un0;

    move-object v2, v8

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/yandex/mobile/ads/impl/un0;-><init>(Lcom/yandex/mobile/ads/impl/tn0;Ljava/util/List;Lcom/yandex/mobile/ads/impl/sj0;Lcom/yandex/mobile/ads/impl/eo0;Lcom/yandex/mobile/ads/impl/zb2;)V

    .line 10
    invoke-virtual {v1, v0, v8}, Lcom/yandex/mobile/ads/impl/kj0;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/impl/gk0;)V

    return-void
.end method
