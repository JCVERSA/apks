.class final Lcom/yandex/mobile/ads/impl/j6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/k3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/j6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/j6;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/j6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/j6;->d()V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/j6;->b(Lcom/yandex/mobile/ads/impl/j6;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/j6;->c(Lcom/yandex/mobile/ads/impl/j6;)Lcom/yandex/mobile/ads/impl/g6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/g6;->c()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/j6;->e(Lcom/yandex/mobile/ads/impl/j6;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/j6;->f(Lcom/yandex/mobile/ads/impl/j6;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/j6;->a(Lcom/yandex/mobile/ads/impl/j6;)Lcom/yandex/mobile/ads/impl/y1;

    move-result-object v1

    invoke-interface {v1}, Lcom/yandex/mobile/ads/impl/y1;->b()V

    :cond_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/j6;->d(Lcom/yandex/mobile/ads/impl/j6;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Li81;->r0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/m6;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m6;->c()Lcom/yandex/mobile/ads/impl/o6;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/yandex/mobile/ads/impl/o6;->c:Lcom/yandex/mobile/ads/impl/o6;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/m6;->b()Lcom/yandex/mobile/ads/impl/n6;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j6$a;->a:Lcom/yandex/mobile/ads/impl/j6;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/j6;->d()V

    :cond_3
    return-void
.end method
