.class public final enum Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Privacy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum INTERNAL:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum OTHER:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum PRIVATE:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field public static final enum UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v2, "UNLISTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->UNLISTED:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    new-instance v2, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v3, "PRIVATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PRIVATE:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    new-instance v3, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v4, "INTERNAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->INTERNAL:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    new-instance v4, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    const-string v5, "OTHER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->OTHER:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

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

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    const-class v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method
