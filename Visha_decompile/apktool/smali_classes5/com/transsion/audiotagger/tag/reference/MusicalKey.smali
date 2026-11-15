.class public final enum Lcom/transsion/audiotagger/tag/reference/MusicalKey;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/audiotagger/tag/reference/MusicalKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum FLAT:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field private static final MAX_KEY_LENGTH:I = 0x3

.field public static final enum MINOR:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_A:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_B:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_C:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_D:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_E:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_F:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum NOTE_G:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum OFF_KEY:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field public static final enum SHARP:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

.field private static final groundKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/tag/reference/MusicalKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final halfKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/transsion/audiotagger/tag/reference/MusicalKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/transsion/audiotagger/tag/reference/MusicalKey;
    .locals 11

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_A:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_B:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_C:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v3, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_D:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v4, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_E:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v5, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_F:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v6, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_G:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v7, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->FLAT:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v8, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->SHARP:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v9, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->MINOR:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v10, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->OFF_KEY:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    filled-new-array/range {v0 .. v10}, [Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/4 v1, 0x0

    const-string v2, "A"

    const-string v3, "NOTE_A"

    invoke-direct {v0, v3, v1, v2}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_A:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v4, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/4 v1, 0x1

    const-string v2, "B"

    const-string v3, "NOTE_B"

    invoke-direct {v4, v3, v1, v2}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_B:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v5, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/4 v1, 0x2

    const-string v2, "C"

    const-string v3, "NOTE_C"

    invoke-direct {v5, v3, v1, v2}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_C:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v6, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/4 v1, 0x3

    const-string v2, "D"

    const-string v3, "NOTE_D"

    invoke-direct {v6, v3, v1, v2}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_D:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v7, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/4 v1, 0x4

    const-string v2, "E"

    const-string v3, "NOTE_E"

    invoke-direct {v7, v3, v1, v2}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_E:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v8, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/4 v1, 0x5

    const-string v2, "F"

    const-string v3, "NOTE_F"

    invoke-direct {v8, v3, v1, v2}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_F:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v9, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/4 v1, 0x6

    const-string v2, "G"

    const-string v3, "NOTE_G"

    invoke-direct {v9, v3, v1, v2}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->NOTE_G:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/4 v2, 0x7

    const-string v3, "b"

    const-string v10, "FLAT"

    invoke-direct {v1, v10, v2, v3}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->FLAT:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/16 v2, 0x8

    const-string v3, "#"

    const-string v10, "SHARP"

    invoke-direct {v1, v10, v2, v3}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->SHARP:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/16 v2, 0x9

    const-string v3, "m"

    const-string v10, "MINOR"

    invoke-direct {v1, v10, v2, v3}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->MINOR:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    new-instance v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    const/16 v2, 0xa

    const-string v3, "o"

    const-string v10, "OFF_KEY"

    invoke-direct {v1, v10, v2, v3}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->OFF_KEY:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->$values()[Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    move-result-object v1

    sput-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->$VALUES:[Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    filled-new-array/range {v4 .. v9}, [Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->values()[Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->groundKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->groundKeyMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->FLAT:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->SHARP:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->MINOR:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-static {}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->values()[Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->halfKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    sget-object v2, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->halfKeyMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->OFF_KEY:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    sget-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->groundKeyMap:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_4

    :cond_3
    sget-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->halfKeyMap:Ljava/util/HashMap;

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_5

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->MINOR:Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    invoke-virtual {v1}, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v3

    :cond_6
    :goto_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/audiotagger/tag/reference/MusicalKey;
    .locals 1

    const-class v0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    return-object p0
.end method

.method public static values()[Lcom/transsion/audiotagger/tag/reference/MusicalKey;
    .locals 1

    sget-object v0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->$VALUES:[Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    invoke-virtual {v0}, [Lcom/transsion/audiotagger/tag/reference/MusicalKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/audiotagger/tag/reference/MusicalKey;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/audiotagger/tag/reference/MusicalKey;->value:Ljava/lang/String;

    return-object p0
.end method
