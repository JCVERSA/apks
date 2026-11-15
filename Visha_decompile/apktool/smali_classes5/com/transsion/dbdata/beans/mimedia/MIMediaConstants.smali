.class public final Lcom/transsion/dbdata/beans/mimedia/MIMediaConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/mimedia/MIMediaConstants$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/transsion/dbdata/beans/mimedia/MIMediaConstants;",
        "",
        "<init>",
        "()V",
        "Companion",
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
.field public static final Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaConstants$Companion;

.field public static final DATA_TYPE_CLOUD:I = 0x1

.field public static final DATA_TYPE_MED:I = 0x2

.field public static final DELISTING_ERROR_CODE:I = 0xea67

.field public static final RECENT_PLAY_LIST_CACHE:Ljava/lang/String; = "recent_play_list_cache"

.field public static final STATUS_OFFLINE:I = 0x0

.field public static final STATUS_ONLINE:I = 0x1

.field public static final STATUS_REQUEST:I = 0x3

.field public static final STATUS_UPLOADING:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaConstants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/dbdata/beans/mimedia/MIMediaConstants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/dbdata/beans/mimedia/MIMediaConstants;->Companion:Lcom/transsion/dbdata/beans/mimedia/MIMediaConstants$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
