.class public Lcom/transsion/cloud_drive/base/internal/request/PageRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/base/internal/request/PageRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/PageRequest;",
        "",
        "()V",
        "limit",
        "",
        "getLimit$annotations",
        "getLimit",
        "()I",
        "setLimit",
        "(I)V",
        "marker",
        "",
        "getMarker$annotations",
        "getMarker",
        "()Ljava/lang/String;",
        "setMarker",
        "(Ljava/lang/String;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/transsion/cloud_drive/base/internal/request/PageRequest$Companion;

.field public static final DEFAULT_LIMIT:I = 0xc8

.field public static final SEARCH_LIMIT:I = 0x64


# instance fields
.field private limit:I

.field private marker:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/cloud_drive/base/internal/request/PageRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud_drive/base/internal/request/PageRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;->Companion:Lcom/transsion/cloud_drive/base/internal/request/PageRequest$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;->limit:I

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getLimit$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "limit"
    .end annotation

    return-void
.end method

.method public static synthetic getMarker$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "marker"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getLimit()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;->limit:I

    return p0
.end method

.method public final getMarker()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;->marker:Ljava/lang/String;

    return-object p0
.end method

.method public final setLimit(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;->limit:I

    return-void
.end method

.method public final setMarker(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;->marker:Ljava/lang/String;

    return-void
.end method
