.class public final Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B[\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000b\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010*\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010+\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010/\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u00100\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003Jl\u00101\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u00102J\u0006\u00103\u001a\u00020\u0005J\u0013\u00104\u001a\u00020\'2\u0008\u00105\u001a\u0004\u0018\u000106H\u00d6\u0003J\t\u00107\u001a\u00020\u0005H\u00d6\u0001J\t\u00108\u001a\u00020\u0003H\u00d6\u0001J\u0016\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0017\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010\"\u0004\u0008\u0019\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0010\"\u0004\u0008\u001b\u0010\u0012R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0010\"\u0004\u0008\u001d\u0010\u0012R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010!R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0010\"\u0004\u0008%\u0010\u0012R\u0011\u0010&\u001a\u00020\'8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010(\u00a8\u0006>"
    }
    d2 = {
        "Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;",
        "Landroid/os/Parcelable;",
        "name",
        "",
        "tabId",
        "",
        "type",
        "url",
        "tabCode",
        "nameImage",
        "Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;",
        "selectNameImage",
        "displayType",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getTabId",
        "()Ljava/lang/Integer;",
        "setTabId",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getType",
        "setType",
        "getUrl",
        "setUrl",
        "getTabCode",
        "setTabCode",
        "getNameImage",
        "()Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;",
        "setNameImage",
        "(Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;)V",
        "getSelectNameImage",
        "setSelectNameImage",
        "getDisplayType",
        "setDisplayType",
        "isOpenLandPage",
        "",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "shortTvLib_release"
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
            "Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

.field private selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

.field private tabCode:Ljava/lang/String;

.field private tabId:Ljava/lang/Integer;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 4
    iput-object p3, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 8
    iput-object p7, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 9
    iput-object p8, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 10
    const-string v0, "SHORTTV"

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 11
    invoke-direct/range {v3 .. v11}, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p9

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v3, v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-object v4, v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 37
    .line 38
    if-eqz v6, :cond_4

    .line 39
    .line 40
    iget-object v6, v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object v6, p5

    .line 44
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 45
    .line 46
    if-eqz v7, :cond_5

    .line 47
    .line 48
    iget-object v7, v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object v7, p6

    .line 52
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 53
    .line 54
    if-eqz v8, :cond_6

    .line 55
    .line 56
    iget-object v8, v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_6
    move-object/from16 v8, p7

    .line 60
    .line 61
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 62
    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    iget-object v1, v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 66
    .line 67
    goto :goto_7

    .line 68
    :cond_7
    move-object/from16 v1, p8

    .line 69
    .line 70
    :goto_7
    move-object p1, v2

    .line 71
    move-object p2, v3

    .line 72
    move-object p3, v4

    .line 73
    move-object p4, v5

    .line 74
    move-object p5, v6

    .line 75
    move-object p6, v7

    .line 76
    move-object/from16 p7, v8

    .line 77
    .line 78
    move-object/from16 p8, v1

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p8}, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->copy(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;
    .locals 10

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    move-object v5, p4

    .line 4
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;

    .line 8
    .line 9
    move-object v1, v0

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move-object v4, p3

    .line 13
    move-object v6, p5

    .line 14
    move-object/from16 v7, p6

    .line 15
    .line 16
    move-object/from16 v8, p7

    .line 17
    .line 18
    move-object/from16 v9, p8

    .line 19
    .line 20
    invoke-direct/range {v1 .. v9}, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
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
    instance-of v1, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;

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
    check-cast p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    return v0
.end method

.method public final getDisplayType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNameImage()Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectNameImage()Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabId()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    add-int/2addr v0, v2

    .line 47
    mul-int/lit8 v0, v0, 0x1f

    .line 48
    .line 49
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v2, :cond_3

    .line 52
    .line 53
    move v2, v1

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    :goto_3
    add-int/2addr v0, v2

    .line 60
    mul-int/lit8 v0, v0, 0x1f

    .line 61
    .line 62
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 63
    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    move v2, v1

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    :goto_4
    add-int/2addr v0, v2

    .line 73
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    .line 75
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 76
    .line 77
    if-nez v2, :cond_5

    .line 78
    .line 79
    move v2, v1

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    invoke-virtual {v2}, Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    :goto_5
    add-int/2addr v0, v2

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    .line 87
    .line 88
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 89
    .line 90
    if-nez v2, :cond_6

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_6
    add-int/2addr v0, v1

    .line 98
    return v0
.end method

.method public final isOpenLandPage()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final setDisplayType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setNameImage(Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 2
    .line 3
    return-void
.end method

.method public final setSelectNameImage(Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 2
    .line 3
    return-void
.end method

.method public final setTabCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTabId(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v8, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v9, "ShortTvHomeTabItem(name="

    .line 23
    .line 24
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", tabId="

    .line 31
    .line 32
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", type="

    .line 39
    .line 40
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", url="

    .line 47
    .line 48
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", tabCode="

    .line 55
    .line 56
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", nameImage="

    .line 63
    .line 64
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", selectNameImage="

    .line 71
    .line 72
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", displayType="

    .line 79
    .line 80
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ")"

    .line 87
    .line 88
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabId:Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->type:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->url:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->tabCode:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->nameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    .line 59
    .line 60
    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->selectNameImage:Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;

    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/transsion/shorttv/_channel/model/ShortTvNameImage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    .line 73
    .line 74
    :goto_2
    iget-object p2, p0, Lcom/transsion/shorttv/_channel/model/ShortTvHomeTabItem;->displayType:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
