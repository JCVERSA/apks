.class public final Lcom/transsion/letswitch/service/api/data/InstallFileInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J.\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u0010\u0010\u001c\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u000cJ\u001a\u0010 \u001a\u00020\u001f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003\u00a2\u0006\u0004\u0008 \u0010!R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\"\u001a\u0004\u0008#\u0010\u0014R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010$\u001a\u0004\u0008%\u0010\u0016R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010&\u001a\u0004\u0008\'\u0010\u0018\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
        "Landroid/os/Parcelable;",
        "Landroid/os/ParcelFileDescriptor;",
        "pfd",
        "",
        "length",
        "",
        "fileName",
        "<init>",
        "(Landroid/os/ParcelFileDescriptor;JLjava/lang/String;)V",
        "",
        "describeContents",
        "()I",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "Lzfb;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "component1",
        "()Landroid/os/ParcelFileDescriptor;",
        "component2",
        "()J",
        "component3",
        "()Ljava/lang/String;",
        "copy",
        "(Landroid/os/ParcelFileDescriptor;JLjava/lang/String;)Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Landroid/os/ParcelFileDescriptor;",
        "getPfd",
        "J",
        "getLength",
        "Ljava/lang/String;",
        "getFileName",
        "api_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fileName:Ljava/lang/String;

.field private final length:J

.field private final pfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo$Creator;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/data/InstallFileInfo$Creator;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/ParcelFileDescriptor;JLjava/lang/String;)V
    .locals 1

    const-string v0, "pfd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    iput-wide p2, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    iput-object p4, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/letswitch/service/api/data/InstallFileInfo;Landroid/os/ParcelFileDescriptor;JLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/letswitch/service/api/data/InstallFileInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->copy(Landroid/os/ParcelFileDescriptor;JLjava/lang/String;)Lcom/transsion/letswitch/service/api/data/InstallFileInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Landroid/os/ParcelFileDescriptor;JLjava/lang/String;)Lcom/transsion/letswitch/service/api/data/InstallFileInfo;
    .locals 0

    const-string p0, "pfd"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fileName"

    invoke-static {p4, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;-><init>(Landroid/os/ParcelFileDescriptor;JLjava/lang/String;)V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;

    iget-object v1, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p1, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    iget-wide v5, p1, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLength()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    return-wide v0
.end method

.method public final getPfd()Landroid/os/ParcelFileDescriptor;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    iget-wide v1, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstallFileInfo(pfd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", length="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", fileName="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->length:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
