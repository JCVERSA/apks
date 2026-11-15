.class public final enum Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

.field public static final enum LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

.field public static final enum OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

.field public static final enum PROGRESSIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const-string v1, "PROGRESSIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->PROGRESSIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    new-instance v1, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const-string v2, "OTF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->OTF:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    new-instance v2, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    const-string v3, "LIVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->LIVE:Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    filled-new-array {v0, v1, v2}, [Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->$VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
    .locals 1

    const-class v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->$VALUES:[Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/services/youtube/DeliveryType;

    return-object v0
.end method
