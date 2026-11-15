.class public final enum Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResolutionLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

.field public static final enum HIGH:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

.field public static final enum LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

.field public static final enum MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

.field public static final enum UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->HIGH:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    new-instance v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v2, "MEDIUM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    new-instance v2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v3, "LOW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    new-instance v3, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    const-string v4, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    filled-new-array {v0, v1, v2, v3}, [Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->$VALUES:[Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

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

.method public static fromHeight(I)Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 1

    if-gtz p0, :cond_0

    sget-object p0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->UNKNOWN:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object p0

    :cond_0
    const/16 v0, 0xaf

    if-ge p0, v0, :cond_1

    sget-object p0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->LOW:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object p0

    :cond_1
    const/16 v0, 0x2d0

    if-ge p0, v0, :cond_2

    sget-object p0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->MEDIUM:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object p0

    :cond_2
    sget-object p0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->HIGH:Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 1

    const-class v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->$VALUES:[Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/Image$ResolutionLevel;

    return-object v0
.end method
