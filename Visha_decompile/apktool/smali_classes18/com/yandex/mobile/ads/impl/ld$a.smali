.class public final Lcom/yandex/mobile/ads/impl/ld$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/yandex/mobile/ads/impl/i52;

.field public final c:I

.field public final d:Lcom/yandex/mobile/ads/impl/vw0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final e:J

.field public final f:Lcom/yandex/mobile/ads/impl/i52;

.field public final g:I

.field public final h:Lcom/yandex/mobile/ads/impl/vw0$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final i:J

.field public final j:J


# direct methods
.method public constructor <init>(JLcom/yandex/mobile/ads/impl/i52;ILcom/yandex/mobile/ads/impl/vw0$b;JLcom/yandex/mobile/ads/impl/i52;ILcom/yandex/mobile/ads/impl/vw0$b;JJ)V
    .locals 0
    .param p5    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/yandex/mobile/ads/impl/vw0$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/yandex/mobile/ads/impl/ld$a;->a:J

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    iput p4, p0, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iput-wide p6, p0, Lcom/yandex/mobile/ads/impl/ld$a;->e:J

    iput-object p8, p0, Lcom/yandex/mobile/ads/impl/ld$a;->f:Lcom/yandex/mobile/ads/impl/i52;

    iput p9, p0, Lcom/yandex/mobile/ads/impl/ld$a;->g:I

    iput-object p10, p0, Lcom/yandex/mobile/ads/impl/ld$a;->h:Lcom/yandex/mobile/ads/impl/vw0$b;

    iput-wide p11, p0, Lcom/yandex/mobile/ads/impl/ld$a;->i:J

    iput-wide p13, p0, Lcom/yandex/mobile/ads/impl/ld$a;->j:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/yandex/mobile/ads/impl/ld$a;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ld$a;

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->a:J

    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/ld$a;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->e:J

    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/ld$a;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->g:I

    iget v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->g:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->i:J

    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/ld$a;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->j:J

    iget-wide v4, p1, Lcom/yandex/mobile/ads/impl/ld$a;->j:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/zd1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/zd1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/ld$a;->f:Lcom/yandex/mobile/ads/impl/i52;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ld$a;->f:Lcom/yandex/mobile/ads/impl/i52;

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/zd1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ld$a;->h:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ld$a;->h:Lcom/yandex/mobile/ads/impl/vw0$b;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/zd1;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 12

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ld$a;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/yandex/mobile/ads/impl/ld$a;->b:Lcom/yandex/mobile/ads/impl/i52;

    iget v0, p0, Lcom/yandex/mobile/ads/impl/ld$a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/yandex/mobile/ads/impl/ld$a;->d:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ld$a;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/yandex/mobile/ads/impl/ld$a;->f:Lcom/yandex/mobile/ads/impl/i52;

    iget v0, p0, Lcom/yandex/mobile/ads/impl/ld$a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/yandex/mobile/ads/impl/ld$a;->h:Lcom/yandex/mobile/ads/impl/vw0$b;

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ld$a;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/ld$a;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
