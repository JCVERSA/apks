.class public final Lcom/yandex/mobile/ads/impl/ja0;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lcom/yandex/mobile/ads/impl/ia0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/yandex/mobile/ads/impl/ia0;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ia0;

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/yandex/mobile/ads/impl/ia0;

    check-cast p2, Lcom/yandex/mobile/ads/impl/ia0;

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lcom/yandex/mobile/ads/impl/n90;

    if-eqz p0, :cond_0

    instance-of p0, p2, Lcom/yandex/mobile/ads/impl/n90;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/yandex/mobile/ads/impl/n90;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/n90;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p0

    check-cast p2, Lcom/yandex/mobile/ads/impl/n90;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/n90;->a()Lcom/yandex/mobile/ads/impl/o8;

    move-result-object p1

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/yandex/mobile/ads/impl/ha0;->a:Lcom/yandex/mobile/ads/impl/ha0;

    invoke-static {p1, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2, p0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
