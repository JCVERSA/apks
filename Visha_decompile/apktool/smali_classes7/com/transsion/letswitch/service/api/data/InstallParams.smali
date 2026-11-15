.class public final Lcom/transsion/letswitch/service/api/data/InstallParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\r\u0010\u0012\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0016\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J4\u0010\u001a\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001d\u001a\u00020\u001cH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u0013J\u001a\u0010#\u001a\u00020\"2\u0008\u0010!\u001a\u0004\u0018\u00010 H\u00d6\u0003\u00a2\u0006\u0004\u0008#\u0010$R\u001d\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010%\u001a\u0004\u0008&\u0010\u0015R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\'\u001a\u0004\u0008(\u0010\u0017R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010)\u001a\u0004\u0008*\u0010\u0019\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/data/InstallParams;",
        "Landroid/os/Parcelable;",
        "",
        "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
        "fileInfos",
        "Landroid/content/pm/PackageInfo;",
        "packageInfo",
        "Landroid/content/IntentSender;",
        "intentSender",
        "<init>",
        "(Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;)V",
        "Landroid/os/Parcel;",
        "dest",
        "",
        "flags",
        "Lzfb;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()Ljava/util/List;",
        "component2",
        "()Landroid/content/pm/PackageInfo;",
        "component3",
        "()Landroid/content/IntentSender;",
        "copy",
        "(Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;)Lcom/transsion/letswitch/service/api/data/InstallParams;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/util/List;",
        "getFileInfos",
        "Landroid/content/pm/PackageInfo;",
        "getPackageInfo",
        "Landroid/content/IntentSender;",
        "getIntentSender",
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
            "Lcom/transsion/letswitch/service/api/data/InstallParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fileInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final intentSender:Landroid/content/IntentSender;

.field private final packageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/service/api/data/InstallParams$Creator;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/data/InstallParams$Creator;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/data/InstallParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    const-string v0, "fileInfos"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageInfo"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentSender"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/letswitch/service/api/data/InstallParams;Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;ILjava/lang/Object;)Lcom/transsion/letswitch/service/api/data/InstallParams;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/data/InstallParams;->copy(Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;)Lcom/transsion/letswitch/service/api/data/InstallParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Landroid/content/pm/PackageInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public final component3()Landroid/content/IntentSender;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;)Lcom/transsion/letswitch/service/api/data/InstallParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Landroid/content/IntentSender;",
            ")",
            "Lcom/transsion/letswitch/service/api/data/InstallParams;"
        }
    .end annotation

    const-string p0, "fileInfos"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "packageInfo"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "intentSender"

    invoke-static {p3, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/letswitch/service/api/data/InstallParams;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/letswitch/service/api/data/InstallParams;-><init>(Ljava/util/List;Landroid/content/pm/PackageInfo;Landroid/content/IntentSender;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/letswitch/service/api/data/InstallParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/letswitch/service/api/data/InstallParams;

    iget-object v1, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, p1, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    iget-object p1, p1, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFileInfos()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/letswitch/service/api/data/InstallFileInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    return-object p0
.end method

.method public final getIntentSender()Landroid/content/IntentSender;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    return-object p0
.end method

.method public final getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    invoke-virtual {p0}, Landroid/content/IntentSender;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InstallParams(fileInfos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packageInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", intentSender="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->fileInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/letswitch/service/api/data/InstallFileInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Lcom/transsion/letswitch/service/api/data/InstallParams;->intentSender:Landroid/content/IntentSender;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
