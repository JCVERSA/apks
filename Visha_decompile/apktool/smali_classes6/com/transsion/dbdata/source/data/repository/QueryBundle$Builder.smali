.class public final Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/source/data/repository/QueryBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u000f\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006J\u001b\u0010\u0012\u001a\u00020\u00002\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010\u0017\u001a\u00020\u0018R\u0018\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;",
        "",
        "<init>",
        "()V",
        "projection",
        "",
        "",
        "[Ljava/lang/String;",
        "selection",
        "selectionArgs",
        "sortOrder",
        "limitedCount",
        "",
        "uri",
        "Landroid/net/Uri;",
        "setProjection",
        "([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;",
        "setSelection",
        "setSelectionArgs",
        "args",
        "setSortOrder",
        "setLimitedCount",
        "setUri",
        "build",
        "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "dbdata_release"
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
.field private limitedCount:I

.field private projection:[Ljava/lang/String;

.field private selection:Ljava/lang/String;

.field private selectionArgs:[Ljava/lang/String;

.field private sortOrder:Ljava/lang/String;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/transsion/dbdata/utils/SortUtil;->j(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->sortOrder:Ljava/lang/String;

    invoke-static {}, Loa1;->e()I

    move-result v0

    iput v0, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->limitedCount:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/transsion/dbdata/source/data/repository/QueryBundle;
    .locals 9

    new-instance v8, Lcom/transsion/dbdata/source/data/repository/QueryBundle;

    iget-object v1, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->projection:[Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->selection:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->selectionArgs:[Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->sortOrder:Ljava/lang/String;

    iget v5, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->limitedCount:I

    iget-object v6, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->uri:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method

.method public final setLimitedCount(I)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->limitedCount:I

    return-object p0
.end method

.method public final setProjection([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;
    .locals 1

    const-string v0, "projection"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->projection:[Ljava/lang/String;

    return-object p0
.end method

.method public final setSelection(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->selection:Ljava/lang/String;

    return-object p0
.end method

.method public final setSelectionArgs([Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->selectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public final setSortOrder(Ljava/lang/String;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->sortOrder:Ljava/lang/String;

    return-object p0
.end method

.method public final setUri(Landroid/net/Uri;)Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method
