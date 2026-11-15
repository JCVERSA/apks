.class public final Lsph;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Lpph;

.field public c:J

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpph;

    invoke-direct {v0}, Lpph;-><init>()V

    iput-object v0, p0, Lsph;->b:Lpph;

    const/4 v0, 0x0

    iput v0, p0, Lsph;->d:I

    iput v0, p0, Lsph;->e:I

    iput v0, p0, Lsph;->f:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsph;->a:J

    iput-wide v0, p0, Lsph;->c:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lsph;->d:I

    return p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lsph;->a:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lsph;->c:J

    return-wide v0
.end method

.method public final d()Lpph;
    .locals 2

    iget-object p0, p0, Lsph;->b:Lpph;

    invoke-virtual {p0}, Lpph;->a()Lpph;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lpph;->b:Z

    iput v1, p0, Lpph;->c:I

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsph;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Last accessed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lsph;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Accesses: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsph;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nEntries retrieved: Valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsph;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Stale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lsph;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsph;->c:J

    iget v0, p0, Lsph;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsph;->d:I

    return-void
.end method

.method public final g()V
    .locals 1

    iget v0, p0, Lsph;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsph;->f:I

    iget-object p0, p0, Lsph;->b:Lpph;

    iget v0, p0, Lpph;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lpph;->c:I

    return-void
.end method

.method public final h()V
    .locals 2

    iget v0, p0, Lsph;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lsph;->e:I

    iget-object p0, p0, Lsph;->b:Lpph;

    iput-boolean v1, p0, Lpph;->b:Z

    return-void
.end method
