.class public final enum Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field public static final enum DASH:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field public static final enum HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field public static final enum PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field public static final enum SS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

.field public static final enum TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    const-string v1, "PROGRESSIVE_HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v1, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    const-string v2, "DASH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->DASH:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v2, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    const-string v3, "HLS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->HLS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v3, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    const-string v4, "SS"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->SS:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    new-instance v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    const-string v5, "TORRENT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

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

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
    .locals 1

    const-class v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;
    .locals 1

    sget-object v0, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->$VALUES:[Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    return-object v0
.end method
