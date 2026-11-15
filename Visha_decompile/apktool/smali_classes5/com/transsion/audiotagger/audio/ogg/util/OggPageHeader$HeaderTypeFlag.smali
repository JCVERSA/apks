.class public final enum Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderTypeFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum CONTINUED_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum END_OF_BITSTREAM:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum FRESH_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

.field public static final enum START_OF_BITSTREAM:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;


# instance fields
.field fileValue:B


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .locals 4

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->FRESH_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    sget-object v1, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    sget-object v2, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->START_OF_BITSTREAM:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    sget-object v3, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->END_OF_BITSTREAM:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const-string v1, "FRESH_PACKET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->FRESH_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const-string v1, "CONTINUED_PACKET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->CONTINUED_PACKET:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const-string v1, "START_OF_BITSTREAM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->START_OF_BITSTREAM:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    new-instance v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    const/4 v1, 0x3

    const/4 v2, 0x4

    const-string v3, "END_OF_BITSTREAM"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->END_OF_BITSTREAM:Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-static {}, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->$values()[Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->$VALUES:[Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->fileValue:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->$VALUES:[Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;

    return-object v0
.end method


# virtual methods
.method public getFileValue()B
    .locals 0

    iget-byte p0, p0, Lcom/transsion/audiotagger/audio/ogg/util/OggPageHeader$HeaderTypeFlag;->fileValue:B

    return p0
.end method
