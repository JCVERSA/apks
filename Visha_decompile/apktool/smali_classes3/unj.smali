.class public final Lunj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltqj;


# instance fields
.field public final a:Ltqj;

.field public final b:Ln5f;


# direct methods
.method public constructor <init>(Ltqj;Ln5f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lunj;->a:Ltqj;

    iput-object p2, p0, Lunj;->b:Ln5f;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    iget-object p0, p0, Lunj;->a:Ltqj;

    invoke-interface {p0, p1}, Lxqj;->a(I)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lunj;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lunj;

    iget-object v1, p0, Lunj;->a:Ltqj;

    iget-object v3, p1, Lunj;->a:Ltqj;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lunj;->b:Ln5f;

    iget-object p1, p1, Lunj;->b:Ln5f;

    invoke-virtual {p0, p1}, Ln5f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lunj;->b:Ln5f;

    invoke-virtual {v0}, Ln5f;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    iget-object p0, p0, Lunj;->a:Ltqj;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final zza(I)I
    .locals 0

    iget-object p0, p0, Lunj;->a:Ltqj;

    invoke-interface {p0, p1}, Lxqj;->zza(I)I

    move-result p0

    return p0
.end method

.method public final zzb()I
    .locals 0

    iget-object p0, p0, Lunj;->a:Ltqj;

    invoke-interface {p0}, Ltqj;->zzb()I

    move-result p0

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget-object p0, p0, Lunj;->a:Ltqj;

    invoke-interface {p0}, Lxqj;->zzd()I

    move-result p0

    return p0
.end method

.method public final zze(I)Lerj;
    .locals 1

    iget-object v0, p0, Lunj;->a:Ltqj;

    iget-object p0, p0, Lunj;->b:Ln5f;

    invoke-interface {v0, p1}, Lxqj;->zza(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ln5f;->b(I)Lerj;

    move-result-object p0

    return-object p0
.end method

.method public final zzf()Lerj;
    .locals 1

    iget-object v0, p0, Lunj;->a:Ltqj;

    iget-object p0, p0, Lunj;->b:Ln5f;

    invoke-interface {v0}, Ltqj;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Ln5f;->b(I)Lerj;

    move-result-object p0

    return-object p0
.end method

.method public final zzg()Ln5f;
    .locals 0

    iget-object p0, p0, Lunj;->b:Ln5f;

    return-object p0
.end method
