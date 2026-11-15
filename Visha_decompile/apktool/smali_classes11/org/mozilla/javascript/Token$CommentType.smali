.class public final enum Lorg/mozilla/javascript/Token$CommentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mozilla/javascript/Token$CommentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mozilla/javascript/Token$CommentType;

.field public static final enum BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

.field public static final enum HTML:Lorg/mozilla/javascript/Token$CommentType;

.field public static final enum JSDOC:Lorg/mozilla/javascript/Token$CommentType;

.field public static final enum LINE:Lorg/mozilla/javascript/Token$CommentType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/mozilla/javascript/Token$CommentType;

    const-string v1, "LINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/Token$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    new-instance v1, Lorg/mozilla/javascript/Token$CommentType;

    const-string v2, "BLOCK_COMMENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mozilla/javascript/Token$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    new-instance v2, Lorg/mozilla/javascript/Token$CommentType;

    const-string v3, "JSDOC"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mozilla/javascript/Token$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    new-instance v3, Lorg/mozilla/javascript/Token$CommentType;

    const-string v4, "HTML"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/mozilla/javascript/Token$CommentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/mozilla/javascript/Token$CommentType;

    move-result-object v0

    sput-object v0, Lorg/mozilla/javascript/Token$CommentType;->$VALUES:[Lorg/mozilla/javascript/Token$CommentType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    const-class v0, Lorg/mozilla/javascript/Token$CommentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/mozilla/javascript/Token$CommentType;

    return-object p0
.end method

.method public static values()[Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->$VALUES:[Lorg/mozilla/javascript/Token$CommentType;

    invoke-virtual {v0}, [Lorg/mozilla/javascript/Token$CommentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method
