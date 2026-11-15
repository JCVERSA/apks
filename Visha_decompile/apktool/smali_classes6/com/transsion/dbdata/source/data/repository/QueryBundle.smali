.class public final Lcom/transsion/dbdata/source/data/repository/QueryBundle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/source/data/repository/QueryBundle$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0019BY\u0008\u0002\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u000fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/dbdata/source/data/repository/QueryBundle;",
        "",
        "projection",
        "",
        "",
        "selection",
        "selectionArgs",
        "sortOrder",
        "limitedCount",
        "",
        "uri",
        "Landroid/net/Uri;",
        "<init>",
        "([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V",
        "getProjection",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getSelection",
        "()Ljava/lang/String;",
        "getSelectionArgs",
        "getSortOrder",
        "getLimitedCount",
        "()I",
        "getUri",
        "()Landroid/net/Uri;",
        "Builder",
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
.field private final limitedCount:I

.field private final projection:[Ljava/lang/String;

.field private final selection:Ljava/lang/String;

.field private final selectionArgs:[Ljava/lang/String;

.field private final sortOrder:Ljava/lang/String;

.field private final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->projection:[Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->selection:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->selectionArgs:[Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->sortOrder:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->limitedCount:I

    .line 8
    iput-object p6, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->uri:Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object v4, p2

    :goto_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, p3

    :goto_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_4

    move-object v8, v1

    goto :goto_4

    :cond_4
    move-object v8, p6

    :goto_4
    move-object v2, p0

    move v7, p5

    .line 9
    invoke-direct/range {v2 .. v8}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/transsion/dbdata/source/data/repository/QueryBundle;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final getLimitedCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->limitedCount:I

    return p0
.end method

.method public final getProjection()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->projection:[Ljava/lang/String;

    return-object p0
.end method

.method public final getSelection()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->selection:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectionArgs()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->selectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public final getSortOrder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->sortOrder:Ljava/lang/String;

    return-object p0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/source/data/repository/QueryBundle;->uri:Landroid/net/Uri;

    return-object p0
.end method
