.class public abstract Ls3i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5i;


# instance fields
.field public transient b:Ljava/util/Set;

.field public transient c:Ljava/util/Collection;

.field public transient d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lb5i;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    check-cast p1, Lb5i;

    invoke-interface {p0}, Lb5i;->zzs()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lb5i;->zzs()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Ls3i;->zzs()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ls3i;->zzs()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract zzf()Ljava/util/Collection;
.end method

.method public abstract zzg()Ljava/util/Iterator;
.end method

.method public abstract zzj()Ljava/util/Map;
.end method

.method public abstract zzl()Ljava/util/Set;
.end method

.method public final zzr()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Ls3i;->c:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ls3i;->zzf()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Ls3i;->c:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method public final zzs()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Ls3i;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ls3i;->zzj()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ls3i;->d:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public final zzt()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ls3i;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ls3i;->zzl()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ls3i;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method
