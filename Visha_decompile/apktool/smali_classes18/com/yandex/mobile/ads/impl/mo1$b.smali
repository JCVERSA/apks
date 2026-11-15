.class final Lcom/yandex/mobile/ads/impl/mo1$b;
.super Lcom/yandex/mobile/ads/impl/mk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/mo1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yandex/mobile/ads/impl/mk0<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient d:Lcom/yandex/mobile/ads/impl/lk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/lk0<",
            "TK;*>;"
        }
    .end annotation
.end field

.field private final transient e:Lcom/yandex/mobile/ads/impl/kk0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/lk0;Lcom/yandex/mobile/ads/impl/kk0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/lk0<",
            "TK;*>;",
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/mk0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mo1$b;->d:Lcom/yandex/mobile/ads/impl/lk0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/mo1$b;->e:Lcom/yandex/mobile/ads/impl/kk0;

    return-void
.end method


# virtual methods
.method public final a(I[Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mo1$b;->e:Lcom/yandex/mobile/ads/impl/kk0;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/kk0;->a(I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final b()Lcom/yandex/mobile/ads/impl/kk0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/kk0<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mo1$b;->e:Lcom/yandex/mobile/ads/impl/kk0;

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mo1$b;->d:Lcom/yandex/mobile/ads/impl/lk0;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/lk0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final iterator()Lcom/yandex/mobile/ads/impl/i82;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yandex/mobile/ads/impl/i82<",
            "TK;>;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mo1$b;->e:Lcom/yandex/mobile/ads/impl/kk0;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/impl/kk0;->a(I)Lcom/yandex/mobile/ads/impl/j82;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/mo1$b;->iterator()Lcom/yandex/mobile/ads/impl/i82;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mo1$b;->d:Lcom/yandex/mobile/ads/impl/lk0;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method
