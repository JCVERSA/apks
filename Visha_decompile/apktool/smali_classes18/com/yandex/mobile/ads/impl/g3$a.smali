.class final Lcom/yandex/mobile/ads/impl/g3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/g3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yandex/mobile/ads/impl/gt;",
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
    .locals 8

    check-cast p1, Lcom/yandex/mobile/ads/impl/gt;

    check-cast p2, Lcom/yandex/mobile/ads/impl/gt;

    const-string p0, "first"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "second"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/gt;->b()Lcom/yandex/mobile/ads/impl/ht;

    move-result-object p0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/gt;->b()Lcom/yandex/mobile/ads/impl/ht;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/ht;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/ht;->b()J

    move-result-wide p0

    sub-long v2, v0, p0

    const-wide/16 v4, -0x1

    const-wide/16 v6, 0x1

    invoke-static/range {v2 .. v7}, Lwn8;->l(JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method
