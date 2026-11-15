.class public abstract Lorg/apache/commons/text/StrMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/StrMatcher$TrimMatcher;,
        Lorg/apache/commons/text/StrMatcher$StringMatcher;,
        Lorg/apache/commons/text/StrMatcher$NoMatcher;,
        Lorg/apache/commons/text/StrMatcher$CharSetMatcher;,
        Lorg/apache/commons/text/StrMatcher$CharMatcher;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMA_MATCHER:Lorg/apache/commons/text/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

.field private static final NONE_MATCHER:Lorg/apache/commons/text/StrMatcher;

.field private static final QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

.field private static final SPACE_MATCHER:Lorg/apache/commons/text/StrMatcher;

.field private static final SPLIT_MATCHER:Lorg/apache/commons/text/StrMatcher;

.field private static final TAB_MATCHER:Lorg/apache/commons/text/StrMatcher;

.field private static final TRIM_MATCHER:Lorg/apache/commons/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->COMMA_MATCHER:Lorg/apache/commons/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->TAB_MATCHER:Lorg/apache/commons/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->SPACE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->SPLIT_MATCHER:Lorg/apache/commons/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/text/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lorg/apache/commons/text/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->TRIM_MATCHER:Lorg/apache/commons/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    new-instance v0, Lorg/apache/commons/text/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lorg/apache/commons/text/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lorg/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charMatcher(C)Lorg/apache/commons/text/StrMatcher;
    .locals 1

    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;
    .locals 2

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 10
    :cond_2
    :goto_0
    sget-object p0, Lorg/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public static varargs charSetMatcher([C)Lorg/apache/commons/text/StrMatcher;
    .locals 2

    .line 1
    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lorg/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object p0

    .line 3
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char p0, p0, v1

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0
.end method

.method public static commaMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->COMMA_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->SPACE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->SPLIT_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lorg/apache/commons/text/StrMatcher;
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/text/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lorg/apache/commons/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object p0
.end method

.method public static tabMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->TAB_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lorg/apache/commons/text/StrMatcher;
    .locals 1

    sget-object v0, Lorg/apache/commons/text/StrMatcher;->TRIM_MATCHER:Lorg/apache/commons/text/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result p0

    return p0
.end method

.method public abstract isMatch([CIII)I
.end method
