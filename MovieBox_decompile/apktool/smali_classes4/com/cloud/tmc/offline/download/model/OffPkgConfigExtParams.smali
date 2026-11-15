.class public final Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \'2\u00020\u00012\u00020\u0002:\u0001\'B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B?\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000fJ\u0011\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0003J\u0011\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u0011\u0010\u001a\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007H\u00c6\u0003JP\u0010\u001b\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u00072\u0010\u0008\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u00072\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u0013\u0010\u001f\u001a\u00020\u000c2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u00d6\u0003J\t\u0010\"\u001a\u00020\u001eH\u00d6\u0001J\t\u0010#\u001a\u00020\u0008H\u00d6\u0001J\u0018\u0010$\u001a\u00020%2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u001eH\u0016R\u0019\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\t\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0011\u00a8\u0006("
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "Landroid/os/Parcelable;",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "authorizedMiniApp",
        "",
        "",
        "packageInclude",
        "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
        "verifyServerFile",
        "",
        "verifyServerFileMetadata",
        "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V",
        "getAuthorizedMiniApp",
        "()Ljava/util/List;",
        "getPackageInclude",
        "getVerifyServerFile",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getVerifyServerFileMetadata",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;",
        "describeContents",
        "",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "flags",
        "CREATOR",
        "com.cloud.tmc.offline_download"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;


# instance fields
.field private final authorizedMiniApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packageInclude:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;"
        }
    .end annotation
.end field

.field private final verifyServerFile:Ljava/lang/Boolean;

.field private final verifyServerFileMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->CREATOR:Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams$CREATOR;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/cloud/tmc/offline/download/model/PackageInclude;->CREATOR:Lcom/cloud/tmc/offline/download/model/PackageInclude$CREATOR;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 8
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    sget-object v3, Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;->CREATOR:Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata$CREATOR;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 10
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 5
    iput-object p4, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget-object p3, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-object p4, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->copy(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;)",
            "Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    .line 49
    .line 50
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    return v0
.end method

.method public final getAuthorizedMiniApp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPackageInclude()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/PackageInclude;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVerifyServerFile()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVerifyServerFileMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/tmc/offline/download/model/VerifyServerFileMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    :goto_3
    add-int/2addr v0, v1

    .line 50
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "OffPkgConfigExtParams(authorizedMiniApp="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", packageInclude="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", verifyServerFile="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", verifyServerFileMetadata="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const-string p2, "parcel"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->authorizedMiniApp:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->packageInclude:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFile:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/cloud/tmc/offline/download/model/OffPkgConfigExtParams;->verifyServerFileMetadata:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
