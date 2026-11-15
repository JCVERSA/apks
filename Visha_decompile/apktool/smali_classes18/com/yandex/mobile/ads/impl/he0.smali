.class public final Lcom/yandex/mobile/ads/impl/he0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "fusedLocationProviderObject"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/he0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/ct0;
    .locals 2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/he0;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getLastLocation"

    invoke-static {p0, v1, v0}, Lcom/yandex/mobile/ads/impl/jo1$a;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/ct0;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/ct0;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
