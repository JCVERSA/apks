.class final Lcom/yandex/mobile/ads/impl/ch2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ch2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/hh2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/hh2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ch2;->b:Lcom/yandex/mobile/ads/impl/hh2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/yandex/mobile/ads/impl/iy$h$a;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "switchType"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/yandex/mobile/ads/impl/ch2$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ch2;->b:Lcom/yandex/mobile/ads/impl/hh2;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hh2;->a(Lcom/yandex/mobile/ads/impl/hh2;)Le74;

    move-result-object p0

    new-instance p1, Lcom/yandex/mobile/ads/impl/dy$e;

    invoke-direct {p1, p2}, Lcom/yandex/mobile/ads/impl/dy$e;-><init>(Z)V

    invoke-interface {p0, p1}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
