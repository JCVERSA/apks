.class public final Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;
.super Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;",
        "Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;",
        "mediaLibraryId",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getMediaLibraryId",
        "()Ljava/lang/String;",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mediaLibraryId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/dbdata/beans/onlinevideo/TypeBean;-><init>()V

    iput-object p1, p0, Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;->mediaLibraryId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMediaLibraryId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/data/MIMediaLibraryCollectCancelRequest;->mediaLibraryId:Ljava/lang/String;

    return-object p0
.end method
