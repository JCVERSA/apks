.class public final Lcom/transsion/shorttv_pugc/bean/BannerData;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010I\u001a\u00020\u0008H\u00c6\u0003J\t\u0010J\u001a\u00020\nH\u00c6\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0008H\u00c6\u0003J\u0010\u0010M\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010-J\u0010\u0010N\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u00102J\u000b\u0010O\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010P\u001a\u0004\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u0098\u0001\u0010R\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00c6\u0001\u00a2\u0006\u0002\u0010SJ\u0006\u0010T\u001a\u00020\u0008J\u0013\u0010U\u001a\u00020\n2\u0008\u0010V\u001a\u0004\u0018\u00010WH\u00d6\u0003J\t\u0010X\u001a\u00020\u0008H\u00d6\u0001J\t\u0010Y\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010Z\u001a\u00020[2\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020\u0008R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017\"\u0004\u0008\u001b\u0010\u0019R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u0017\"\u0004\u0008)\u0010\u0019R\u001a\u0010\u000c\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010!\"\u0004\u0008+\u0010#R\u001e\u0010\r\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00100\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00105\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u0010\u0017\"\u0004\u00087\u0010\u0019R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008<\u0010=\"\u0004\u0008>\u0010?R\u001c\u0010@\u001a\u0004\u0018\u00010AX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008B\u0010C\"\u0004\u0008D\u0010E\u00a8\u0006_"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/bean/BannerData;",
        "Landroid/os/Parcelable;",
        "content",
        "",
        "deepLink",
        "image",
        "Lcom/transsion/shorttv_pugc/bean/Image;",
        "type",
        "",
        "builtIn",
        "",
        "subjectId",
        "subjectType",
        "hasResource",
        "seenStatus",
        "ops",
        "subject",
        "Lcom/transsion/shorttv_pugc/bean/Subject;",
        "adData",
        "Lcom/transsion/ad/monopoly/model/AdPlans;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V",
        "getContent",
        "()Ljava/lang/String;",
        "setContent",
        "(Ljava/lang/String;)V",
        "getDeepLink",
        "setDeepLink",
        "getImage",
        "()Lcom/transsion/shorttv_pugc/bean/Image;",
        "setImage",
        "(Lcom/transsion/shorttv_pugc/bean/Image;)V",
        "getType",
        "()I",
        "setType",
        "(I)V",
        "getBuiltIn",
        "()Z",
        "setBuiltIn",
        "(Z)V",
        "getSubjectId",
        "setSubjectId",
        "getSubjectType",
        "setSubjectType",
        "getHasResource",
        "()Ljava/lang/Boolean;",
        "setHasResource",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getSeenStatus",
        "()Ljava/lang/Integer;",
        "setSeenStatus",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getOps",
        "setOps",
        "getSubject",
        "()Lcom/transsion/shorttv_pugc/bean/Subject;",
        "setSubject",
        "(Lcom/transsion/shorttv_pugc/bean/Subject;)V",
        "getAdData",
        "()Lcom/transsion/ad/monopoly/model/AdPlans;",
        "setAdData",
        "(Lcom/transsion/ad/monopoly/model/AdPlans;)V",
        "adview",
        "Landroid/view/View;",
        "getAdview",
        "()Landroid/view/View;",
        "setAdview",
        "(Landroid/view/View;)V",
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
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/shorttv_pugc/bean/BannerData;",
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
            "Lcom/transsion/shorttv_pugc/bean/BannerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adData:Lcom/transsion/ad/monopoly/model/AdPlans;

.field private transient adview:Landroid/view/View;

.field private builtIn:Z

.field private content:Ljava/lang/String;

.field private deepLink:Ljava/lang/String;

.field private hasResource:Ljava/lang/Boolean;

.field private image:Lcom/transsion/shorttv_pugc/bean/Image;

.field private ops:Ljava/lang/String;

.field private seenStatus:Ljava/lang/Integer;

.field private subject:Lcom/transsion/shorttv_pugc/bean/Subject;

.field private subjectId:Ljava/lang/String;

.field private subjectType:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/bean/BannerData$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/bean/BannerData$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 1
    const/16 v13, 0xfff

    const/4 v14, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/transsion/shorttv_pugc/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 6
    iput p4, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 7
    iput-boolean p5, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 8
    iput-object p6, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 9
    iput p7, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 10
    iput-object p8, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 11
    iput-object p9, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 12
    iput-object p10, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 13
    iput-object p11, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 14
    iput-object p12, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v6

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    .line 15
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_8

    :cond_8
    move-object/from16 v6, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    move-object v11, v2

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    move-object v12, v2

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v2, p12

    :goto_b
    move-object p1, p0

    move-object p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v6

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v2

    .line 16
    invoke-direct/range {p1 .. p13}, Lcom/transsion/shorttv_pugc/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/shorttv_pugc/bean/BannerData;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;ILjava/lang/Object;)Lcom/transsion/shorttv_pugc/bean/BannerData;
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p13

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

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
    iget-object v3, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

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
    iget-object v4, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object/from16 v4, p3

    .line 28
    .line 29
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 30
    .line 31
    if-eqz v5, :cond_3

    .line 32
    .line 33
    iget v5, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move/from16 v5, p4

    .line 37
    .line 38
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 39
    .line 40
    if-eqz v6, :cond_4

    .line 41
    .line 42
    iget-boolean v6, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 43
    .line 44
    goto :goto_4

    .line 45
    :cond_4
    move/from16 v6, p5

    .line 46
    .line 47
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 48
    .line 49
    if-eqz v7, :cond_5

    .line 50
    .line 51
    iget-object v7, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move-object/from16 v7, p6

    .line 55
    .line 56
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 57
    .line 58
    if-eqz v8, :cond_6

    .line 59
    .line 60
    iget v8, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_6
    move/from16 v8, p7

    .line 64
    .line 65
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 66
    .line 67
    if-eqz v9, :cond_7

    .line 68
    .line 69
    iget-object v9, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 70
    .line 71
    goto :goto_7

    .line 72
    :cond_7
    move-object/from16 v9, p8

    .line 73
    .line 74
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 75
    .line 76
    if-eqz v10, :cond_8

    .line 77
    .line 78
    iget-object v10, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_8
    move-object/from16 v10, p9

    .line 82
    .line 83
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 84
    .line 85
    if-eqz v11, :cond_9

    .line 86
    .line 87
    iget-object v11, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 88
    .line 89
    goto :goto_9

    .line 90
    :cond_9
    move-object/from16 v11, p10

    .line 91
    .line 92
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 93
    .line 94
    if-eqz v12, :cond_a

    .line 95
    .line 96
    iget-object v12, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 97
    .line 98
    goto :goto_a

    .line 99
    :cond_a
    move-object/from16 v12, p11

    .line 100
    .line 101
    :goto_a
    and-int/lit16 v1, v1, 0x800

    .line 102
    .line 103
    if-eqz v1, :cond_b

    .line 104
    .line 105
    iget-object v1, v0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 106
    .line 107
    goto :goto_b

    .line 108
    :cond_b
    move-object/from16 v1, p12

    .line 109
    .line 110
    :goto_b
    move-object p1, v2

    .line 111
    move-object p2, v3

    .line 112
    move-object/from16 p3, v4

    .line 113
    .line 114
    move/from16 p4, v5

    .line 115
    .line 116
    move/from16 p5, v6

    .line 117
    .line 118
    move-object/from16 p6, v7

    .line 119
    .line 120
    move/from16 p7, v8

    .line 121
    .line 122
    move-object/from16 p8, v9

    .line 123
    .line 124
    move-object/from16 p9, v10

    .line 125
    .line 126
    move-object/from16 p10, v11

    .line 127
    .line 128
    move-object/from16 p11, v12

    .line 129
    .line 130
    move-object/from16 p12, v1

    .line 131
    .line 132
    invoke-virtual/range {p0 .. p12}, Lcom/transsion/shorttv_pugc/bean/BannerData;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/shorttv_pugc/bean/BannerData;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Lcom/transsion/shorttv_pugc/bean/Subject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/transsion/shorttv_pugc/bean/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/shorttv_pugc/bean/BannerData;
    .locals 14

    .line 1
    new-instance v13, Lcom/transsion/shorttv_pugc/bean/BannerData;

    .line 2
    .line 3
    move-object v0, v13

    .line 4
    move-object v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move/from16 v4, p4

    .line 10
    .line 11
    move/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    move/from16 v7, p7

    .line 16
    .line 17
    move-object/from16 v8, p8

    .line 18
    .line 19
    move-object/from16 v9, p9

    .line 20
    .line 21
    move-object/from16 v10, p10

    .line 22
    .line 23
    move-object/from16 v11, p11

    .line 24
    .line 25
    move-object/from16 v12, p12

    .line 26
    .line 27
    invoke-direct/range {v0 .. v12}, Lcom/transsion/shorttv_pugc/bean/BannerData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Image;IZLjava/lang/String;ILjava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    .line 28
    .line 29
    .line 30
    return-object v13
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
    instance-of v1, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;

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
    check-cast p1, Lcom/transsion/shorttv_pugc/bean/BannerData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

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
    iget v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 47
    .line 48
    iget v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 49
    .line 50
    if-eq v1, v3, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 54
    .line 55
    iget-boolean v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 56
    .line 57
    if-eq v1, v3, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 72
    .line 73
    iget v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 74
    .line 75
    if-eq v1, v3, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 79
    .line 80
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_9

    .line 87
    .line 88
    return v2

    .line 89
    :cond_9
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 90
    .line 91
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_a

    .line 98
    .line 99
    return v2

    .line 100
    :cond_a
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-nez v1, :cond_b

    .line 109
    .line 110
    return v2

    .line 111
    :cond_b
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 112
    .line 113
    iget-object v3, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 114
    .line 115
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-nez v1, :cond_c

    .line 120
    .line 121
    return v2

    .line 122
    :cond_c
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 125
    .line 126
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_d

    .line 131
    .line 132
    return v2

    .line 133
    :cond_d
    return v0
.end method

.method public final getAdData()Lcom/transsion/ad/monopoly/model/AdPlans;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAdview()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adview:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBuiltIn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDeepLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasResource()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImage()Lcom/transsion/shorttv_pugc/bean/Image;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOps()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSeenStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubject()Lcom/transsion/shorttv_pugc/bean/Subject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSubjectType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

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
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

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
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

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
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

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
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

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
    iget v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 41
    .line 42
    add-int/2addr v0, v2

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 46
    .line 47
    invoke-static {v2}, Landroidx/compose/foundation/e;->a(Z)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    add-int/2addr v0, v2

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 55
    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    move v2, v1

    .line 59
    goto :goto_3

    .line 60
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    :goto_3
    add-int/2addr v0, v2

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    .line 66
    .line 67
    iget v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 68
    .line 69
    add-int/2addr v0, v2

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 73
    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    move v2, v1

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    :goto_4
    add-int/2addr v0, v2

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    .line 84
    .line 85
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    move v2, v1

    .line 90
    goto :goto_5

    .line 91
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    :goto_5
    add-int/2addr v0, v2

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    .line 97
    .line 98
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 99
    .line 100
    if-nez v2, :cond_6

    .line 101
    .line 102
    move v2, v1

    .line 103
    goto :goto_6

    .line 104
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    :goto_6
    add-int/2addr v0, v2

    .line 109
    mul-int/lit8 v0, v0, 0x1f

    .line 110
    .line 111
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 112
    .line 113
    if-nez v2, :cond_7

    .line 114
    .line 115
    move v2, v1

    .line 116
    goto :goto_7

    .line 117
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    :goto_7
    add-int/2addr v0, v2

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    .line 123
    .line 124
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 125
    .line 126
    if-nez v2, :cond_8

    .line 127
    .line 128
    goto :goto_8

    .line 129
    :cond_8
    invoke-virtual {v2}, Lcom/transsion/ad/monopoly/model/AdPlans;->hashCode()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    :goto_8
    add-int/2addr v0, v1

    .line 134
    return v0
.end method

.method public final setAdData(Lcom/transsion/ad/monopoly/model/AdPlans;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 2
    .line 3
    return-void
.end method

.method public final setAdview(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adview:Landroid/view/View;

    .line 2
    .line 3
    return-void
.end method

.method public final setBuiltIn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDeepLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setHasResource(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setImage(Lcom/transsion/shorttv_pugc/bean/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 2
    .line 3
    return-void
.end method

.method public final setOps(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSeenStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubject(Lcom/transsion/shorttv_pugc/bean/Subject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSubjectType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 6
    .line 7
    iget v3, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 8
    .line 9
    iget-boolean v4, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 12
    .line 13
    iget v6, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 14
    .line 15
    iget-object v7, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v8, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 18
    .line 19
    iget-object v9, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v10, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 22
    .line 23
    iget-object v11, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 24
    .line 25
    new-instance v12, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v13, "BannerData(content="

    .line 31
    .line 32
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", deepLink="

    .line 39
    .line 40
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ", image="

    .line 47
    .line 48
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ", type="

    .line 55
    .line 56
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, ", builtIn="

    .line 63
    .line 64
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, ", subjectId="

    .line 71
    .line 72
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ", subjectType="

    .line 79
    .line 80
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v0, ", hasResource="

    .line 87
    .line 88
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v0, ", seenStatus="

    .line 95
    .line 96
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v0, ", ops="

    .line 103
    .line 104
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, ", subject="

    .line 111
    .line 112
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, ", adData="

    .line 119
    .line 120
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v0, ")"

    .line 127
    .line 128
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
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
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->content:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->deepLink:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->image:Lcom/transsion/shorttv_pugc/bean/Image;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->type:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->builtIn:Z

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectId:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subjectType:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->hasResource:Ljava/lang/Boolean;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    :goto_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->seenStatus:Ljava/lang/Integer;

    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    :goto_1
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->ops:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->subject:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/bean/BannerData;->adData:Lcom/transsion/ad/monopoly/model/AdPlans;

    .line 90
    .line 91
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method
