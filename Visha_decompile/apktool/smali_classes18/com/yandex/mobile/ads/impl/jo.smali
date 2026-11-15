.class public final Lcom/yandex/mobile/ads/impl/jo;
.super Lcom/yandex/mobile/ads/impl/ti0;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/mobile/ads/impl/jo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:[Ljava/lang/String;

.field private final g:[Lcom/yandex/mobile/ads/impl/ti0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/jo$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/jo$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/jo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ti0;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jo;->c:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/yandex/mobile/ads/impl/jo;->d:Z

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcom/yandex/mobile/ads/impl/jo;->e:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/jo;->f:[Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 7
    new-array v2, v0, [Lcom/yandex/mobile/ads/impl/ti0;

    iput-object v2, p0, Lcom/yandex/mobile/ads/impl/jo;->g:[Lcom/yandex/mobile/ads/impl/ti0;

    :goto_2
    if-ge v1, v0, :cond_2

    .line 8
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jo;->g:[Lcom/yandex/mobile/ads/impl/ti0;

    const-class v3, Lcom/yandex/mobile/ads/impl/ti0;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/yandex/mobile/ads/impl/ti0;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/yandex/mobile/ads/impl/ti0;)V
    .locals 1

    .line 9
    const-string v0, "CTOC"

    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ti0;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jo;->c:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/yandex/mobile/ads/impl/jo;->d:Z

    .line 12
    iput-boolean p3, p0, Lcom/yandex/mobile/ads/impl/jo;->e:Z

    .line 13
    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/jo;->f:[Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/jo;->g:[Lcom/yandex/mobile/ads/impl/ti0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/yandex/mobile/ads/impl/jo;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/jo;

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/jo;->d:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/jo;->d:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/yandex/mobile/ads/impl/jo;->e:Z

    iget-boolean v3, p1, Lcom/yandex/mobile/ads/impl/jo;->e:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jo;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jo;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/yandex/mobile/ads/impl/f92;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/jo;->f:[Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/jo;->f:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jo;->g:[Lcom/yandex/mobile/ads/impl/ti0;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/jo;->g:[Lcom/yandex/mobile/ads/impl/ti0;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/yandex/mobile/ads/impl/jo;->d:Z

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/yandex/mobile/ads/impl/jo;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jo;->c:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/jo;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/jo;->d:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/yandex/mobile/ads/impl/jo;->e:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/jo;->f:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/jo;->g:[Lcom/yandex/mobile/ads/impl/ti0;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jo;->g:[Lcom/yandex/mobile/ads/impl/ti0;

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
