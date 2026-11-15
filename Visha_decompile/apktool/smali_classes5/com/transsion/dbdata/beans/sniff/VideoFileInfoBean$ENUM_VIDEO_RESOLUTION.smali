.class public final enum Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENUM_VIDEO_RESOLUTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

.field public static final enum VIDEO_RESOLUTION_1080P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

.field public static final enum VIDEO_RESOLUTION_480P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

.field public static final enum VIDEO_RESOLUTION_720P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

.field public static final enum VIDEO_RESOLUTION_SD:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;
    .locals 4

    sget-object v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_1080P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    sget-object v1, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_720P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    sget-object v2, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_480P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    sget-object v3, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_SD:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    const/4 v1, 0x0

    const-string v2, "1080P"

    const-string v3, "VIDEO_RESOLUTION_1080P"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_1080P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    const/4 v1, 0x1

    const-string v2, "720P"

    const-string v3, "VIDEO_RESOLUTION_720P"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_720P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    const/4 v1, 0x2

    const-string v2, "480P"

    const-string v3, "VIDEO_RESOLUTION_480P"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_480P:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    new-instance v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    const/4 v1, 0x3

    const-string v2, "SD"

    const-string v3, "VIDEO_RESOLUTION_SD"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->VIDEO_RESOLUTION_SD:Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    invoke-static {}, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->$values()[Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->$VALUES:[Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

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

    iput-object p3, p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->$VALUES:[Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    invoke-virtual {v0}, [Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/beans/sniff/VideoFileInfoBean$ENUM_VIDEO_RESOLUTION;

    return-object v0
.end method
