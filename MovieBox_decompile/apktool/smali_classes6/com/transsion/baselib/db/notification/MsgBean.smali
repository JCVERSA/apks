.class public final Lcom/transsion/baselib/db/notification/MsgBean;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008Y\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00bb\u0001\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\t\u0010W\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010X\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010Z\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010[\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010]\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010^\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010_\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010`\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010/J\t\u0010a\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010b\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003\u00a2\u0006\u0002\u0010/J\t\u0010c\u001a\u00020\u0012H\u00c6\u0003J\t\u0010d\u001a\u00020\u0012H\u00c6\u0003J\t\u0010e\u001a\u00020\u0012H\u00c6\u0003J\t\u0010f\u001a\u00020\u0003H\u00c6\u0003J\u00c2\u0001\u0010g\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010hJ\u0006\u0010i\u001a\u00020\u0003J\u0013\u0010j\u001a\u00020\u00122\u0008\u0010k\u001a\u0004\u0018\u00010lH\u00d6\u0003J\t\u0010m\u001a\u00020\u0003H\u00d6\u0001J\t\u0010n\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001d\"\u0004\u0008!\u0010\u001fR \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR \u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u001d\"\u0004\u0008%\u0010\u001fR \u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001d\"\u0004\u0008\'\u0010\u001fR \u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001d\"\u0004\u0008)\u0010\u001fR \u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001d\"\u0004\u0008+\u0010\u001fR \u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001d\"\u0004\u0008-\u0010\u001fR\"\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00102\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\u001e\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010\u0019\"\u0004\u00084\u0010\u001bR\"\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00102\u001a\u0004\u00085\u0010/\"\u0004\u00086\u00101R\u001e\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u001e\u0010\u0013\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u00108\"\u0004\u0008<\u0010:R\u001e\u0010\u0014\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u00108\"\u0004\u0008>\u0010:R\u001e\u0010\u0015\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u0019\"\u0004\u0008@\u0010\u001bR$\u0010A\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008B\u0010C\u001a\u0004\u0008A\u00108\"\u0004\u0008D\u0010:R$\u0010E\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008F\u0010C\u001a\u0004\u0008G\u0010\u0019\"\u0004\u0008H\u0010\u001bR$\u0010I\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008J\u0010C\u001a\u0004\u0008K\u0010\u0019\"\u0004\u0008L\u0010\u001bR$\u0010M\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008N\u0010C\u001a\u0004\u0008O\u0010\u0019\"\u0004\u0008P\u0010\u001bR$\u0010Q\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008R\u0010C\u001a\u0004\u0008Q\u00108\"\u0004\u0008S\u0010:R$\u0010T\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008U\u0010C\u001a\u0004\u0008T\u00108\"\u0004\u0008V\u0010:\u00a8\u0006t"
    }
    d2 = {
        "Lcom/transsion/baselib/db/notification/MsgBean;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "deeplink",
        "",
        "desc",
        "imageList",
        "messageId",
        "source",
        "style",
        "title",
        "type",
        "receiveTime",
        "",
        "msgStatus",
        "showTime",
        "forceShow",
        "",
        "hasScreenOn",
        "builtIn",
        "permanentMsgStatus",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)V",
        "getId",
        "()I",
        "setId",
        "(I)V",
        "getDeeplink",
        "()Ljava/lang/String;",
        "setDeeplink",
        "(Ljava/lang/String;)V",
        "getDesc",
        "setDesc",
        "getImageList",
        "setImageList",
        "getMessageId",
        "setMessageId",
        "getSource",
        "setSource",
        "getStyle",
        "setStyle",
        "getTitle",
        "setTitle",
        "getType",
        "setType",
        "getReceiveTime",
        "()Ljava/lang/Long;",
        "setReceiveTime",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getMsgStatus",
        "setMsgStatus",
        "getShowTime",
        "setShowTime",
        "getForceShow",
        "()Z",
        "setForceShow",
        "(Z)V",
        "getHasScreenOn",
        "setHasScreenOn",
        "getBuiltIn",
        "setBuiltIn",
        "getPermanentMsgStatus",
        "setPermanentMsgStatus",
        "isPermanent",
        "isPermanent$annotations",
        "()V",
        "setPermanent",
        "triggerSource",
        "getTriggerSource$annotations",
        "getTriggerSource",
        "setTriggerSource",
        "permanentMsgPosition",
        "getPermanentMsgPosition$annotations",
        "getPermanentMsgPosition",
        "setPermanentMsgPosition",
        "permanentMsgSize",
        "getPermanentMsgSize$annotations",
        "getPermanentMsgSize",
        "setPermanentMsgSize",
        "isRefresh",
        "isRefresh$annotations",
        "setRefresh",
        "isFloat",
        "isFloat$annotations",
        "setFloat",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)Lcom/transsion/baselib/db/notification/MsgBean;",
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
        "BaseLib_psRelease"
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
            "Lcom/transsion/baselib/db/notification/MsgBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private builtIn:Z

.field private deeplink:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private forceShow:Z

.field private hasScreenOn:Z

.field private id:I

.field private imageList:Ljava/lang/String;

.field private isFloat:Z

.field private isPermanent:Z

.field private isRefresh:Z

.field private messageId:Ljava/lang/String;

.field private msgStatus:I

.field private permanentMsgPosition:I

.field private permanentMsgSize:I

.field private permanentMsgStatus:I

.field private receiveTime:Ljava/lang/Long;

.field private showTime:Ljava/lang/Long;

.field private source:Ljava/lang/String;

.field private style:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private triggerSource:I

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/baselib/db/notification/MsgBean$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/baselib/db/notification/MsgBean$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/baselib/db/notification/MsgBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    const v17, 0xffff

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v18}, Lcom/transsion/baselib/db/notification/MsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)V
    .locals 2

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 3
    iput v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    move-object v1, p2

    .line 4
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    move-object v1, p4

    .line 6
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    move-object v1, p5

    .line 7
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    move v1, p11

    .line 13
    iput v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    move-object v1, p12

    .line 14
    iput-object v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    move v1, p13

    .line 15
    iput-boolean v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    move/from16 v1, p14

    .line 16
    iput-boolean v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    move/from16 v1, p15

    .line 17
    iput-boolean v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    move/from16 v1, p16

    .line 18
    iput v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    const/4 v1, 0x1

    .line 19
    iput v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgPosition:I

    .line 20
    iput v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgSize:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_2

    :cond_2
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    move-object v6, v4

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v4

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v4

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v4

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v4

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    move-object/from16 v4, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_9

    .line 21
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move/from16 v14, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    .line 22
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    goto :goto_c

    :cond_c
    move/from16 v13, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    :cond_f
    move/from16 v0, p16

    :goto_f
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v4

    move-object/from16 p11, v11

    move/from16 p12, v14

    move-object/from16 p13, v12

    move/from16 p14, v13

    move/from16 p15, v15

    move/from16 p16, v2

    move/from16 p17, v0

    .line 23
    invoke-direct/range {p1 .. p17}, Lcom/transsion/baselib/db/notification/MsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/notification/MsgBean;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZIILjava/lang/Object;)Lcom/transsion/baselib/db/notification/MsgBean;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-boolean v15, v0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-boolean v15, v0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move/from16 p13, v14

    move/from16 p15, v15

    move/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/transsion/baselib/db/notification/MsgBean;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)Lcom/transsion/baselib/db/notification/MsgBean;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPermanentMsgPosition$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getPermanentMsgSize$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getTriggerSource$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic isFloat$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic isPermanent$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic isRefresh$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component12()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component14()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component15()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component16()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)Lcom/transsion/baselib/db/notification/MsgBean;
    .locals 18

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move/from16 v13, p13

    .line 26
    .line 27
    move/from16 v14, p14

    .line 28
    .line 29
    move/from16 v15, p15

    .line 30
    .line 31
    move/from16 v16, p16

    .line 32
    .line 33
    new-instance v17, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 34
    .line 35
    move-object/from16 v0, v17

    .line 36
    .line 37
    invoke-direct/range {v0 .. v16}, Lcom/transsion/baselib/db/notification/MsgBean;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Long;ZZZI)V

    .line 38
    .line 39
    .line 40
    return-object v17
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
    instance-of v1, p1, Lcom/transsion/baselib/db/notification/MsgBean;

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
    check-cast p1, Lcom/transsion/baselib/db/notification/MsgBean;

    .line 12
    .line 13
    iget v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    .line 14
    .line 15
    iget v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    .line 109
    .line 110
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    .line 120
    .line 121
    iget v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    .line 122
    .line 123
    if-eq v1, v3, :cond_c

    .line 124
    .line 125
    return v2

    .line 126
    :cond_c
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    .line 127
    .line 128
    iget-object v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    .line 129
    .line 130
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_d

    .line 135
    .line 136
    return v2

    .line 137
    :cond_d
    iget-boolean v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    .line 138
    .line 139
    iget-boolean v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    .line 140
    .line 141
    if-eq v1, v3, :cond_e

    .line 142
    .line 143
    return v2

    .line 144
    :cond_e
    iget-boolean v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    .line 145
    .line 146
    iget-boolean v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    .line 147
    .line 148
    if-eq v1, v3, :cond_f

    .line 149
    .line 150
    return v2

    .line 151
    :cond_f
    iget-boolean v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    .line 152
    .line 153
    iget-boolean v3, p1, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    .line 154
    .line 155
    if-eq v1, v3, :cond_10

    .line 156
    .line 157
    return v2

    .line 158
    :cond_10
    iget v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    .line 159
    .line 160
    iget p1, p1, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    .line 161
    .line 162
    if-eq v1, p1, :cond_11

    .line 163
    .line 164
    return v2

    .line 165
    :cond_11
    return v0
.end method

.method public final getBuiltIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getDeeplink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getForceShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getHasScreenOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getImageList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMsgStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPermanentMsgPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPermanentMsgSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPermanentMsgStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReceiveTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTriggerSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->triggerSource:I

    .line 2
    .line 3
    return v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    add-int/2addr v0, v1

    .line 17
    mul-int/lit8 v0, v0, 0x1f

    .line 18
    .line 19
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_1
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    .line 33
    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    move v1, v2

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_2
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    .line 46
    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    move v1, v2

    .line 50
    goto :goto_3

    .line 51
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    :goto_3
    add-int/2addr v0, v1

    .line 56
    mul-int/lit8 v0, v0, 0x1f

    .line 57
    .line 58
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    .line 59
    .line 60
    if-nez v1, :cond_4

    .line 61
    .line 62
    move v1, v2

    .line 63
    goto :goto_4

    .line 64
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    :goto_4
    add-int/2addr v0, v1

    .line 69
    mul-int/lit8 v0, v0, 0x1f

    .line 70
    .line 71
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    .line 72
    .line 73
    if-nez v1, :cond_5

    .line 74
    .line 75
    move v1, v2

    .line 76
    goto :goto_5

    .line 77
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    :goto_5
    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    .line 83
    .line 84
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v1, :cond_6

    .line 87
    .line 88
    move v1, v2

    .line 89
    goto :goto_6

    .line 90
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    :goto_6
    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    .line 96
    .line 97
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    .line 98
    .line 99
    if-nez v1, :cond_7

    .line 100
    .line 101
    move v1, v2

    .line 102
    goto :goto_7

    .line 103
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    :goto_7
    add-int/2addr v0, v1

    .line 108
    mul-int/lit8 v0, v0, 0x1f

    .line 109
    .line 110
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    .line 111
    .line 112
    if-nez v1, :cond_8

    .line 113
    .line 114
    move v1, v2

    .line 115
    goto :goto_8

    .line 116
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    :goto_8
    add-int/2addr v0, v1

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    .line 122
    .line 123
    iget v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    .line 124
    .line 125
    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    .line 127
    .line 128
    iget-object v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    .line 129
    .line 130
    if-nez v1, :cond_9

    .line 131
    .line 132
    goto :goto_9

    .line 133
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    :goto_9
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    .line 139
    .line 140
    iget-boolean v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    .line 141
    .line 142
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/2addr v0, v1

    .line 147
    mul-int/lit8 v0, v0, 0x1f

    .line 148
    .line 149
    iget-boolean v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    .line 150
    .line 151
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    add-int/2addr v0, v1

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    .line 157
    .line 158
    iget-boolean v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    .line 159
    .line 160
    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    add-int/2addr v0, v1

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    .line 166
    .line 167
    iget v1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    .line 168
    .line 169
    add-int/2addr v0, v1

    .line 170
    return v0
.end method

.method public final isFloat()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->isFloat:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isPermanent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->isPermanent:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isRefresh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/baselib/db/notification/MsgBean;->isRefresh:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setBuiltIn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDeeplink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setFloat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->isFloat:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setForceShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setHasScreenOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setImageList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMessageId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setMsgStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPermanent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->isPermanent:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPermanentMsgPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPermanentMsgSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgSize:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPermanentMsgStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public final setReceiveTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setRefresh(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->isRefresh:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShowTime(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setTriggerSource(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->triggerSource:I

    .line 2
    .line 3
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, v0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, v0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    .line 22
    .line 23
    iget v11, v0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    .line 24
    .line 25
    iget-object v12, v0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    .line 26
    .line 27
    iget-boolean v13, v0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    .line 28
    .line 29
    iget-boolean v14, v0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    .line 30
    .line 31
    iget-boolean v15, v0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    .line 32
    .line 33
    move/from16 v16, v15

    .line 34
    .line 35
    iget v15, v0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    move/from16 v17, v15

    .line 43
    .line 44
    const-string v15, "MsgBean(id="

    .line 45
    .line 46
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", deeplink="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", desc="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", imageList="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", messageId="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", source="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", style="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", title="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", type="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", receiveTime="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", msgStatus="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", showTime="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", forceShow="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", hasScreenOn="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", builtIn="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    move/from16 v1, v16

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", permanentMsgStatus="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move/from16 v1, v17

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ")"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    const-string p2, "dest"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->id:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->deeplink:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->desc:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->imageList:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->messageId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->source:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->style:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->title:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->type:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->receiveTime:Ljava/lang/Long;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    const/4 v1, 0x0

    .line 55
    if-nez p2, :cond_0

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 65
    .line 66
    .line 67
    move-result-wide v2

    .line 68
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    .line 70
    .line 71
    :goto_0
    iget p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->msgStatus:I

    .line 72
    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->showTime:Ljava/lang/Long;

    .line 77
    .line 78
    if-nez p2, :cond_1

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v0

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 92
    .line 93
    .line 94
    :goto_1
    iget-boolean p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->forceShow:Z

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget-boolean p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->hasScreenOn:Z

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget-boolean p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->builtIn:Z

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    iget p2, p0, Lcom/transsion/baselib/db/notification/MsgBean;->permanentMsgStatus:I

    .line 110
    .line 111
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    return-void
.end method
