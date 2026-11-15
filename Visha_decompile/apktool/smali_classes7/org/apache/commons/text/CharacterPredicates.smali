.class public abstract enum Lorg/apache/commons/text/CharacterPredicates;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/CharacterPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/text/CharacterPredicates;",
        ">;",
        "Lorg/apache/commons/text/CharacterPredicate;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum ARABIC_NUMERALS:Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum ASCII_ALPHA_NUMERALS:Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum ASCII_LETTERS:Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum ASCII_LOWERCASE_LETTERS:Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum ASCII_UPPERCASE_LETTERS:Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum DIGITS:Lorg/apache/commons/text/CharacterPredicates;

.field public static final enum LETTERS:Lorg/apache/commons/text/CharacterPredicates;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lorg/apache/commons/text/CharacterPredicates$1;

    const-string v1, "LETTERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/text/CharacterPredicates$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/text/CharacterPredicates;->LETTERS:Lorg/apache/commons/text/CharacterPredicates;

    new-instance v1, Lorg/apache/commons/text/CharacterPredicates$2;

    const-string v3, "DIGITS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/text/CharacterPredicates$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/commons/text/CharacterPredicates;->DIGITS:Lorg/apache/commons/text/CharacterPredicates;

    new-instance v3, Lorg/apache/commons/text/CharacterPredicates$3;

    const-string v5, "ARABIC_NUMERALS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/apache/commons/text/CharacterPredicates$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/commons/text/CharacterPredicates;->ARABIC_NUMERALS:Lorg/apache/commons/text/CharacterPredicates;

    new-instance v5, Lorg/apache/commons/text/CharacterPredicates$4;

    const-string v7, "ASCII_LOWERCASE_LETTERS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/text/CharacterPredicates$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/commons/text/CharacterPredicates;->ASCII_LOWERCASE_LETTERS:Lorg/apache/commons/text/CharacterPredicates;

    new-instance v7, Lorg/apache/commons/text/CharacterPredicates$5;

    const-string v9, "ASCII_UPPERCASE_LETTERS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/text/CharacterPredicates$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/text/CharacterPredicates;->ASCII_UPPERCASE_LETTERS:Lorg/apache/commons/text/CharacterPredicates;

    new-instance v9, Lorg/apache/commons/text/CharacterPredicates$6;

    const-string v11, "ASCII_LETTERS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/apache/commons/text/CharacterPredicates$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/commons/text/CharacterPredicates;->ASCII_LETTERS:Lorg/apache/commons/text/CharacterPredicates;

    new-instance v11, Lorg/apache/commons/text/CharacterPredicates$7;

    const-string v13, "ASCII_ALPHA_NUMERALS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/apache/commons/text/CharacterPredicates$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/commons/text/CharacterPredicates;->ASCII_ALPHA_NUMERALS:Lorg/apache/commons/text/CharacterPredicates;

    const/4 v13, 0x7

    new-array v13, v13, [Lorg/apache/commons/text/CharacterPredicates;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/apache/commons/text/CharacterPredicates;->$VALUES:[Lorg/apache/commons/text/CharacterPredicates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/text/CharacterPredicates$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/CharacterPredicates;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/text/CharacterPredicates;
    .locals 1

    const-class v0, Lorg/apache/commons/text/CharacterPredicates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/text/CharacterPredicates;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/text/CharacterPredicates;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/CharacterPredicates;->$VALUES:[Lorg/apache/commons/text/CharacterPredicates;

    invoke-virtual {v0}, [Lorg/apache/commons/text/CharacterPredicates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/text/CharacterPredicates;

    return-object v0
.end method
