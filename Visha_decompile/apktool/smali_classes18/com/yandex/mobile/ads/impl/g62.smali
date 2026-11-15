.class public final Lcom/yandex/mobile/ads/impl/g62;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[Lcom/yandex/mobile/ads/impl/ap1;

.field public final c:[Lcom/yandex/mobile/ads/impl/h70;

.field public final d:Lcom/yandex/mobile/ads/impl/b72;

.field public final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/yandex/mobile/ads/impl/ap1;[Lcom/yandex/mobile/ads/impl/h70;Lcom/yandex/mobile/ads/impl/b72;Lcom/yandex/mobile/ads/impl/cu0$a;)V
    .locals 0
    .param p4    # Lcom/yandex/mobile/ads/impl/cu0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g62;->b:[Lcom/yandex/mobile/ads/impl/ap1;

    invoke-virtual {p2}, [Lcom/yandex/mobile/ads/impl/h70;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/yandex/mobile/ads/impl/h70;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/g62;->c:[Lcom/yandex/mobile/ads/impl/h70;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/g62;->d:Lcom/yandex/mobile/ads/impl/b72;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/g62;->e:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lcom/yandex/mobile/ads/impl/g62;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g62;->b:[Lcom/yandex/mobile/ads/impl/ap1;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
