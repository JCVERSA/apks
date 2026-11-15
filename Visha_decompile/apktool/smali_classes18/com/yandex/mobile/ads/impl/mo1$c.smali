.class final Lcom/yandex/mobile/ads/impl/mo1$c;
.super Lcom/yandex/mobile/ads/impl/kk0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/mo1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/impl/kk0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient e:[Ljava/lang/Object;

.field private final transient f:I

.field private final transient g:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lcom/yandex/mobile/ads/impl/kk0;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mo1$c;->e:[Ljava/lang/Object;

    iput p2, p0, Lcom/yandex/mobile/ads/impl/mo1$c;->f:I

    iput p3, p0, Lcom/yandex/mobile/ads/impl/mo1$c;->g:I

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/yandex/mobile/ads/impl/mo1$c;->g:I

    invoke-static {p1, v0}, Lcom/yandex/mobile/ads/impl/vj1;->a(II)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/mo1$c;->e:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Lcom/yandex/mobile/ads/impl/mo1$c;->f:I

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/yandex/mobile/ads/impl/mo1$c;->g:I

    return p0
.end method
