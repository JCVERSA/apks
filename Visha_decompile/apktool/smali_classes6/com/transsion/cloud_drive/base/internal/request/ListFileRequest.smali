.class public final Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;
.super Lcom/transsion/cloud_drive/base/internal/request/PageRequest;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u000e\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR,\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u0010\u0013\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\nR\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\n\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;",
        "Lcom/transsion/cloud_drive/base/internal/request/PageRequest;",
        "parentId",
        "",
        "orderBy",
        "orderDirection",
        "category",
        "type",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getCategory",
        "()Ljava/lang/String;",
        "fields",
        "",
        "getFields$annotations",
        "()V",
        "getFields",
        "()[Ljava/lang/String;",
        "setFields",
        "([Ljava/lang/String;)V",
        "[Ljava/lang/String;",
        "getOrderBy",
        "getOrderDirection",
        "getParentId",
        "getType",
        "setType",
        "(Ljava/lang/String;)V",
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
.field private final category:Ljava/lang/String;

.field private fields:[Ljava/lang/String;

.field private final orderBy:Ljava/lang/String;

.field private final orderDirection:Ljava/lang/String;

.field private final parentId:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "parent_file_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "order_by"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "order_direction"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "category"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "type"
        .end annotation
    .end param

    const-string v0, "parentId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderBy"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "orderDirection"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/transsion/cloud_drive/base/internal/request/PageRequest;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->parentId:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->orderBy:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->orderDirection:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->category:Ljava/lang/String;

    .line 11
    iput-object p5, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->type:Ljava/lang/String;

    .line 12
    const-string p1, "id_path"

    .line 13
    const-string p2, "name_path"

    const-string p3, "url"

    filled-new-array {p3, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->fields:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 2
    const-string p1, "root"

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 3
    const-string p2, "name"

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 4
    const-string p3, "DESC"

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    .line 5
    const-string p3, ""

    if-eqz p2, :cond_3

    move-object v1, p3

    goto :goto_0

    :cond_3
    move-object v1, p4

    :goto_0
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    move-object v2, p3

    goto :goto_1

    :cond_4
    move-object v2, p5

    :goto_1
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-direct/range {p2 .. p7}, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
.method public final getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getFields()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->fields:[Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderBy()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->orderBy:Ljava/lang/String;

    return-object p0
.end method

.method public final getOrderDirection()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->orderDirection:Ljava/lang/String;

    return-object p0
.end method

.method public final getParentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->parentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final setFields([Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->fields:[Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/ListFileRequest;->type:Ljava/lang/String;

    return-void
.end method
