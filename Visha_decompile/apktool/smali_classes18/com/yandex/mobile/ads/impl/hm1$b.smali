.class public final Lcom/yandex/mobile/ads/impl/hm1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/hm1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:[F

.field public final d:[F


# direct methods
.method public constructor <init>(I[F[FI)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/hm1$b;->a:I

    array-length p1, p2

    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    array-length p1, p3

    int-to-long v2, p1

    const-wide/16 v4, 0x3

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Z)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/hm1$b;->c:[F

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/hm1$b;->d:[F

    iput p4, p0, Lcom/yandex/mobile/ads/impl/hm1$b;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hm1$b;->c:[F

    array-length p0, p0

    div-int/lit8 p0, p0, 0x3

    return p0
.end method
