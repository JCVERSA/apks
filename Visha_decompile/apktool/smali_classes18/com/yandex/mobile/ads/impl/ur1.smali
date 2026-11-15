.class public final Lcom/yandex/mobile/ads/impl/ur1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/ur1$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/mobile/ads/impl/ur1;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Z

.field private final c:Lcom/yandex/mobile/ads/impl/hp;

.field private final d:Lcom/yandex/mobile/ads/impl/rx1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/ur1$b;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/ur1$b;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/ur1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZLcom/yandex/mobile/ads/impl/hp;Lcom/yandex/mobile/ads/impl/rx1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/yandex/mobile/ads/impl/ur1;->b:Z

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ur1;->c:Lcom/yandex/mobile/ads/impl/hp;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/ur1;->d:Lcom/yandex/mobile/ads/impl/rx1;

    return-void
.end method


# virtual methods
.method public final c()Lcom/yandex/mobile/ads/impl/hp;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur1;->c:Lcom/yandex/mobile/ads/impl/hp;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/rx1;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur1;->d:Lcom/yandex/mobile/ads/impl/rx1;

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/yandex/mobile/ads/impl/ur1;->b:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/yandex/mobile/ads/impl/ur1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/ur1;

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/ur1;->b:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/ur1;->b:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ur1;->c:Lcom/yandex/mobile/ads/impl/hp;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/ur1;->c:Lcom/yandex/mobile/ads/impl/hp;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur1;->d:Lcom/yandex/mobile/ads/impl/rx1;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/ur1;->d:Lcom/yandex/mobile/ads/impl/rx1;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ur1;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ur1;->c:Lcom/yandex/mobile/ads/impl/hp;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/impl/hp;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur1;->d:Lcom/yandex/mobile/ads/impl/rx1;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/rx1;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ur1;->b:Z

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/ur1;->c:Lcom/yandex/mobile/ads/impl/hp;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur1;->d:Lcom/yandex/mobile/ads/impl/rx1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RewardData(serverSideRewardType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", clientSideReward="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", serverSideReward="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "out"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/ur1;->b:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ur1;->c:Lcom/yandex/mobile/ads/impl/hp;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/impl/hp;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ur1;->d:Lcom/yandex/mobile/ads/impl/rx1;

    if-nez p0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/rx1;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return-void
.end method
