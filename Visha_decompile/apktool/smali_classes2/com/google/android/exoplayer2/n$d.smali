.class public abstract Lcom/google/android/exoplayer2/n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/n$d$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/google/android/exoplayer2/n$d;

.field public static final h:Lcom/google/android/exoplayer2/e$a;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/n$d$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$d$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/n$d$a;->f()Lcom/google/android/exoplayer2/n$d;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/n$d;->g:Lcom/google/android/exoplayer2/n$d;

    new-instance v0, Lbg6;

    invoke-direct {v0}, Lbg6;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/n$d;->h:Lcom/google/android/exoplayer2/e$a;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/n$d$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$d$a;->a(Lcom/google/android/exoplayer2/n$d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/n$d;->b:J

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$d$a;->b(Lcom/google/android/exoplayer2/n$d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/n$d;->c:J

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$d$a;->c(Lcom/google/android/exoplayer2/n$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/n$d;->d:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$d$a;->d(Lcom/google/android/exoplayer2/n$d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/n$d;->e:Z

    .line 7
    invoke-static {p1}, Lcom/google/android/exoplayer2/n$d$a;->e(Lcom/google/android/exoplayer2/n$d$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/n$d;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/n$d$a;Lcom/google/android/exoplayer2/n$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/n$d;-><init>(Lcom/google/android/exoplayer2/n$d$a;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n$e;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/n$d;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n$e;

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

.method public static synthetic d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/n$e;
    .locals 5

    new-instance v0, Lcom/google/android/exoplayer2/n$d$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/n$d$a;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/n$d$a;->k(J)Lcom/google/android/exoplayer2/n$d$a;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, -0x8000000000000000L

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/n$d$a;->h(J)Lcom/google/android/exoplayer2/n$d$a;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/n$d$a;->j(Z)Lcom/google/android/exoplayer2/n$d$a;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/n$d$a;->i(Z)Lcom/google/android/exoplayer2/n$d$a;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/n$d$a;->l(Z)Lcom/google/android/exoplayer2/n$d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/n$d$a;->g()Lcom/google/android/exoplayer2/n$e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/android/exoplayer2/n$d$a;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/n$d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/n$d$a;-><init>(Lcom/google/android/exoplayer2/n$d;Lcom/google/android/exoplayer2/n$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/n$d;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/n$d;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/n$d;->b:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/n$d;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/n$d;->c:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/n$d;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/n$d;->d:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/n$d;->d:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/n$d;->e:Z

    iget-boolean v3, p1, Lcom/google/android/exoplayer2/n$d;->e:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/n$d;->f:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/n$d;->f:Z

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/n$d;->b:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/google/android/exoplayer2/n$d;->c:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/n$d;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/n$d;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/n$d;->f:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/n$d;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/n$d;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/n$d;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/n$d;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/exoplayer2/n$d;->c(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/n$d;->f:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
