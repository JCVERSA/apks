.class public final enum Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/media/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

.field public static final enum AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

.field public static final enum IMAGE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

.field public static final enum OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

.field public static final enum SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

.field public static final enum VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;


# instance fields
.field public final mValue:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;
    .locals 5

    sget-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->IMAGE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v2, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v3, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    sget-object v4, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    const-string v1, "VIDEO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->VIDEO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    const-string v1, "IMAGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->IMAGE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    const-string v1, "AUDIO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->AUDIO:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    const-string v1, "SUBTITLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->SUBTITLE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    new-instance v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    const-string v1, "OTHERS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->OTHERS:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-static {}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->$values()[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    move-result-object v0

    sput-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->$VALUES:[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

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

    iput p3, p0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;
    .locals 1

    const-class v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;
    .locals 1

    sget-object v0, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->$VALUES:[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v0}, [Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    return-object v0
.end method
