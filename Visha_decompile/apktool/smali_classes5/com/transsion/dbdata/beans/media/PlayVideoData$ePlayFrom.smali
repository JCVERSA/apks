.class public final enum Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/media/PlayVideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ePlayFrom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

.field public static final enum EXTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

.field public static final enum FILE_MANAGE_APP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

.field public static final enum INTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

.field public static final enum PHOTO_ALBUM_APP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

.field public static final enum PLAY_FROM_PIP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

.field public static final enum SYSTEM_MEDIA_NOTICE:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;


# instance fields
.field public final from:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;
    .locals 6

    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->INTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    sget-object v1, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->EXTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    sget-object v2, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->FILE_MANAGE_APP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    sget-object v3, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->PHOTO_ALBUM_APP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    sget-object v4, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->SYSTEM_MEDIA_NOTICE:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    sget-object v5, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->PLAY_FROM_PIP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    filled-new-array/range {v0 .. v5}, [Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "INTERNAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->INTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    const/4 v1, 0x1

    const/16 v2, 0x65

    const-string v3, "EXTERNAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->EXTERNAL:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    const/4 v1, 0x2

    const/16 v2, 0x67

    const-string v3, "FILE_MANAGE_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->FILE_MANAGE_APP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    const/4 v1, 0x3

    const/16 v2, 0x66

    const-string v3, "PHOTO_ALBUM_APP"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->PHOTO_ALBUM_APP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    const/4 v1, 0x4

    const/16 v2, 0x68

    const-string v3, "SYSTEM_MEDIA_NOTICE"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->SYSTEM_MEDIA_NOTICE:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    new-instance v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    const/4 v1, 0x5

    const/16 v2, 0x69

    const-string v3, "PLAY_FROM_PIP"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->PLAY_FROM_PIP:Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->$values()[Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->$VALUES:[Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->from:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->$VALUES:[Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    invoke-virtual {v0}, [Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/beans/media/PlayVideoData$ePlayFrom;

    return-object v0
.end method
