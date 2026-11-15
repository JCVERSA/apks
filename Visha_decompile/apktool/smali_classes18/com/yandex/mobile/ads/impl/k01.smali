.class public final Lcom/yandex/mobile/ads/impl/k01;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/k01$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/mobile/ads/impl/k01;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[Lcom/yandex/mobile/ads/impl/k01$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/k01$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/k01$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/k01;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/k01$b;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 4
    const-class v2, Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/k01$b;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/yandex/mobile/ads/impl/k01$b;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/yandex/mobile/ads/impl/k01$b;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    return-void
.end method

.method public varargs constructor <init>([Lcom/yandex/mobile/ads/impl/k01$b;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/k01$b;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/k01;)Lcom/yandex/mobile/ads/impl/k01;
    .locals 0
    .param p1    # Lcom/yandex/mobile/ads/impl/k01;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/k01;->a([Lcom/yandex/mobile/ads/impl/k01$b;)Lcom/yandex/mobile/ads/impl/k01;

    move-result-object p0

    return-object p0
.end method

.method public final varargs a([Lcom/yandex/mobile/ads/impl/k01$b;)Lcom/yandex/mobile/ads/impl/k01;
    .locals 1

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/impl/k01;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/f92;->a([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/impl/k01;-><init>([Lcom/yandex/mobile/ads/impl/k01$b;)V

    return-object v0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    array-length p0, p0

    return p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/yandex/mobile/ads/impl/k01;

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/k01;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "entries="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/k01;->b:[Lcom/yandex/mobile/ads/impl/k01$b;

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
