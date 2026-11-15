.class public final enum Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u000c\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bj\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;",
        "",
        "permission",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "NOTIFICATION",
        "NEARBY",
        "BLUETOOTH",
        "LOCATION",
        "getPermission",
        "()Ljava/lang/String;",
        "getResult",
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


# static fields
.field private static final synthetic $ENTRIES:Ldb3;

.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

.field public static final enum BLUETOOTH:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

.field public static final enum LOCATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

.field public static final enum NEARBY:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

.field public static final enum NOTIFICATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;


# instance fields
.field private final permission:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;
    .locals 4

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->NOTIFICATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    sget-object v1, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->NEARBY:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    sget-object v2, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->BLUETOOTH:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    sget-object v3, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->LOCATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    const/4 v1, 0x0

    const-string v2, "notification"

    const-string v3, "NOTIFICATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->NOTIFICATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    new-instance v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    const/4 v1, 0x1

    const-string v2, "nearby"

    const-string v3, "NEARBY"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->NEARBY:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    new-instance v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    const/4 v1, 0x2

    const-string v2, "bluetooth"

    const-string v3, "BLUETOOTH"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->BLUETOOTH:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    new-instance v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    const/4 v1, 0x3

    const-string v2, "location"

    const-string v3, "LOCATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->LOCATION:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-static {}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->$values()[Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->$VALUES:[Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Ldb3;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->$ENTRIES:Ldb3;

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

    iput-object p3, p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->permission:Ljava/lang/String;

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

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->$ENTRIES:Ldb3;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->$VALUES:[Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;

    return-object v0
.end method


# virtual methods
.method public final getPermission()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public final getResult()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo$PermissionType;->permission:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :sswitch_1
    const-string v1, "location"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->h(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0

    :sswitch_2
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->j(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0

    :sswitch_3
    const-string v1, "nearby"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt p0, v1, :cond_3

    sget-object p0, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->a:Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/transsion/dbdata/markpoint/MarkFileTransferInfo;->i(Landroid/content/Context;)Z

    move-result v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    const-string p0, "1"

    goto :goto_1

    :cond_4
    const-string p0, "0"

    :goto_1
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3e8dd581 -> :sswitch_3
        0x237a88eb -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x755ac2ae -> :sswitch_0
    .end sparse-switch
.end method
