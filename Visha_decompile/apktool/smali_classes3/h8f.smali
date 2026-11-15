.class public final Lh8f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# instance fields
.field public final a:Ljava/util/Date;

.field public final b:I

.field public final c:Ljava/util/Set;

.field public final d:Z

.field public final e:Landroid/location/Location;

.field public final f:I

.field public final g:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8f;->a:Ljava/util/Date;

    iput p2, p0, Lh8f;->b:I

    iput-object p3, p0, Lh8f;->c:Ljava/util/Set;

    iput-object p4, p0, Lh8f;->e:Landroid/location/Location;

    iput-boolean p5, p0, Lh8f;->d:Z

    iput p6, p0, Lh8f;->f:I

    iput-boolean p7, p0, Lh8f;->g:Z

    return-void
.end method


# virtual methods
.method public final getBirthday()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lh8f;->a:Ljava/util/Date;

    return-object p0
.end method

.method public final getGender()I
    .locals 0

    iget p0, p0, Lh8f;->b:I

    return p0
.end method

.method public final getKeywords()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lh8f;->c:Ljava/util/Set;

    return-object p0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 0

    iget-object p0, p0, Lh8f;->e:Landroid/location/Location;

    return-object p0
.end method

.method public final isDesignedForFamilies()Z
    .locals 0

    iget-boolean p0, p0, Lh8f;->g:Z

    return p0
.end method

.method public final isTesting()Z
    .locals 0

    iget-boolean p0, p0, Lh8f;->d:Z

    return p0
.end method

.method public final taggedForChildDirectedTreatment()I
    .locals 0

    iget p0, p0, Lh8f;->f:I

    return p0
.end method
