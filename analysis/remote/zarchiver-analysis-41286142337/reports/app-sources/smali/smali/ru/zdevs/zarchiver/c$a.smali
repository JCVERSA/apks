.class public final Lru/zdevs/zarchiver/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh1/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/zdevs/zarchiver/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/zdevs/zarchiver/c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lh0/h;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public e:B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/zdevs/zarchiver/c$a$a;

    invoke-direct {v0}, Lru/zdevs/zarchiver/c$a$a;-><init>()V

    sput-object v0, Lru/zdevs/zarchiver/c$a;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-class v0, Lh0/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lh0/h;

    iput-object v0, p0, Lru/zdevs/zarchiver/c$a;->a:Lh0/h;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/zdevs/zarchiver/c$a;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/zdevs/zarchiver/c$a;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lru/zdevs/zarchiver/c$a;->d:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lru/zdevs/zarchiver/c$a;->e:B

    return-void
.end method

.method public constructor <init>(Lh0/h;Ljava/lang/String;Ljava/lang/String;ZB)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lru/zdevs/zarchiver/c$a;->a:Lh0/h;

    .line 3
    iput-object p2, p0, Lru/zdevs/zarchiver/c$a;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lru/zdevs/zarchiver/c$a;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lru/zdevs/zarchiver/c$a;->d:Z

    .line 6
    iput-byte p5, p0, Lru/zdevs/zarchiver/c$a;->e:B

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final type()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/c$a;->a:Lh0/h;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lru/zdevs/zarchiver/c$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lru/zdevs/zarchiver/c$a;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p0, Lru/zdevs/zarchiver/c$a;->d:Z

    .line 17
    .line 18
    int-to-byte p2, p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 20
    .line 21
    .line 22
    iget-byte p2, p0, Lru/zdevs/zarchiver/c$a;->e:B

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
