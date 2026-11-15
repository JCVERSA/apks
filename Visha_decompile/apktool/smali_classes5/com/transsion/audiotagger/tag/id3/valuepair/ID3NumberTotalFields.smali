.class public Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static numberField:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation
.end field

.field private static totalField:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/transsion/audiotagger/tag/FieldKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    sput-object v1, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT_NO:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->TRACK_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->DISC_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    sget-object v1, Lcom/transsion/audiotagger/tag/FieldKey;->MOVEMENT_TOTAL:Lcom/transsion/audiotagger/tag/FieldKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNumber(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->numberField:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isTotal(Lcom/transsion/audiotagger/tag/FieldKey;)Z
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/id3/valuepair/ID3NumberTotalFields;->totalField:Ljava/util/EnumSet;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
