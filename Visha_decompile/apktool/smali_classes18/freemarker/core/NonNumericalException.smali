.class public Lfreemarker/core/NonNumericalException;
.super Lfreemarker/core/UnexpectedTypeException;
.source "SourceFile"


# static fields
.field private static final EXPECTED_TYPES:[Ljava/lang/Class;

.field static synthetic class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lfreemarker/core/NonNumericalException;->class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "freemarker.template.TemplateNumberModel"

    invoke-static {v0}, Lfreemarker/core/NonNumericalException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/NonNumericalException;->class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;

    :cond_0
    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/NonNumericalException;->EXPECTED_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;)V
    .locals 1

    .line 1
    const-string v0, "Expecting numerical value here"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lzfa;Lfreemarker/core/Environment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 4
    const-string v3, "number"

    sget-object v4, Lfreemarker/core/NonNumericalException;->EXPECTED_TYPES:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 5
    const-string v3, "number"

    sget-object v4, Lfreemarker/core/NonNumericalException;->EXPECTED_TYPES:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/t0;Lzfa;[Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 6
    const-string v3, "number"

    sget-object v4, Lfreemarker/core/NonNumericalException;->EXPECTED_TYPES:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/t0;Lzfa;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p1}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lzfa;[Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/InvalidReferenceException;
        }
    .end annotation

    .line 7
    const-string v3, "number"

    sget-object v4, Lfreemarker/core/NonNumericalException;->EXPECTED_TYPES:[Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Ljava/lang/String;Lzfa;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/String;Lfreemarker/core/Environment;)V

    return-void
.end method

.method public constructor <init>(Lq0d;Lfreemarker/core/Environment;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2, p1}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Lq0d;)V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static newMalformedNumberException(Lfreemarker/core/t0;Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/core/NonNumericalException;
    .locals 3

    new-instance v0, Lfreemarker/core/NonNumericalException;

    new-instance v1, Lq0d;

    new-instance v2, Lk0d;

    invoke-direct {v2, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "Can\'t convert this string to number: "

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v1, p1}, Lq0d;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lq0d;->b(Lfreemarker/core/t0;)Lq0d;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lfreemarker/core/NonNumericalException;-><init>(Lq0d;Lfreemarker/core/Environment;)V

    return-object v0
.end method
