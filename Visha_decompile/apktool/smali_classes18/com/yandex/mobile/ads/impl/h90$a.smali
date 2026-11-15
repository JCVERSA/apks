.class final Lcom/yandex/mobile/ads/impl/h90$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/h90;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Loz3;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/g90;

.field final synthetic b:Lnk1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/g90;Lnk1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/h90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/h90$a;->b:Lnk1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/yandex/mobile/ads/impl/la0;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/la0;->c()Lcom/yandex/mobile/ads/impl/ea0;

    move-result-object p2

    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/ea0$a;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/la0;->c()Lcom/yandex/mobile/ads/impl/ea0;

    move-result-object p2

    check-cast p2, Lcom/yandex/mobile/ads/impl/ea0$a;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/ea0$a;->a()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p2

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/h90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/la0;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h90$a;->b:Lnk1;

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/w3;->d()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lkotlinx/coroutines/d;->e(Lnk1;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/ea0$c;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/la0;->b()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/yandex/mobile/ads/impl/ha0;->a:Lcom/yandex/mobile/ads/impl/ha0;

    invoke-static {p1, p2}, Li81;->K0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Lcom/yandex/mobile/ads/impl/ea0$b;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/la0;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    instance-of p2, p2, Lcom/yandex/mobile/ads/impl/ea0$d;

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/la0;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/la0;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/h90$a;->a:Lcom/yandex/mobile/ads/impl/g90;

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/la0;->b()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lcom/yandex/mobile/ads/impl/ha0;->a:Lcom/yandex/mobile/ads/impl/ha0;

    invoke-static {p1, p2}, Li81;->K0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    :cond_4
    :goto_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
