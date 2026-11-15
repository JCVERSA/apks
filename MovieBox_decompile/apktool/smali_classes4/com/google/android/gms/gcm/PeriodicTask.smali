.class public Lcom/google/android/gms/gcm/PeriodicTask;
.super Lcom/google/android/gms/gcm/Task;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/gcm/PeriodicTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mFlexInSeconds:J

.field protected mIntervalInSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/gcm/zzk;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/gcm/zzk;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/gcm/PeriodicTask;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Landroid/os/Parcel;)V

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/gcm/zzk;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Lcom/google/android/gms/gcm/Task$Builder;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->zzd(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->zze(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/gcm/PeriodicTask$Builder;Lcom/google/android/gms/gcm/zzk;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)V

    return-void
.end method


# virtual methods
.method public getFlex()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPeriod()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/gcm/Task;->toBundle(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "period"

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    .line 10
    .line 11
    const-string v0, "period_flex"

    .line 12
    .line 13
    iget-wide v1, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PeriodicTask;->getPeriod()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PeriodicTask;->getFlex()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    add-int/lit8 v5, v5, 0x36

    .line 22
    .line 23
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " period="

    .line 32
    .line 33
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " flex="

    .line 40
    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/gcm/Task;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    .line 8
    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
