.class public final Lcom/yandex/mobile/ads/impl/qd2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic c:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/yandex/mobile/ads/impl/pd2;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yandex/mobile/ads/impl/qd2$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v1, "getStatus()Lcom/monetization/ads/instream/status/VideoAdStatus;"

    const/4 v2, 0x0

    const-class v3, Lcom/yandex/mobile/ads/impl/qd2;

    const-string v4, "status"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->f(Lkotlin/jvm/internal/MutablePropertyReference1;)Lxe5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    aput-object v0, v1, v2

    sput-object v1, Lcom/yandex/mobile/ads/impl/qd2;->c:[Laf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/pd2;->b:Lcom/yandex/mobile/ads/impl/pd2;

    filled-new-array {v0}, [Lcom/yandex/mobile/ads/impl/pd2;

    move-result-object v0

    invoke-static {v0}, Lye9;->h([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qd2;->a:Ljava/util/Set;

    sget-object v0, Ll72;->a:Ll72;

    new-instance v0, Lcom/yandex/mobile/ads/impl/qd2$a;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/qd2$a;-><init>(Lcom/yandex/mobile/ads/impl/qd2;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/qd2;->b:Lcom/yandex/mobile/ads/impl/qd2$a;

    return-void
.end method

.method public static final synthetic a(Lcom/yandex/mobile/ads/impl/qd2;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qd2;->a:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/pd2;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qd2;->b:Lcom/yandex/mobile/ads/impl/qd2$a;

    sget-object v1, Lcom/yandex/mobile/ads/impl/qd2;->c:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lfd7;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/pd2;

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/pd2;)Z
    .locals 1

    .line 3
    const-string v0, "videoAdStatus"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/qd2;->a:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qd2;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    sget-object v0, Lcom/yandex/mobile/ads/impl/pd2;->b:Lcom/yandex/mobile/ads/impl/pd2;

    .line 3
    const-string v1, "<set-?>"

    invoke-static {v0, v1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/qd2;->b:Lcom/yandex/mobile/ads/impl/qd2$a;

    sget-object v2, Lcom/yandex/mobile/ads/impl/qd2;->c:[Laf5;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, p0, v2, v0}, Lfd7;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/yandex/mobile/ads/impl/pd2;)V
    .locals 3

    .line 5
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/qd2;->b:Lcom/yandex/mobile/ads/impl/qd2$a;

    sget-object v1, Lcom/yandex/mobile/ads/impl/qd2;->c:[Laf5;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lfd7;->setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V

    return-void
.end method
