.class public final Lcom/google/android/exoplayer2/w1$g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/w1$g$a;
    }
.end annotation


# static fields
.field public static final f:Lcom/google/android/exoplayer2/w1$g;

.field public static final g:Lcom/google/android/exoplayer2/k$a;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:F

.field public final e:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/w1$g$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/exoplayer2/w1$g$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/w1$g$a;->f()Lcom/google/android/exoplayer2/w1$g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/exoplayer2/w1$g;->f:Lcom/google/android/exoplayer2/w1$g;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/exoplayer2/y1;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/google/android/exoplayer2/y1;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/google/android/exoplayer2/w1$g;->g:Lcom/google/android/exoplayer2/k$a;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(JJJFF)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/google/android/exoplayer2/w1$g;->a:J

    .line 10
    iput-wide p3, p0, Lcom/google/android/exoplayer2/w1$g;->b:J

    .line 11
    iput-wide p5, p0, Lcom/google/android/exoplayer2/w1$g;->c:J

    .line 12
    iput p7, p0, Lcom/google/android/exoplayer2/w1$g;->d:F

    .line 13
    iput p8, p0, Lcom/google/android/exoplayer2/w1$g;->e:F

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/w1$g$a;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$g$a;->a(Lcom/google/android/exoplayer2/w1$g$a;)J

    move-result-wide v1

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$g$a;->b(Lcom/google/android/exoplayer2/w1$g$a;)J

    move-result-wide v3

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$g$a;->c(Lcom/google/android/exoplayer2/w1$g$a;)J

    move-result-wide v5

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$g$a;->d(Lcom/google/android/exoplayer2/w1$g$a;)F

    move-result v7

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/w1$g$a;->e(Lcom/google/android/exoplayer2/w1$g$a;)F

    move-result v8

    move-object v0, p0

    .line 7
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/w1$g;-><init>(JJJFF)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/w1$g$a;Lcom/google/android/exoplayer2/w1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/w1$g;-><init>(Lcom/google/android/exoplayer2/w1$g$a;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/w1$g;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/w1$g;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/w1$g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x24

    .line 2
    .line 3
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/w1$g;
    .locals 11

    .line 1
    new-instance v9, Lcom/google/android/exoplayer2/w1$g;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3

    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, -0x800001

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    const/4 v0, 0x4

    .line 48
    invoke-static {v0}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    move-object v0, v9

    .line 57
    move-wide v1, v3

    .line 58
    move-wide v3, v5

    .line 59
    move-wide v5, v7

    .line 60
    move v7, v10

    .line 61
    move v8, p0

    .line 62
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/w1$g;-><init>(JJJFF)V

    .line 63
    .line 64
    .line 65
    return-object v9
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/w1$g$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/w1$g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/w1$g$a;-><init>(Lcom/google/android/exoplayer2/w1$g;Lcom/google/android/exoplayer2/w1$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/w1$g;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/w1$g;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/google/android/exoplayer2/w1$g;->a:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/google/android/exoplayer2/w1$g;->a:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/google/android/exoplayer2/w1$g;->b:J

    .line 22
    .line 23
    iget-wide v5, p1, Lcom/google/android/exoplayer2/w1$g;->b:J

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-wide v3, p0, Lcom/google/android/exoplayer2/w1$g;->c:J

    .line 30
    .line 31
    iget-wide v5, p1, Lcom/google/android/exoplayer2/w1$g;->c:J

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget v1, p0, Lcom/google/android/exoplayer2/w1$g;->d:F

    .line 38
    .line 39
    iget v3, p1, Lcom/google/android/exoplayer2/w1$g;->d:F

    .line 40
    .line 41
    cmpl-float v1, v1, v3

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget v1, p0, Lcom/google/android/exoplayer2/w1$g;->e:F

    .line 46
    .line 47
    iget p1, p1, Lcom/google/android/exoplayer2/w1$g;->e:F

    .line 48
    .line 49
    cmpl-float p1, v1, p1

    .line 50
    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v2

    .line 55
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/w1$g;->a:J

    .line 2
    .line 3
    const/16 v2, 0x20

    .line 4
    .line 5
    ushr-long v3, v0, v2

    .line 6
    .line 7
    xor-long/2addr v0, v3

    .line 8
    long-to-int v0, v0

    .line 9
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    .line 11
    iget-wide v3, p0, Lcom/google/android/exoplayer2/w1$g;->b:J

    .line 12
    .line 13
    ushr-long v5, v3, v2

    .line 14
    .line 15
    xor-long/2addr v3, v5

    .line 16
    long-to-int v1, v3

    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget-wide v3, p0, Lcom/google/android/exoplayer2/w1$g;->c:J

    .line 21
    .line 22
    ushr-long v1, v3, v2

    .line 23
    .line 24
    xor-long/2addr v1, v3

    .line 25
    long-to-int v1, v1

    .line 26
    add-int/2addr v0, v1

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    .line 28
    .line 29
    iget v1, p0, Lcom/google/android/exoplayer2/w1$g;->d:F

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    cmpl-float v3, v1, v2

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v1, v4

    .line 43
    :goto_0
    add-int/2addr v0, v1

    .line 44
    mul-int/lit8 v0, v0, 0x1f

    .line 45
    .line 46
    iget v1, p0, Lcom/google/android/exoplayer2/w1$g;->e:F

    .line 47
    .line 48
    cmpl-float v2, v1, v2

    .line 49
    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :cond_1
    add-int/2addr v0, v4

    .line 57
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-wide v2, p0, Lcom/google/android/exoplayer2/w1$g;->a:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-wide v2, p0, Lcom/google/android/exoplayer2/w1$g;->b:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-wide v2, p0, Lcom/google/android/exoplayer2/w1$g;->c:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lcom/google/android/exoplayer2/w1$g;->d:F

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-static {v1}, Lcom/google/android/exoplayer2/w1$g;->c(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v2, p0, Lcom/google/android/exoplayer2/w1$g;->e:F

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method
