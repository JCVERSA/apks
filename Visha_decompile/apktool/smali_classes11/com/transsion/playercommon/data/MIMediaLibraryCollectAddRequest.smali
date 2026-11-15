.class public final Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;",
        "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;",
        "mediaLibraryId",
        "",
        "virtualPersonName",
        "virtualPersonPhoto",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getMediaLibraryId",
        "()Ljava/lang/String;",
        "getVirtualPersonName",
        "getVirtualPersonPhoto",
        "playercommon_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mediaLibraryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediaLibraryId"
    .end annotation
.end field

.field private final virtualPersonName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "virtualPersonName"
    .end annotation
.end field

.field private final virtualPersonPhoto:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "virtualPersonPhoto"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mediaLibraryId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPersonName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "virtualPersonPhoto"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;->mediaLibraryId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;->virtualPersonName:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;->virtualPersonPhoto:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method

.method public final getVirtualPersonName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;->virtualPersonName:Ljava/lang/String;

    return-object p0
.end method

.method public final getVirtualPersonPhoto()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/MIMediaLibraryCollectAddRequest;->virtualPersonPhoto:Ljava/lang/String;

    return-object p0
.end method
