.class public final enum Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

.field public static final enum CLEAN:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

.field public static final enum EXPLICIT:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;


# instance fields
.field private description:Ljava/lang/String;

.field private id:I


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;
    .locals 2

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->CLEAN:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    sget-object v1, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->EXPLICIT:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    filled-new-array {v0, v1}, [Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    const-string v1, "Clean"

    const/4 v2, 0x2

    const-string v3, "CLEAN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->CLEAN:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    new-instance v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    const-string v1, "Explicit"

    const/4 v2, 0x4

    const-string v3, "EXPLICIT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->EXPLICIT:Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    invoke-static {}, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->$values()[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->$VALUES:[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->description:Ljava/lang/String;

    iput p4, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->$VALUES:[Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;

    return-object v0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/transsion/audiotagger/tag/mp4/atom/Mp4RatingValue;->id:I

    return p0
.end method
