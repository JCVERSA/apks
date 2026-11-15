.class public abstract Lfreemarker/core/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/c$b;,
        Lfreemarker/core/c$a;
    }
.end annotation


# static fields
.field public static final d:Lfreemarker/core/c$a;

.field public static final e:Lfreemarker/core/c$b;

.field public static synthetic f:Ljava/lang/Class;

.field public static synthetic g:Ljava/lang/Class;

.field public static synthetic h:Ljava/lang/Class;

.field public static synthetic i:Ljava/lang/Class;

.field public static synthetic j:Ljava/lang/Class;

.field public static synthetic k:Ljava/lang/Class;

.field public static synthetic l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfreemarker/core/c$a;

    invoke-direct {v0}, Lfreemarker/core/c$a;-><init>()V

    sput-object v0, Lfreemarker/core/c;->d:Lfreemarker/core/c$a;

    new-instance v0, Lfreemarker/core/c$b;

    invoke-direct {v0}, Lfreemarker/core/c$b;-><init>()V

    sput-object v0, Lfreemarker/core/c;->e:Lfreemarker/core/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lfreemarker/core/c;->a:I

    iput v0, p0, Lfreemarker/core/c;->b:I

    const/4 v0, 0x4

    iput v0, p0, Lfreemarker/core/c;->c:I

    return-void
.end method

.method public static synthetic a(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .locals 0

    invoke-static {p0}, Lfreemarker/core/c;->j(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/Number;
    .locals 0

    invoke-static {p0}, Lfreemarker/core/c;->k(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static j(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .locals 3

    :try_start_0
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Can\'t parse this as BigDecimal number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Ln0a;->C(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static k(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x49

    if-ne v0, v1, :cond_1

    const-string v2, "INF"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/Double;

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_1
    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    const-string v2, "NaN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Ljava/lang/Double;

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_2
    const/16 v2, 0x2d

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    const-string v0, "-INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-Infinity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance p0, Ljava/lang/Double;

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {p0, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object p0

    :cond_4
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract c(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract e(Ljava/lang/Number;Ljava/lang/Number;)I
.end method

.method public abstract f(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract g(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract h(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract i(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
.end method

.method public abstract l(Ljava/lang/String;)Ljava/lang/Number;
.end method
