.class public final Lcom/yandex/mobile/ads/impl/fz0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ib2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ib2;)V
    .locals 1

    const-string v0, "versionParser"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fz0;->a:Lcom/yandex/mobile/ads/impl/ib2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "current"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    invoke-static {p2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/fz0;->a:Lcom/yandex/mobile/ads/impl/ib2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/ib2;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/hb2;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fz0;->a:Lcom/yandex/mobile/ads/impl/ib2;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/ib2;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/impl/hb2;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/impl/hb2;->a(Lcom/yandex/mobile/ads/impl/hb2;)I

    move-result p0

    if-ltz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
.end method
