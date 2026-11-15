.class public final Lcom/transsion/transfer/wifi/permission/PermissionsBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/wifi/permission/PermissionsBean$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0019\u0008\u0087\u0008\u0018\u0000 <2\u00020\u0001:\u0001=BK\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u0019J\u0010\u0010\u001b\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u0019J\u0010\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0019JZ\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\u0019J\u0010\u0010\"\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0015J\u001a\u0010&\u001a\u00020%2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u00d6\u0003\u00a2\u0006\u0004\u0008&\u0010\'R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010(\u001a\u0004\u0008)\u0010\u0015\"\u0004\u0008*\u0010+R\"\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010(\u001a\u0004\u0008,\u0010\u0015\"\u0004\u0008-\u0010+R$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010.\u001a\u0004\u0008/\u0010\u0019\"\u0004\u00080\u00101R$\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010.\u001a\u0004\u00082\u0010\u0019\"\u0004\u00083\u00101R\"\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u00104\u001a\u0004\u00085\u0010\u001c\"\u0004\u00086\u00107R\"\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010.\u001a\u0004\u00088\u0010\u0019\"\u0004\u00089\u00101R\"\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010.\u001a\u0004\u0008:\u0010\u0019\"\u0004\u0008;\u00101\u00a8\u0006>"
    }
    d2 = {
        "Lcom/transsion/transfer/wifi/permission/PermissionsBean;",
        "Landroid/os/Parcelable;",
        "",
        "itemType",
        "icon",
        "",
        "title",
        "content",
        "Lcom/transsion/transfer/wifi/bean/PermissionState;",
        "state",
        "permission",
        "btnName",
        "<init>",
        "(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/os/Parcel;",
        "dest",
        "flags",
        "",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "component2",
        "component3",
        "()Ljava/lang/String;",
        "component4",
        "component5",
        "()Lcom/transsion/transfer/wifi/bean/PermissionState;",
        "component6",
        "component7",
        "copy",
        "(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getItemType",
        "setItemType",
        "(I)V",
        "getIcon",
        "setIcon",
        "Ljava/lang/String;",
        "getTitle",
        "setTitle",
        "(Ljava/lang/String;)V",
        "getContent",
        "setContent",
        "Lcom/transsion/transfer/wifi/bean/PermissionState;",
        "getState",
        "setState",
        "(Lcom/transsion/transfer/wifi/bean/PermissionState;)V",
        "getPermission",
        "setPermission",
        "getBtnName",
        "setBtnName",
        "Companion",
        "a",
        "Transfer_psRelease"
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
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/transfer/wifi/permission/PermissionsBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/transsion/transfer/wifi/permission/PermissionsBean$a;

.field public static final ITEM_TYPE_PERMISSION:I


# instance fields
.field private btnName:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private icon:I

.field private itemType:I

.field private permission:Ljava/lang/String;

.field private state:Lcom/transsion/transfer/wifi/bean/PermissionState;

.field private title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/transfer/wifi/permission/PermissionsBean$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/transfer/wifi/permission/PermissionsBean$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->Companion:Lcom/transsion/transfer/wifi/permission/PermissionsBean$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/transfer/wifi/permission/PermissionsBean$b;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/transfer/wifi/permission/PermissionsBean$b;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permission"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "btnName"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 3
    iput p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 4
    iput-object p3, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 7
    iput-object p6, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, p3

    :goto_2
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_3

    move-object v6, v1

    goto :goto_3

    :cond_3
    move-object v6, p4

    :goto_3
    move-object v2, p0

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 9
    invoke-direct/range {v2 .. v9}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/transfer/wifi/permission/PermissionsBean;IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 12
    .line 13
    :cond_1
    move p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-object p4, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 26
    .line 27
    :cond_3
    move-object v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-object p5, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget-object p6, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 40
    .line 41
    :cond_5
    move-object v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget-object p7, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 47
    .line 48
    :cond_6
    move-object v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move p3, p1

    .line 51
    move p4, p9

    .line 52
    move-object p5, v0

    .line 53
    move-object p6, v1

    .line 54
    move-object p7, v2

    .line 55
    move-object p8, v3

    .line 56
    move-object p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->copy(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/transsion/transfer/wifi/bean/PermissionState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/wifi/permission/PermissionsBean;
    .locals 9

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    move-object v6, p5

    .line 4
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "permission"

    .line 8
    .line 9
    move-object v7, p6

    .line 10
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "btnName"

    .line 14
    .line 15
    move-object/from16 v8, p7

    .line 16
    .line 17
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    .line 21
    .line 22
    move-object v1, v0

    .line 23
    move v2, p1

    .line 24
    move v3, p2

    .line 25
    move-object v4, p3

    .line 26
    move-object v5, p4

    .line 27
    invoke-direct/range {v1 .. v8}, Lcom/transsion/transfer/wifi/permission/PermissionsBean;-><init>(IILjava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/wifi/bean/PermissionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public final describeContents()I
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
    instance-of v1, p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

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
    check-cast p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 21
    .line 22
    iget v3, p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v3, p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 50
    .line 51
    iget-object v3, p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 52
    .line 53
    if-eq v1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v3, p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 68
    .line 69
    iget-object p1, p1, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    return v0
.end method

.method public final getBtnName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 2
    .line 3
    return v0
.end method

.method public final getItemType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPermission()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState()Lcom/transsion/transfer/wifi/bean/PermissionState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    :goto_0
    add-int/2addr v0, v1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 23
    .line 24
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_1
    add-int/2addr v0, v2

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public final setBtnName(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 2
    .line 3
    return-void
.end method

.method public final setItemType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPermission(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setState(Lcom/transsion/transfer/wifi/bean/PermissionState;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 7
    .line 8
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget v0, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 2
    .line 3
    iget v1, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "PermissionsBean(itemType="

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", icon="

    .line 29
    .line 30
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", title="

    .line 37
    .line 38
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", content="

    .line 45
    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", state="

    .line 53
    .line 54
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", permission="

    .line 61
    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", btnName="

    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->itemType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->icon:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->title:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->content:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->state:Lcom/transsion/transfer/wifi/bean/PermissionState;

    .line 27
    .line 28
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->permission:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/transsion/transfer/wifi/permission/PermissionsBean;->btnName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
