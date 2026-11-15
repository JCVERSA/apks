.class public final enum Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000e\u0008\u0080\u0081\u0002\u0018\u0000 \u00132\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0014B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0015\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;",
        "",
        "",
        "column",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "Landroid/database/Cursor;",
        "cursor",
        "getString",
        "(Landroid/database/Cursor;)Ljava/lang/String;",
        "",
        "getInt",
        "(Landroid/database/Cursor;)I",
        "",
        "getLong",
        "(Landroid/database/Cursor;)J",
        "Ljava/lang/String;",
        "getColumn",
        "()Ljava/lang/String;",
        "Companion",
        "a",
        "ID",
        "TASK_ID",
        "CURRENT",
        "OFFSET",
        "START",
        "END",
        "cloud-drive-transfer_release"
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
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

.field public static final enum CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

.field public static final Companion:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns$a;

.field public static final enum END:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

.field public static final enum ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

.field public static final enum OFFSET:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

.field public static final enum START:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

.field public static final enum TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;


# instance fields
.field private final column:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;
    .locals 6

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    sget-object v1, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    sget-object v2, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    sget-object v3, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->OFFSET:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    sget-object v4, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->START:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    sget-object v5, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->END:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    const/4 v1, 0x0

    const-string v2, "_id"

    const-string v3, "ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    const/4 v1, 0x1

    const-string v2, "task_id"

    const-string v3, "TASK_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->TASK_ID:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    const/4 v1, 0x2

    const-string v2, "current"

    const-string v3, "CURRENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->CURRENT:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    const/4 v1, 0x3

    const-string v2, "offset"

    const-string v3, "OFFSET"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->OFFSET:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    const/4 v1, 0x4

    const-string v2, "start"

    const-string v3, "START"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->START:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    const/4 v1, 0x5

    const-string v2, "end"

    const-string v3, "END"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->END:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-static {}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->$values()[Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->$VALUES:[Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->$ENTRIES:Ldb3;

    new-instance v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->Companion:Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->column:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Ldb3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldb3;"
        }
    .end annotation

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;
    .locals 1

    const-class v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    return-object p0
.end method

.method public static values()[Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;
    .locals 1

    sget-object v0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->$VALUES:[Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;

    return-object v0
.end method


# virtual methods
.method public final getColumn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/transfer/internal/impl/database/DownloadBlockColumns;->column:Ljava/lang/String;

    return-object p0
.end method

.method public final getInt(Landroid/database/Cursor;)I
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public final getLong(Landroid/database/Cursor;)J
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
