.class public final Lcom/google/android/exoplayer2/n$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n$g$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/google/android/exoplayer2/n$g;

.field public static final h:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:F

.field public final f:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/n$g$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$g$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$g$a;->f()Lcom/google/android/exoplayer2/n$g;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/n$g;->g:Lcom/google/android/exoplayer2/n$g;

    new-instance v0, Lcg6;

    invoke-direct {v0}, Lcg6;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/n$g;->h:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/n$g;->b:J

    .line 10
    iput-wide p3, p0, Lcom/google/android/exoplayer2/n$g;->c:J

    .line 11
    iput-wide p5, p0, Lcom/google/android/exoplayer2/n$g;->d:J

    .line 12
    iput p7, p0, Lcom/google/android/exoplayer2/n$g;->e:F

    .line 13
    iput p8, p0, Lcom/google/android/exoplayer2/n$g;->f:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/n$g$a;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$g$a;->a(Lcom/google/android/exoplayer2/n$g$a;)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$g$a;->b(Lcom/google/android/exoplayer2/n$g$a;)J

    move-result-wide v3

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$g$a;->c(Lcom/google/android/exoplayer2/n$g$a;)J

    move-result-wide v5

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$g$a;->d(Lcom/google/android/exoplayer2/n$g$a;)F

    move-result v7

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$g$a;->e(Lcom/google/android/exoplayer2/n$g$a;)F

    move-result v8

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/n$g;-><init>(JJJFF)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/n$g$a;Lcom/google/android/exoplayer2/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n$g;-><init>(Lcom/google/android/exoplayer2/n$g$a;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n$g;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n$g;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n$g;

    move-result-object p0

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n$g;
    .locals 11

    new-instance v9, Lcom/google/android/exoplayer2/n$g;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v0

    const v1, -0x800001

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v10

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    move-object v0, v9

    move-wide v1, v3

    move-wide v3, v5

    move-wide v5, v7

    move v7, v10

    move v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/n$g;-><init>(JJJFF)V

    return-object v9
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/n$g$a;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/n$g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/n$g$a;-><init>(Lcom/google/android/exoplayer2/n$g;Lcom/google/android/exoplayer2/n$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/n$g;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/n$g;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/n$g;->b:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/n$g;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/n$g;->c:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/n$g;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/n$g;->d:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/n$g;->d:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/n$g;->e:F

    iget v3, p1, Lcom/google/android/exoplayer2/n$g;->e:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/n$g;->f:F

    iget p1, p1, Lcom/google/android/exoplayer2/n$g;->f:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lcom/google/android/exoplayer2/n$g;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/n$g;->c:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/n$g;->d:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/n$g;->e:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/exoplayer2/n$g;->f:F

    cmpl-float v1, p0, v2

    if-eqz v1, :cond_1

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    :cond_1
    add-int/2addr v0, v4

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/n$g;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/n$g;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/n$g;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/n$g;->e:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$g;->c(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/google/android/exoplayer2/n$g;->f:F

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
