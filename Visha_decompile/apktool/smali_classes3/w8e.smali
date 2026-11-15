.class public final Lw8e;
.super Ly5e;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Ly5e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Ly5e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Lw8e;
    .locals 0

    invoke-super {p0, p1}, Ly5e;->a(Ljava/lang/Object;)Ly5e;

    return-object p0
.end method

.method public final c(Ljava/util/Iterator;)Lw8e;
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ly5e;->a(Ljava/lang/Object;)Ly5e;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final d()Lcom/google/android/gms/internal/common/zzah;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ly5e;->c:Z

    iget-object v0, p0, Ly5e;->a:[Ljava/lang/Object;

    iget p0, p0, Ly5e;->b:I

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/common/zzah;->zzq([Ljava/lang/Object;I)Lcom/google/android/gms/internal/common/zzah;

    move-result-object p0

    return-object p0
.end method
