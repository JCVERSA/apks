.class public final Lcom/yandex/mobile/ads/impl/mi1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/mi1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/mi1$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/yandex/mobile/ads/impl/mi1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/mi1;-><init>()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/yandex/mobile/ads/impl/mi1$a;->b:I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/mi1;-><init>(Lcom/yandex/mobile/ads/impl/mi1$a;)V

    .line 2
    sget p0, Lcom/yandex/mobile/ads/impl/f92;->a:I

    const/16 v0, 0x1f

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/hg;->b(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/media/metrics/LogSessionId;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    .line 3
    new-instance v0, Lcom/yandex/mobile/ads/impl/mi1$a;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/mi1$a;-><init>(Landroid/media/metrics/LogSessionId;)V

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/mi1;-><init>(Lcom/yandex/mobile/ads/impl/mi1$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/yandex/mobile/ads/impl/mi1$a;)V
    .locals 0
    .param p1    # Lcom/yandex/mobile/ads/impl/mi1$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/mi1;->a:Lcom/yandex/mobile/ads/impl/mi1$a;

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/metrics/LogSessionId;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1f
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mi1;->a:Lcom/yandex/mobile/ads/impl/mi1$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/mi1$a;->a:Landroid/media/metrics/LogSessionId;

    return-object p0
.end method
