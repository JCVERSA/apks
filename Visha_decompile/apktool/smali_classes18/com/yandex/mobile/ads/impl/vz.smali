.class public final Lcom/yandex/mobile/ads/impl/vz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ig;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/ig<",
            "*>;"
        }
    .end annotation

    new-instance p0, Lcom/yandex/mobile/ads/impl/ig;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v1, "sponsored"

    const-string v2, "string"

    const-string v3, ""

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/yandex/mobile/ads/impl/ig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/yandex/mobile/ads/impl/vr0;ZZ)V

    return-object p0
.end method
