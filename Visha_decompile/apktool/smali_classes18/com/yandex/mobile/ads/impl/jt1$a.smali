.class final Lcom/yandex/mobile/ads/impl/jt1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/cd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/jt1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Lcom/yandex/mobile/ads/impl/bd;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Lcom/yandex/mobile/ads/impl/jt1$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/mobile/ads/impl/jt1$a;->a(IJ)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/bd;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jt1$a;->c:Lcom/yandex/mobile/ads/impl/bd;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final a(IJ)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jt1$a;->c:Lcom/yandex/mobile/ads/impl/bd;

    if-nez v0, :cond_0

    .line 4
    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/jt1$a;->a:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    .line 5
    iput-wide p2, p0, Lcom/yandex/mobile/ads/impl/jt1$a;->b:J

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final next()Lcom/yandex/mobile/ads/impl/cd$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jt1$a;->d:Lcom/yandex/mobile/ads/impl/jt1$a;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jt1$a;->c:Lcom/yandex/mobile/ads/impl/bd;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
