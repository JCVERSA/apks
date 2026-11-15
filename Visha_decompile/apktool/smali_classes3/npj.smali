.class public final Lnpj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lnpj;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/ads/zzfww;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnpj;

    const/4 v1, 0x0

    new-array v2, v1, [Ln5f;

    invoke-direct {v0, v2}, Lnpj;-><init>([Ln5f;)V

    sput-object v0, Lnpj;->d:Lnpj;

    sget v0, Lkfh;->a:I

    const/16 v0, 0x24

    invoke-static {v1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Ln5f;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfww;->zzm([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object v0

    iput-object v0, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    array-length p1, p1

    iput p1, p0, Lnpj;->a:I

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, p1, 0x1

    move v1, v0

    :goto_1
    iget-object v2, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5f;

    iget-object v3, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln5f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Multiple identical TrackGroups added to one TrackGroupArray."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string v3, "TrackGroupArray"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ln5f;)I
    .locals 0

    iget-object p0, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfww;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final b(I)Ln5f;
    .locals 0

    iget-object p0, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5f;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzfww;
    .locals 1

    new-instance v0, Lmpj;

    invoke-direct {v0}, Lmpj;-><init>()V

    iget-object p0, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/p7;->b(Ljava/util/List;Lm2i;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfww;->zzl(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lnpj;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lnpj;

    iget v2, p0, Lnpj;->a:I

    iget v3, p1, Lnpj;->a:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    iget-object p1, p1, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfww;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lnpj;->c:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfww;->hashCode()I

    move-result v0

    iput v0, p0, Lnpj;->c:I

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnpj;->b:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
