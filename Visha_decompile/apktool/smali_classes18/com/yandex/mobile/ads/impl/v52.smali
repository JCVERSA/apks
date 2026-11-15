.class public final Lcom/yandex/mobile/ads/impl/v52;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Lcom/yandex/mobile/ads/impl/jc0;

.field public final g:I

.field public final h:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:[J
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final j:I

.field private final k:[Lcom/yandex/mobile/ads/impl/w52;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJJJLcom/yandex/mobile/ads/impl/jc0;I[Lcom/yandex/mobile/ads/impl/w52;I[J[J)V
    .locals 0
    .param p11    # [Lcom/yandex/mobile/ads/impl/w52;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/v52;->a:I

    iput p2, p0, Lcom/yandex/mobile/ads/impl/v52;->b:I

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/v52;->c:J

    iput-wide p5, p0, Lcom/yandex/mobile/ads/impl/v52;->d:J

    iput-wide p7, p0, Lcom/yandex/mobile/ads/impl/v52;->e:J

    iput-object p9, p0, Lcom/yandex/mobile/ads/impl/v52;->f:Lcom/yandex/mobile/ads/impl/jc0;

    iput p10, p0, Lcom/yandex/mobile/ads/impl/v52;->g:I

    iput-object p11, p0, Lcom/yandex/mobile/ads/impl/v52;->k:[Lcom/yandex/mobile/ads/impl/w52;

    iput p12, p0, Lcom/yandex/mobile/ads/impl/v52;->j:I

    iput-object p13, p0, Lcom/yandex/mobile/ads/impl/v52;->h:[J

    iput-object p14, p0, Lcom/yandex/mobile/ads/impl/v52;->i:[J

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/w52;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v52;->k:[Lcom/yandex/mobile/ads/impl/w52;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-object p0, p0, p1

    :goto_0
    return-object p0
.end method
