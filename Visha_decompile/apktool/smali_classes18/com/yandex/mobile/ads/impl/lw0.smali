.class public final Lcom/yandex/mobile/ads/impl/lw0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/yandex/mobile/ads/impl/jc0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(IILcom/yandex/mobile/ads/impl/jc0;ILjava/lang/Object;JJ)V
    .locals 0
    .param p3    # Lcom/yandex/mobile/ads/impl/jc0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yandex/mobile/ads/impl/lw0;->a:I

    iput p2, p0, Lcom/yandex/mobile/ads/impl/lw0;->b:I

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/lw0;->c:Lcom/yandex/mobile/ads/impl/jc0;

    iput p4, p0, Lcom/yandex/mobile/ads/impl/lw0;->d:I

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/lw0;->e:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/yandex/mobile/ads/impl/lw0;->f:J

    iput-wide p8, p0, Lcom/yandex/mobile/ads/impl/lw0;->g:J

    return-void
.end method
