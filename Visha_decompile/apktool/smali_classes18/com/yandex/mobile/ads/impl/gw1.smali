.class public final Lcom/yandex/mobile/ads/impl/gw1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/bv1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/bv1;)V
    .locals 1

    const-string v0, "sdkEnvironmentModule"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/gw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/o8;)Lcom/yandex/mobile/ads/impl/s51;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "*>;)",
            "Lcom/yandex/mobile/ads/impl/s51;"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/yandex/mobile/ads/impl/bx1;

    invoke-direct {v4}, Lcom/yandex/mobile/ads/impl/bx1;-><init>()V

    new-instance v3, Lcom/yandex/mobile/ads/impl/tt1;

    invoke-direct {v3}, Lcom/yandex/mobile/ads/impl/tt1;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/yv1;

    iget-object v6, p0, Lcom/yandex/mobile/ads/impl/gw1;->a:Lcom/yandex/mobile/ads/impl/bv1;

    new-instance v8, Lcom/yandex/mobile/ads/impl/nx0;

    invoke-direct {v8, v6, p1}, Lcom/yandex/mobile/ads/impl/nx0;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v9, Lcom/yandex/mobile/ads/impl/kx0;

    invoke-direct {v9, p1}, Lcom/yandex/mobile/ads/impl/kx0;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance v10, Lcom/yandex/mobile/ads/impl/mx0;

    invoke-direct {v10}, Lcom/yandex/mobile/ads/impl/mx0;-><init>()V

    new-instance v11, Lcom/yandex/mobile/ads/impl/lx0;

    invoke-direct {v11}, Lcom/yandex/mobile/ads/impl/lx0;-><init>()V

    move-object v5, v0

    move-object v7, p1

    invoke-direct/range {v5 .. v11}, Lcom/yandex/mobile/ads/impl/yv1;-><init>(Lcom/yandex/mobile/ads/impl/bv1;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/nx0;Lcom/yandex/mobile/ads/impl/kx0;Lcom/yandex/mobile/ads/impl/mx0;Lcom/yandex/mobile/ads/impl/lx0;)V

    new-instance v6, Lcom/yandex/mobile/ads/impl/sw1;

    invoke-direct {v6}, Lcom/yandex/mobile/ads/impl/sw1;-><init>()V

    new-instance v2, Lcom/yandex/mobile/ads/impl/ut1;

    invoke-direct {v2, p1}, Lcom/yandex/mobile/ads/impl/ut1;-><init>(Lcom/yandex/mobile/ads/impl/o8;)V

    new-instance p0, Lcom/yandex/mobile/ads/impl/s51;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/yandex/mobile/ads/impl/s51;-><init>(Lcom/yandex/mobile/ads/impl/y4;Lcom/yandex/mobile/ads/impl/q51;Lcom/yandex/mobile/ads/impl/ec1;Lcom/yandex/mobile/ads/impl/jx0;Lcom/yandex/mobile/ads/impl/p62;)V

    return-object p0
.end method
