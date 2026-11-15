.class public final enum Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

.field public static final enum HIGH:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

.field public static final enum IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

.field public static final enum MIXED:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

.field public static final enum NORMAL:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;


# direct methods
.method private static synthetic $values()[Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;
    .locals 4

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->MIXED:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    sget-object v1, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    sget-object v2, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->NORMAL:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    sget-object v3, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->HIGH:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    filled-new-array {v0, v1, v2, v3}, [Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    const-string v1, "MIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->MIXED:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    const-string v1, "IGNORE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->IGNORE:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    const-string v1, "NORMAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->NORMAL:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    new-instance v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    const-string v1, "HIGH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->HIGH:Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-static {}, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->$values()[Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    move-result-object v0

    sput-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;
    .locals 1

    const-class v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-object p0
.end method

.method public static values()[Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;
    .locals 1

    sget-object v0, Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->$VALUES:[Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    invoke-virtual {v0}, [Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/proninyaroslav/libretorrent/core/model/filetree/FilePriority$Type;

    return-object v0
.end method
