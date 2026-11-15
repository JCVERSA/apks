.class public final enum Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaCapability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

.field public static final enum AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

.field public static final enum COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

.field public static final enum LIVE:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

.field public static final enum VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->AUDIO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    new-instance v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const-string v2, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->VIDEO:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    new-instance v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const-string v3, "LIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->LIVE:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    new-instance v3, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    const-string v4, "COMMENTS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->COMMENTS:Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    filled-new-array {v0, v1, v2, v3}, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->$VALUES:[Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

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

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;
    .locals 1

    const-class v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->$VALUES:[Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/StreamingService$ServiceInfo$MediaCapability;

    return-object v0
.end method
