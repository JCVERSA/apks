.class final Lcom/yandex/mobile/ads/impl/pm0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/pm0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yandex/mobile/ads/impl/ej1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lcom/yandex/mobile/ads/impl/ej1;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ej1;

    const-string p0, "first"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "second"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ej1;->a()Lcom/yandex/mobile/ads/impl/gt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gt;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ej1;->a()Lcom/yandex/mobile/ads/impl/gt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/gt;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preroll"

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "postroll"

    invoke-static {p0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ej1;->b()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ej1;->b()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-gez p0, :cond_5

    :goto_0
    const/4 p0, -0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method
