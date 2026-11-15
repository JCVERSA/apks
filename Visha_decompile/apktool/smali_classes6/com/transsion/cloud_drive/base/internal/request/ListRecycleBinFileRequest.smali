.class public final Lcom/transsion/cloud_drive/base/internal/request/ListRecycleBinFileRequest;
.super Lcom/transsion/cloud_drive/base/internal/request/PageRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R,\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u000b\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/ListRecycleBinFileRequest;",
        "Lcom/transsion/cloud_drive/base/internal/request/PageRequest;",
        "()V",
        "fields",
        "",
        "",
        "getFields$annotations",
        "getFields",
        "()[Ljava/lang/String;",
        "setFields",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private fields:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;-><init>()V

    const-string v0, "url"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/internal/request/ListRecycleBinFileRequest;->fields:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic getFields$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "fields"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getFields()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/ListRecycleBinFileRequest;->fields:[Ljava/lang/String;

    return-object p0
.end method

.method public final setFields([Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/ListRecycleBinFileRequest;->fields:[Ljava/lang/String;

    return-void
.end method
