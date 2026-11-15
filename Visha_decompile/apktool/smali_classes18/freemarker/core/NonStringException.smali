.class public Lfreemarker/core/NonStringException;
.super Lfreemarker/core/UnexpectedTypeException;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DESCRIPTION:Ljava/lang/String; = "Expecting string or something automatically convertible to string (number, date or boolean) value here"

.field static final STRING_COERCABLE_TYPES:[Ljava/lang/Class;

.field static final STRING_COERCABLE_TYPES_DESC:Ljava/lang/String; = "string or something automatically convertible to string (number, date or boolean)"

.field static synthetic class$freemarker$template$TemplateBooleanModel:Ljava/lang/Class;

.field static synthetic class$freemarker$template$TemplateDateModel:Ljava/lang/Class;

.field static synthetic class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;

.field static synthetic class$freemarker$template$TemplateScalarModel:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lfreemarker/core/NonStringException;->class$freemarker$template$TemplateScalarModel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "freemarker.template.TemplateScalarModel"

    invoke-static {v0}, Lfreemarker/core/NonStringException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/NonStringException;->class$freemarker$template$TemplateScalarModel:Ljava/lang/Class;

    :cond_0
    sget-object v1, Lfreemarker/core/NonStringException;->class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "freemarker.template.TemplateNumberModel"

    invoke-static {v1}, Lfreemarker/core/NonStringException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lfreemarker/core/NonStringException;->class$freemarker$template$TemplateNumberModel:Ljava/lang/Class;

    :cond_1
    sget-object v2, Lfreemarker/core/NonStringException;->class$freemarker$template$TemplateDateModel:Ljava/lang/Class;

    if-nez v2, :cond_2

    const-string v2, "freemarker.template.TemplateDateModel"

    invoke-static {v2}, Lfreemarker/core/NonStringException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lfreemarker/core/NonStringException;->class$freemarker$template$TemplateDateModel:Ljava/lang/Class;

    :cond_2
    sget-object v3, Lfreemarker/core/NonStringException;->class$freemarker$template$TemplateBooleanModel:Ljava/lang/Class;

    if-nez v3, :cond_3

    const-string v3, "freemarker.template.TemplateBooleanModel"

    invoke-static {v3}, Lfreemarker/core/NonStringException;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/core/NonStringException;->class$freemarker$template$TemplateBooleanModel:Ljava/lang/Class;

    :cond_3
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;)V
    .locals 1

    .line 1
    const-string v0, "Expecting string or something automatically convertible to string (number, date or boolean) value here"

    invoke-direct {p0, p1, v0}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Environment;Lq0d;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Environment;Lq0d;)V

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
    const-string v3, "string or something automatically convertible to string (number, date or boolean)"

    sget-object v4, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

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
    const-string v3, "string or something automatically convertible to string (number, date or boolean)"

    sget-object v4, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

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
    const-string v3, "string or something automatically convertible to string (number, date or boolean)"

    sget-object v4, Lfreemarker/core/NonStringException;->STRING_COERCABLE_TYPES:[Ljava/lang/Class;

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
