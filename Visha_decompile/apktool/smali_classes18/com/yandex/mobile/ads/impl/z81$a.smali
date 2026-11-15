.class final Lcom/yandex/mobile/ads/impl/z81$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/gh1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/z81;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/z81;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/z81;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z81$a;->a:Lcom/yandex/mobile/ads/impl/z81;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/dh1;)V
    .locals 2

    const-string v0, "phoneState"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/z81$a;->a:Lcom/yandex/mobile/ads/impl/z81;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/z81;->f()Lcom/yandex/mobile/ads/impl/na1;

    move-result-object v0

    invoke-interface {v0}, Lcom/yandex/mobile/ads/impl/na1;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-class v1, Lcom/yandex/mobile/ads/impl/z81$a;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z81$a;->a:Lcom/yandex/mobile/ads/impl/z81;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/z81;->b(Lcom/yandex/mobile/ads/impl/z81;)Lcom/yandex/mobile/ads/impl/e31;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/e31;->a(Lcom/yandex/mobile/ads/impl/dh1;Z)V

    return-void
.end method
