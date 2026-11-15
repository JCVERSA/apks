.class public final enum Lcom/transsion/upload/bean/UploadFileType;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/upload/bean/UploadFileType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/upload/bean/UploadFileType;",
        "",
        "type",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getType",
        "()Ljava/lang/String;",
        "OBJECT_NAME_IMAGE",
        "OBJECT_NAME_VIDEO",
        "OBJECT_NAME_AUDIO",
        "OBJECT_NAME_LOGGER",
        "Upload_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/upload/bean/UploadFileType;

.field public static final enum OBJECT_NAME_AUDIO:Lcom/transsion/upload/bean/UploadFileType;

.field public static final enum OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

.field public static final enum OBJECT_NAME_LOGGER:Lcom/transsion/upload/bean/UploadFileType;

.field public static final enum OBJECT_NAME_VIDEO:Lcom/transsion/upload/bean/UploadFileType;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/transsion/upload/bean/UploadFileType;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/transsion/upload/bean/UploadFileType;

    .line 3
    .line 4
    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_VIDEO:Lcom/transsion/upload/bean/UploadFileType;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_AUDIO:Lcom/transsion/upload/bean/UploadFileType;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_LOGGER:Lcom/transsion/upload/bean/UploadFileType;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/transsion/upload/bean/UploadFileType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "image"

    .line 5
    .line 6
    const-string v3, "OBJECT_NAME_IMAGE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/upload/bean/UploadFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_IMAGE:Lcom/transsion/upload/bean/UploadFileType;

    .line 12
    .line 13
    new-instance v0, Lcom/transsion/upload/bean/UploadFileType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "video"

    .line 17
    .line 18
    const-string v3, "OBJECT_NAME_VIDEO"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/upload/bean/UploadFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_VIDEO:Lcom/transsion/upload/bean/UploadFileType;

    .line 24
    .line 25
    new-instance v0, Lcom/transsion/upload/bean/UploadFileType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "audio"

    .line 29
    .line 30
    const-string v3, "OBJECT_NAME_AUDIO"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/upload/bean/UploadFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_AUDIO:Lcom/transsion/upload/bean/UploadFileType;

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/upload/bean/UploadFileType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "logger"

    .line 41
    .line 42
    const-string v3, "OBJECT_NAME_LOGGER"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/upload/bean/UploadFileType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/transsion/upload/bean/UploadFileType;->OBJECT_NAME_LOGGER:Lcom/transsion/upload/bean/UploadFileType;

    .line 48
    .line 49
    invoke-static {}, Lcom/transsion/upload/bean/UploadFileType;->$values()[Lcom/transsion/upload/bean/UploadFileType;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lcom/transsion/upload/bean/UploadFileType;->$VALUES:[Lcom/transsion/upload/bean/UploadFileType;

    .line 54
    .line 55
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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/transsion/upload/bean/UploadFileType;->type:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/upload/bean/UploadFileType;
    .locals 1

    .line 1
    const-class v0, Lcom/transsion/upload/bean/UploadFileType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/transsion/upload/bean/UploadFileType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/transsion/upload/bean/UploadFileType;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/upload/bean/UploadFileType;->$VALUES:[Lcom/transsion/upload/bean/UploadFileType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/transsion/upload/bean/UploadFileType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/upload/bean/UploadFileType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
