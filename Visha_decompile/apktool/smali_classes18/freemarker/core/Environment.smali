.class public final Lfreemarker/core/Environment;
.super Lfreemarker/core/Configurable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/Environment$Namespace;,
        Lfreemarker/core/Environment$b;,
        Lfreemarker/core/Environment$a;
    }
.end annotation


# static fields
.field public static synthetic A0:Ljava/lang/Class;

.field public static synthetic B0:Ljava/lang/Class;

.field public static synthetic C0:Ljava/lang/Class;

.field public static synthetic D0:Ljava/lang/Class;

.field public static final t0:Ljava/lang/ThreadLocal;

.field public static final u0:Lpq5;

.field public static final v0:Lpq5;

.field public static final w0:Ljava/util/Map;

.field public static final x0:Ljava/text/DecimalFormat;

.field public static final y0:[Lzfa;

.field public static final z0:Ljava/io/Writer;


# instance fields
.field public final J:Lofa;

.field public final K:Ljava/util/ArrayList;

.field public final L:Ljava/util/ArrayList;

.field public M:Ljava/text/NumberFormat;

.field public N:Ljava/util/Map;

.field public O:[Ldfa;

.field public P:Lqrc;

.field public Q:Lqrc;

.field public R:Lbw4;

.field public S:Lbw4;

.field public T:Lfreemarker/core/a1;

.field public U:Lfreemarker/core/a1;

.field public V:Ljava/lang/Boolean;

.field public W:Ljava/text/NumberFormat;

.field public X:Lfreemarker/template/utility/DateUtil$b;

.field public Y:Ljava/text/Collator;

.field public Z:Ljava/io/Writer;

.field public a0:Lfreemarker/core/e1$a;

.field public b0:Ljava/util/ArrayList;

.field public final c0:Lfreemarker/core/Environment$Namespace;

.field public d0:Lfreemarker/core/Environment$Namespace;

.field public e0:Lfreemarker/core/Environment$Namespace;

.field public f0:Ljava/util/HashMap;

.field public g0:Lfreemarker/core/Configurable;

.field public h0:Z

.field public i0:Ljava/lang/Throwable;

.field public j0:Lzfa;

.field public k0:Ljava/util/HashMap;

.field public l0:Lgga;

.field public m0:Lnga;

.field public n0:I

.field public o0:Ljava/lang/String;

.field public p0:Ljava/lang/String;

.field public q0:Ljava/lang/String;

.field public r0:Z

.field public s0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lfreemarker/core/Environment;->t0:Ljava/lang/ThreadLocal;

    const-string v0, "freemarker.runtime"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->u0:Lpq5;

    const-string v0, "freemarker.runtime.attempt"

    invoke-static {v0}, Lpq5;->k(Ljava/lang/String;)Lpq5;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->v0:Lpq5;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfreemarker/core/Environment;->w0:Ljava/util/Map;

    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v2, "0.################"

    invoke-direct {v0, v2, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    sput-object v0, Lfreemarker/core/Environment;->x0:Ljava/text/DecimalFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setGroupingUsed(Z)V

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    new-array v0, v1, [Lzfa;

    sput-object v0, Lfreemarker/core/Environment;->y0:[Lzfa;

    new-instance v0, Llb3;

    invoke-direct {v0}, Llb3;-><init>()V

    sput-object v0, Lfreemarker/core/Environment;->z0:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Template;Lofa;Ljava/io/Writer;)V
    .locals 2

    invoke-direct {p0, p1}, Lfreemarker/core/Configurable;-><init>(Lfreemarker/core/Configurable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->L:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->k0:Ljava/util/HashMap;

    new-instance v0, Lfreemarker/core/Environment$Namespace;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    iput-object v0, p0, Lfreemarker/core/Environment;->e0:Lfreemarker/core/Environment$Namespace;

    new-instance v0, Lfreemarker/core/Environment$Namespace;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    iput-object v0, p0, Lfreemarker/core/Environment;->c0:Lfreemarker/core/Environment$Namespace;

    iput-object v0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    iput-object p3, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    iput-object p2, p0, Lfreemarker/core/Environment;->J:Lofa;

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->q1(Lfreemarker/template/Template;)V

    return-void
.end method

.method public static B1(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static C1([Lifa;ZLjava/io/Writer;)V
    .locals 13

    instance-of v0, p2, Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Ljava/io/PrintWriter;

    const/16 v1, 0xa

    if-eqz p0, :cond_13

    :try_start_0
    array-length v2, p0

    const/16 v3, 0x9

    if-eqz p1, :cond_2

    if-gt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v2

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    if-ge v4, v2, :cond_3

    move p1, v6

    goto :goto_3

    :cond_3
    move p1, v5

    :goto_3
    move v7, v5

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_4
    if-ge v7, v2, :cond_d

    aget-object v11, p0, v7

    if-lez v7, :cond_4

    instance-of v12, v11, Lfreemarker/core/h;

    if-nez v12, :cond_5

    goto :goto_5

    :catch_0
    move-exception p0

    goto/16 :goto_d

    :cond_4
    :goto_5
    if-le v7, v6, :cond_6

    add-int/lit8 v12, v7, -0x1

    aget-object v12, p0, v12

    instance-of v12, v12, Lfreemarker/core/h;

    if-eqz v12, :cond_6

    :cond_5
    move v12, v6

    goto :goto_6

    :cond_6
    move v12, v5

    :goto_6
    if-ge v10, v4, :cond_c

    if-eqz v12, :cond_8

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_8
    :goto_7
    if-nez v7, :cond_9

    const-string v12, "\t- Failed at: "

    goto :goto_8

    :cond_9
    if-eqz v12, :cond_a

    const-string v12, "\t~ Reached through: "

    goto :goto_8

    :cond_a
    const-string v12, "\t- Reached through: "

    :goto_8
    invoke-virtual {p2, v12}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {v11}, Lfreemarker/core/Environment;->s1(Lifa;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v11}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_9

    :cond_b
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_c
    add-int/lit8 v8, v8, 0x1

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    if-lez v8, :cond_e

    const-string p0, "\t... (Had "

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p0, " more, hidden for tersenes)"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v5, v6

    :cond_e
    if-lez v9, :cond_11

    if-eqz v5, :cond_f

    const/16 p0, 0x20

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(I)V

    goto :goto_b

    :cond_f
    invoke-virtual {p2, v3}, Ljava/io/Writer;->write(I)V

    :goto_b
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p1, "(Hidden "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " \"~\" lines for terseness)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_c

    :cond_10
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_c

    :cond_11
    move v6, v5

    :goto_c
    if-eqz v6, :cond_15

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_e

    :cond_12
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_e

    :cond_13
    const-string p0, "(The stack was empty)"

    invoke-virtual {p2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_e

    :cond_14
    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :goto_d
    sget-object p1, Lfreemarker/core/Environment;->u0:Lpq5;

    const-string p2, "Failed to print FTL stack trace"

    invoke-virtual {p1, p2, p0}, Lpq5;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    :goto_e
    return-void
.end method

.method public static H0(Lifa;)Lfreemarker/core/e1;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    instance-of v0, p0, Lfreemarker/core/e1;

    if-eqz v0, :cond_0

    check-cast p0, Lfreemarker/core/e1;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lifa;->U()Lifa;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static M1(Lfreemarker/core/Environment;)V
    .locals 1

    sget-object v0, Lfreemarker/core/Environment;->t0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
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

.method public static synthetic m0(Lfreemarker/core/Environment;)Lofa;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->J:Lofa;

    return-object p0
.end method

.method public static synthetic n0(Lfreemarker/core/Environment;)Lfreemarker/core/Environment$Namespace;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->e0:Lfreemarker/core/Environment$Namespace;

    return-object p0
.end method

.method public static o0(Lifa;Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-virtual {p0}, Lifa;->M()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lfreemarker/core/f1;->t(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "  ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lfreemarker/core/Environment;->H0(Lifa;)Lfreemarker/core/e1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lfreemarker/core/t1;->d:I

    iget p0, p0, Lfreemarker/core/t1;->c:I

    invoke-static {v0, v1, p0}, Lfreemarker/core/f1;->e(Lfreemarker/core/e1;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v0

    iget v1, p0, Lfreemarker/core/t1;->d:I

    iget p0, p0, Lfreemarker/core/t1;->c:I

    invoke-static {v0, v1, p0}, Lfreemarker/core/f1;->f(Lfreemarker/template/Template;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public static s1(Lifa;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0, v0}, Lfreemarker/core/Environment;->o0(Lifa;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static y0()Lfreemarker/core/Environment;
    .locals 1

    sget-object v0, Lfreemarker/core/Environment;->t0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Environment;

    return-object v0
.end method

.method public static z1(Ljava/lang/Class;)Z
    .locals 3

    sget-object v0, Lfreemarker/core/Environment;->A0:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lfreemarker/core/Environment;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->A0:Ljava/lang/Class;

    :cond_0
    if-eq p0, v0, :cond_7

    sget-object v0, Lfreemarker/core/Environment;->B0:Ljava/lang/Class;

    const-string v1, "java.sql.Date"

    if-nez v0, :cond_1

    invoke-static {v1}, Lfreemarker/core/Environment;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->B0:Ljava/lang/Class;

    :cond_1
    if-eq p0, v0, :cond_6

    sget-object v0, Lfreemarker/core/Environment;->C0:Ljava/lang/Class;

    const-string v2, "java.sql.Time"

    if-nez v0, :cond_2

    invoke-static {v2}, Lfreemarker/core/Environment;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->C0:Ljava/lang/Class;

    :cond_2
    if-eq p0, v0, :cond_6

    sget-object v0, Lfreemarker/core/Environment;->D0:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "java.sql.Timestamp"

    invoke-static {v0}, Lfreemarker/core/Environment;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->D0:Ljava/lang/Class;

    :cond_3
    if-eq p0, v0, :cond_7

    sget-object v0, Lfreemarker/core/Environment;->B0:Ljava/lang/Class;

    if-nez v0, :cond_4

    invoke-static {v1}, Lfreemarker/core/Environment;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->B0:Ljava/lang/Class;

    :cond_4
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lfreemarker/core/Environment;->C0:Ljava/lang/Class;

    if-nez v0, :cond_5

    invoke-static {v2}, Lfreemarker/core/Environment;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->C0:Ljava/lang/Class;

    :cond_5
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    const/4 p0, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A0()Lfreemarker/core/Environment$Namespace;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    return-object p0
.end method

.method public final A1(Lgga;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, " and namespace "

    :goto_0
    move-object v2, p0

    move-object v3, p2

    goto :goto_1

    :cond_0
    const-string p0, " and no namespace"

    goto :goto_0

    :cond_1
    const-string p2, ""

    move-object v2, p2

    move-object v3, v2

    :goto_1
    new-instance v1, Lk0d;

    invoke-interface {p1}, Lgga;->d()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string v4, ", and there is no fallback handler called @"

    const-string v6, " either."

    const-string v0, "No macro or directive is defined for node named "

    move-object v5, p3

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public B0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/Environment;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/Environment;->L:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    const-string v1, ".error is not available outside of a #recover block"

    invoke-direct {v0, p0, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw v0
.end method

.method public C0()Lfreemarker/template/Template;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Environment;->U0()Lfreemarker/template/Template;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/t1;

    invoke-virtual {p0}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public D0()Lgga;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->l0:Lgga;

    return-object p0
.end method

.method public final D1()V
    .locals 1

    iget-object p0, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public E0()Lofa;
    .locals 2

    new-instance v0, Ljb3;

    invoke-direct {v0, p0}, Ljb3;-><init>(Lfreemarker/core/Environment;)V

    iget-object v1, p0, Lfreemarker/core/Environment;->J:Lofa;

    instance-of v1, v1, Lpfa;

    if-eqz v1, :cond_0

    new-instance v1, Lkb3;

    invoke-direct {v1, p0, v0}, Lkb3;-><init>(Lfreemarker/core/Environment;Lofa;)V

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final E1()V
    .locals 1

    iget-object p0, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public F0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Template;->v0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public F1()V
    .locals 3

    sget-object v0, Lfreemarker/core/Environment;->t0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/Environment;->p0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p0}, Lfreemarker/core/Configurable;->d(Lfreemarker/core/Environment;)V

    invoke-virtual {p0}, Lfreemarker/core/Environment;->c1()Lfreemarker/template/Template;

    move-result-object v2

    invoke-virtual {v2}, Lfreemarker/template/Template;->C0()Lifa;

    move-result-object v2

    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->X1(Lifa;)V

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lfreemarker/core/Environment;->p0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lfreemarker/core/Environment;->p0()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    sget-object v0, Lfreemarker/core/Environment;->t0:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw p0
.end method

.method public G0()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lfreemarker/core/Environment;->r0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->q0:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->q0:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfreemarker/core/Environment;->r0:Z

    :cond_1
    iget-object p0, p0, Lfreemarker/core/Environment;->q0:Ljava/lang/String;

    return-object p0
.end method

.method public final G1(Lifa;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final H1(Lpn5;)V
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public I0()Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/Environment;->s0:Z

    return p0
.end method

.method public I1(Lgga;Lnga;)V
    .locals 2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Environment;->D0()Lgga;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    const-string p1, "The target node of recursion is missing or null."

    invoke-direct {p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Lgga;->k()Lnga;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lnga;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-interface {p1, v0}, Lnga;->get(I)Lzfa;

    move-result-object v1

    check-cast v1, Lgga;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1, p2}, Lfreemarker/core/Environment;->v1(Lgga;Lnga;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public J0()Lfreemarker/core/Environment$Namespace;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->e0:Lfreemarker/core/Environment$Namespace;

    return-object p0
.end method

.method public J1(Lifa;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iput-object v1, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->X1(Lifa;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    throw p1
.end method

.method public K0(Ljava/lang/String;)Lzfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment;->e0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/Environment;->J:Lofa;

    invoke-interface {v0, p1}, Lofa;->get(Ljava/lang/String;)Lzfa;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object p0

    invoke-virtual {p0, p1}, Lxe1;->I0(Ljava/lang/String;)Lzfa;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public K1(Lifa;)V
    .locals 1

    iget-object p0, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public L0()Lofa;
    .locals 1

    new-instance v0, Lfreemarker/core/o0;

    invoke-direct {v0, p0}, Lfreemarker/core/o0;-><init>(Lfreemarker/core/Environment;)V

    return-object v0
.end method

.method public final L1(Lifa;)Lifa;
    .locals 1

    iget-object p0, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lifa;

    return-object p0
.end method

.method public M0()Lfreemarker/template/utility/DateUtil$b;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment;->X:Lfreemarker/template/utility/DateUtil$b;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/template/utility/DateUtil$d;

    invoke-direct {v0}, Lfreemarker/template/utility/DateUtil$d;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->X:Lfreemarker/template/utility/DateUtil$b;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Environment;->X:Lfreemarker/template/utility/DateUtil$b;

    return-object p0
.end method

.method public N0()[Lifa;
    .locals 6

    iget-object v0, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v4, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lifa;

    if-eq v2, v0, :cond_0

    invoke-virtual {v4}, Lifa;->b0()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-array v2, v3, [Lifa;

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ge v1, v0, :cond_6

    iget-object v4, p0, Lfreemarker/core/Environment;->K:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lifa;

    if-eq v1, v0, :cond_4

    invoke-virtual {v4}, Lifa;->b0()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    add-int/lit8 v5, v3, -0x1

    aput-object v4, v2, v3

    move v3, v5

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method public N1(Z)Z
    .locals 1

    iget-boolean v0, p0, Lfreemarker/core/Environment;->s0:Z

    iput-boolean p1, p0, Lfreemarker/core/Environment;->s0:Z

    return v0
.end method

.method public O0()Ljava/util/Set;
    .locals 3

    invoke-virtual {p0}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object v0

    invoke-virtual {v0}, Lxe1;->J0()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/Environment;->J:Lofa;

    instance-of v2, v1, Lpfa;

    if-eqz v2, :cond_0

    check-cast v1, Lpfa;

    invoke-interface {v1}, Lpfa;->keys()Lbfa;

    move-result-object v1

    invoke-interface {v1}, Lbfa;->iterator()Lbga;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Lbga;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lbga;->next()Lzfa;

    move-result-object v2

    check-cast v2, Lmga;

    invoke-interface {v2}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lfreemarker/core/Environment;->e0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v1}, Lfreemarker/template/SimpleHash;->keys()Lbfa;

    move-result-object v1

    invoke-interface {v1}, Lbfa;->iterator()Lbga;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lbga;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lbga;->next()Lzfa;

    move-result-object v2

    check-cast v2, Lmga;

    invoke-interface {v2}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v1}, Lfreemarker/template/SimpleHash;->keys()Lbfa;

    move-result-object v1

    invoke-interface {v1}, Lbfa;->iterator()Lbga;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Lbga;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lbga;->next()Lzfa;

    move-result-object v2

    check-cast v2, Lmga;

    invoke-interface {v2}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lfreemarker/core/e1$a;->a()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v1, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_4

    iget-object v2, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpn5;

    invoke-interface {v2}, Lpn5;->a()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method public O1(Ljava/lang/String;Lzfa;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->e0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0, p1, p2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public P0()Lzfa;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->j0:Lzfa;

    return-object p0
.end method

.method public P1(Lzfa;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/Environment;->j0:Lzfa;

    return-void
.end method

.method public Q0()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    return-object p0
.end method

.method public Q1(Ljava/lang/String;Lzfa;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/e1$a;->g(Ljava/lang/String;Lzfa;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not executing macro body"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public R0(Ljava/lang/String;)Lzfa;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpn5;

    invoke-interface {v1, p1}, Lpn5;->b(Ljava/lang/String;)Lzfa;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lfreemarker/core/e1$a;->b(Ljava/lang/String;)Lzfa;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final R1(Lfreemarker/core/e1$a;Lfreemarker/core/e1;Ljava/util/Map;Ljava/util/List;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/e1;->p0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Macro "

    const-string v5, "Function "

    const/4 v6, 0x0

    if-eqz p3, :cond_5

    if-eqz v3, :cond_0

    new-instance v2, Lfreemarker/template/SimpleHash;

    invoke-direct {v2, v6}, Lfreemarker/template/SimpleHash;-><init>(Lgc7;)V

    invoke-virtual {v0, v3, v2}, Lfreemarker/core/e1$a;->g(Ljava/lang/String;Lzfa;)V

    move-object v6, v2

    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v9, p2

    invoke-virtual {v9, v8}, Lfreemarker/core/e1;->r0(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/e1;->s0()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v4, v5

    :cond_2
    new-instance v2, Lk0d;

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/e1;->q0()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lk0d;

    invoke-direct {v3, v8}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string v5, "."

    const-string v6, " has no parameter with name "

    filled-new-array {v4, v2, v6, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/t0;

    invoke-virtual {v7, v1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v7

    if-eqz v10, :cond_4

    invoke-virtual {v0, v8, v7}, Lfreemarker/core/e1$a;->g(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v6, v8, v7}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    move-object/from16 v9, p2

    if-eqz v2, :cond_a

    if-eqz v3, :cond_6

    new-instance v7, Lfreemarker/template/SimpleSequence;

    invoke-direct {v7, v6}, Lfreemarker/template/SimpleSequence;-><init>(Lgc7;)V

    invoke-virtual {v0, v3, v7}, Lfreemarker/core/e1$a;->g(Ljava/lang/String;Lzfa;)V

    move-object v6, v7

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/e1;->o0()[Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v8

    array-length v10, v7

    if-ge v10, v8, :cond_8

    if-nez v3, :cond_8

    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/e1;->s0()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v4, v5

    :cond_7
    new-instance v10, Lk0d;

    invoke-virtual/range {p2 .. p2}, Lfreemarker/core/e1;->q0()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance v12, Ln0d;

    array-length v2, v7

    invoke-direct {v12, v2}, Ln0d;-><init>(I)V

    new-instance v14, Ln0d;

    invoke-direct {v14, v8}, Ln0d;-><init>(I)V

    const-string v15, "."

    const-string v11, " only accepts "

    const-string v13, " parameters, but got "

    move-object v9, v4

    filled-new-array/range {v9 .. v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_a

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/t0;

    invoke-virtual {v4, v1}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v4

    :try_start_0
    array-length v5, v7

    if-ge v3, v5, :cond_9

    aget-object v5, v7, v3

    invoke-virtual {v0, v5, v4}, Lfreemarker/core/e1$a;->g(Ljava/lang/String;Lzfa;)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_9
    invoke-virtual {v6, v4}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :goto_4
    new-instance v2, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {v2, v0, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    throw v2

    :cond_a
    return-void
.end method

.method public S0(Lfreemarker/core/e1;)Lfreemarker/core/Environment$Namespace;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->k0:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/Environment$Namespace;

    return-object p0
.end method

.method public S1(Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    return-void
.end method

.method public T(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->l()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->T(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    add-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public T0()Lfreemarker/core/Environment$Namespace;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->c0:Lfreemarker/core/Environment$Namespace;

    return-object p0
.end method

.method public T1(Ljava/lang/String;Lzfa;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0, p1, p2}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->m()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->U(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    add-int/lit8 v1, p1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public U0()Lfreemarker/template/Template;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->c0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object p0

    return-object p0
.end method

.method public U1(Ljava/lang/Class;)Z
    .locals 1

    sget-object v0, Lfreemarker/core/Environment;->A0:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lfreemarker/core/Environment;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Environment;->A0:Ljava/lang/Class;

    :cond_0
    if-eq p1, v0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Environment;->y1()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lfreemarker/core/Environment;->z1(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public V(Ljava/util/Locale;)V
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->V(Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Lfreemarker/core/Environment;->N:Ljava/util/Map;

    iput-object p1, p0, Lfreemarker/core/Environment;->M:Ljava/text/NumberFormat;

    iget-object v0, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ldfa;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    aput-object p1, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfreemarker/core/Environment;->P:Lqrc;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lzv4;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lfreemarker/core/Environment;->P:Lqrc;

    :cond_2
    iget-object v0, p0, Lfreemarker/core/Environment;->Q:Lqrc;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lzv4;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lfreemarker/core/Environment;->Q:Lqrc;

    :cond_3
    iget-object v0, p0, Lfreemarker/core/Environment;->R:Lbw4;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lzv4;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lfreemarker/core/Environment;->R:Lbw4;

    :cond_4
    iget-object v0, p0, Lfreemarker/core/Environment;->S:Lbw4;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lzv4;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lfreemarker/core/Environment;->S:Lbw4;

    :cond_5
    iget-object v0, p0, Lfreemarker/core/Environment;->T:Lfreemarker/core/a1;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lfreemarker/core/a1;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Lfreemarker/core/Environment;->T:Lfreemarker/core/a1;

    :cond_6
    iget-object v0, p0, Lfreemarker/core/Environment;->U:Lfreemarker/core/a1;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lfreemarker/core/a1;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object p1, p0, Lfreemarker/core/Environment;->U:Lfreemarker/core/a1;

    :cond_7
    iput-object p1, p0, Lfreemarker/core/Environment;->Y:Ljava/text/Collator;

    :cond_8
    return-void
.end method

.method public V0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0, p1}, Lfreemarker/template/Template;->z0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final V1(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Environment;->y1()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public W0(Lgga;)Lzfa;
    .locals 3

    invoke-interface {p1}, Lgga;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lgga;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lfreemarker/core/Environment;->Y0(Ljava/lang/String;Ljava/lang/String;I)Lzfa;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lgga;->i()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "default"

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lfreemarker/core/Environment;->Y0(Ljava/lang/String;Ljava/lang/String;I)Lzfa;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "Node name is null."

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p1
.end method

.method public W1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object p0

    invoke-virtual {p0}, Lxe1;->R0()Lfga;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lb0d;->a(Lfga;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final X0(Lfreemarker/core/Environment$Namespace;Ljava/lang/String;Ljava/lang/String;)Lzfa;
    .locals 3

    const/4 p0, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p1, p2}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object p1

    instance-of p2, p1, Lfreemarker/core/e1;

    if-nez p2, :cond_0

    instance-of p2, p1, Lpga;

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object p0, p1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {v0, p3}, Lfreemarker/template/Template;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object p1

    instance-of p2, p1, Lfreemarker/core/e1;

    if-nez p2, :cond_0

    instance-of p2, p1, Lpga;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "N:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object v1

    instance-of v2, v1, Lfreemarker/core/e1;

    if-nez v2, :cond_5

    instance-of v2, v1, Lpga;

    if-nez v2, :cond_5

    :cond_4
    move-object v1, p0

    :cond_5
    invoke-virtual {v0}, Lfreemarker/template/Template;->v0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "D:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object v1

    instance-of p3, v1, Lfreemarker/core/e1;

    if-nez p3, :cond_6

    instance-of p3, v1, Lpga;

    if-nez p3, :cond_6

    move-object v1, p0

    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {p1, p2}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object p1

    instance-of p2, p1, Lfreemarker/core/e1;

    if-nez p2, :cond_0

    instance-of p2, p1, Lpga;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_7
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public X1(Lifa;)V
    .locals 0

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->G1(Lifa;)V

    :try_start_0
    invoke-virtual {p1, p0}, Lifa;->F(Lfreemarker/core/Environment;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/Environment;->D1()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->n1(Lfreemarker/template/TemplateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lfreemarker/core/Environment;->D1()V

    throw p1
.end method

.method public Y(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->Y(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lfreemarker/core/Environment;->M:Ljava/text/NumberFormat;

    return-void
.end method

.method public final Y0(Ljava/lang/String;Ljava/lang/String;I)Lzfa;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lfreemarker/core/Environment;->m0:Lnga;

    invoke-interface {v1}, Lnga;->size()I

    move-result v1

    if-ge p3, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lfreemarker/core/Environment;->m0:Lnga;

    invoke-interface {v0, p3}, Lnga;->get(I)Lzfa;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Environment$Namespace;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0, p1, p2}, Lfreemarker/core/Environment;->X0(Lfreemarker/core/Environment$Namespace;Ljava/lang/String;Ljava/lang/String;)Lzfa;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_0
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string p2, "A \"using\" clause should contain a sequence of namespaces or strings that indicate the location of importable macro libraries."

    invoke-direct {p1, p0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lfreemarker/core/Environment;->n0:I

    iput-object p1, p0, Lfreemarker/core/Environment;->o0:Ljava/lang/String;

    iput-object p2, p0, Lfreemarker/core/Environment;->p0:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public Y1(Lifa;Lpga;Ljava/util/Map;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    invoke-interface {p2, v0, p3}, Lpga;->h(Ljava/io/Writer;Ljava/util/Map;)Ljava/io/Writer;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Lfreemarker/core/Environment;->z0:Ljava/io/Writer;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    iget-object p3, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    iput-object p2, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->a2(Lifa;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catch Lfreemarker/template/TemplateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_3
    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catchall_2
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    throw p1

    :catch_4
    move-exception p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    :try_start_4
    iput-object p3, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    throw p1

    :cond_1
    :goto_2
    iput-object p3, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Lfreemarker/template/TemplateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->n1(Lfreemarker/template/TemplateException;)V

    :goto_4
    return-void
.end method

.method public Z0(Ljava/lang/String;)Ljava/text/NumberFormat;
    .locals 5

    iget-object v0, p0, Lfreemarker/core/Environment;->N:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->N:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lfreemarker/core/Environment;->N:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lfreemarker/core/Environment;->w0:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Lfreemarker/core/Environment$b;

    invoke-direct {v2, p1, v1}, Lfreemarker/core/Environment$b;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/NumberFormat;

    if-nez v3, :cond_6

    const-string v3, "number"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    const-string v3, "currency"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v3, "percent"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Ljava/text/NumberFormat;->getPercentInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v1, "computer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lfreemarker/core/Environment;->u0()Ljava/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/text/DecimalFormat;

    new-instance v3, Ljava/text/DecimalFormatSymbols;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, p1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    goto :goto_0

    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/NumberFormat;

    iget-object p0, p0, Lfreemarker/core/Environment;->N:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public Z1(Lifa;Lxo8;)V
    .locals 6

    iget-object v0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    iput-object v1, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->N1(Z)Z

    move-result v2

    iget-boolean v3, p0, Lfreemarker/core/Environment;->h0:Z

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lfreemarker/core/Environment;->h0:Z

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->a2(Lifa;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v3, p0, Lfreemarker/core/Environment;->h0:Z

    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->N1(Z)Z

    iput-object v0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    const/4 v0, 0x0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1

    :goto_0
    iput-boolean v3, p0, Lfreemarker/core/Environment;->h0:Z

    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->N1(Z)Z

    iput-object v0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    throw p1

    :goto_1
    iput-boolean v3, p0, Lfreemarker/core/Environment;->h0:Z

    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->N1(Z)Z

    iput-object v0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_1

    sget-object v1, Lfreemarker/core/Environment;->v0:Lpq5;

    invoke-virtual {v1}, Lpq5;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Error in attempt block "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lfreemarker/core/t1;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lpq5;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :try_start_1
    iget-object p1, p0, Lfreemarker/core/Environment;->L:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lfreemarker/core/Environment;->X1(Lifa;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lfreemarker/core/Environment;->L:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lfreemarker/core/Environment;->L:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v4

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    throw p1

    :cond_1
    iget-object p0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfreemarker/core/Environment;->r0:Z

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->a0(Ljava/lang/String;)V

    return-void
.end method

.method public a1()Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    return-object p0
.end method

.method public a2(Lifa;)V
    .locals 1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->L1(Lifa;)Lifa;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1, p0}, Lifa;->F(Lfreemarker/core/Environment;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, v0}, Lfreemarker/core/Environment;->L1(Lifa;)Lifa;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->n1(Lfreemarker/template/TemplateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0, v0}, Lfreemarker/core/Environment;->L1(Lifa;)Lifa;

    throw p1
.end method

.method public b1(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0, p1}, Lfreemarker/template/Template;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b2(Lfreemarker/core/z0$a;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->H1(Lpn5;)V

    :try_start_0
    invoke-virtual {p1, p0}, Lfreemarker/core/z0$a;->c(Lfreemarker/core/Environment;)Z

    move-result p1
    :try_end_0
    .catch Lfreemarker/template/TemplateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lfreemarker/core/Environment;->E1()V

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->n1(Lfreemarker/template/TemplateException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lfreemarker/core/Environment;->E1()V

    const/4 p0, 0x1

    return p0

    :goto_0
    invoke-virtual {p0}, Lfreemarker/core/Environment;->E1()V

    throw p1
.end method

.method public c0(Ljava/util/TimeZone;)V
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->x()Ljava/util/TimeZone;

    move-result-object v0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->c0(Ljava/util/TimeZone;)V

    invoke-static {p1, v0}, Lfreemarker/core/Environment;->B1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    :goto_0
    const/16 v1, 0x10

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    aput-object v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lfreemarker/core/Environment;->Q:Lqrc;

    iput-object v0, p0, Lfreemarker/core/Environment;->S:Lbw4;

    iput-object v0, p0, Lfreemarker/core/Environment;->U:Lfreemarker/core/a1;

    iput-object v0, p0, Lfreemarker/core/Environment;->V:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method public c1()Lfreemarker/template/Template;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->w()Lfreemarker/core/Configurable;

    move-result-object p0

    check-cast p0, Lfreemarker/template/Template;

    return-object p0
.end method

.method public c2(Lfreemarker/core/e1;)V
    .locals 2

    iget-object v0, p0, Lfreemarker/core/Environment;->k0:Ljava/util/HashMap;

    iget-object v1, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p1}, Lfreemarker/core/e1;->q0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public d1()Lfreemarker/template/Template;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment;->g0:Lfreemarker/core/Configurable;

    check-cast v0, Lfreemarker/template/Template;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/Environment;->c1()Lfreemarker/template/Template;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e1(ILjava/lang/Class;Lfreemarker/core/t0;)Ldfa;
    .locals 1

    :try_start_0
    invoke-static {p2}, Lfreemarker/core/Environment;->z1(Ljava/lang/Class;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lfreemarker/core/Environment;->V1(Z)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lfreemarker/core/Environment;->g1(IZZLfreemarker/core/t0;)Ldfa;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p3, p0}, Lfreemarker/core/f1;->m(Lfreemarker/core/t0;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public f1(ILjava/lang/Class;Ljava/lang/String;Lfreemarker/core/t0;)Ldfa;
    .locals 6

    :try_start_0
    invoke-static {p2}, Lfreemarker/core/Environment;->z1(Ljava/lang/Class;)Z

    move-result v2

    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->V1(Z)Z

    move-result v3

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lfreemarker/core/Environment;->h1(IZZLjava/lang/String;Ljava/lang/String;)Ldfa;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p4, p0}, Lfreemarker/core/f1;->m(Lfreemarker/core/t0;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public g0(Lnfa;)V
    .locals 0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->g0(Lnfa;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lfreemarker/core/Environment;->i0:Ljava/lang/Throwable;

    return-void
.end method

.method public final g1(IZZLfreemarker/core/t0;)Ldfa;
    .locals 9

    if-eqz p1, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lfreemarker/core/Environment;->v0(IZZ)I

    move-result p4

    iget-object v0, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    if-nez v0, :cond_0

    const/16 v0, 0x10

    new-array v0, v0, [Ldfa;

    iput-object v0, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    :cond_0
    aget-object v1, v0, p4

    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "datetime_format"

    :goto_0
    move-object v7, v1

    move-object v8, v2

    goto :goto_1

    :cond_1
    new-instance p0, Lfreemarker/core/_TemplateModelException;

    new-instance p2, Ljava/lang/Integer;

    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(I)V

    const-string p1, "Invalid date type enum: "

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p0

    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "date_format"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->C()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time_format"

    goto :goto_0

    :goto_1
    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lfreemarker/core/Environment;->h1(IZZLjava/lang/String;Ljava/lang/String;)Ldfa;

    move-result-object v1

    aput-object v1, v0, p4

    :cond_4
    return-object v1

    :cond_5
    const/4 p0, 0x0

    invoke-static {p4, p0}, Lfreemarker/core/f1;->m(Lfreemarker/core/t0;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public h0(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->C()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->h0(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h1(IZZLjava/lang/String;Ljava/lang/String;)Ldfa;
    .locals 8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->x()Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->E()Ljava/util/TimeZone;

    move-result-object v1

    :goto_0
    const/16 v2, 0x73

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v0, v5, :cond_3

    invoke-virtual {p4, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x78

    if-ne v6, v7, :cond_3

    invoke-virtual {p4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_3

    if-eqz p3, :cond_1

    iget-object v0, p0, Lfreemarker/core/Environment;->Q:Lqrc;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lfreemarker/core/Environment;->P:Lqrc;

    :goto_1
    if-nez v0, :cond_9

    new-instance v0, Lqrc;

    invoke-direct {v0, v1}, Lqrc;-><init>(Ljava/util/TimeZone;)V

    if-eqz p3, :cond_2

    iput-object v0, p0, Lfreemarker/core/Environment;->Q:Lqrc;

    goto :goto_4

    :cond_2
    iput-object v0, p0, Lfreemarker/core/Environment;->P:Lqrc;

    goto :goto_4

    :cond_3
    if-le v0, v3, :cond_6

    invoke-virtual {p4, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x69

    if-ne v0, v6, :cond_6

    invoke-virtual {p4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_6

    if-eqz p3, :cond_4

    iget-object v0, p0, Lfreemarker/core/Environment;->S:Lbw4;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lfreemarker/core/Environment;->R:Lbw4;

    :goto_2
    if-nez v0, :cond_9

    new-instance v0, Lbw4;

    invoke-direct {v0, v1}, Lbw4;-><init>(Ljava/util/TimeZone;)V

    if-eqz p3, :cond_5

    iput-object v0, p0, Lfreemarker/core/Environment;->S:Lbw4;

    goto :goto_4

    :cond_5
    iput-object v0, p0, Lfreemarker/core/Environment;->R:Lbw4;

    goto :goto_4

    :cond_6
    if-eqz p3, :cond_7

    iget-object v0, p0, Lfreemarker/core/Environment;->U:Lfreemarker/core/a1;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lfreemarker/core/Environment;->T:Lfreemarker/core/a1;

    :goto_3
    if-nez v0, :cond_9

    new-instance v0, Lfreemarker/core/a1;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/a1;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    if-eqz p3, :cond_8

    iput-object v0, p0, Lfreemarker/core/Environment;->U:Lfreemarker/core/a1;

    goto :goto_4

    :cond_8
    iput-object v0, p0, Lfreemarker/core/Environment;->T:Lfreemarker/core/a1;

    :cond_9
    :goto_4
    :try_start_0
    invoke-virtual {v0, p1, p2, p4}, Lefa;->a(IZLjava/lang/String;)Ldfa;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/core/_TemplateModelException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p5, :cond_a

    const-string p3, "Malformed date/time format descriptor: "

    goto :goto_5

    :cond_a
    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "The value of the \""

    aput-object v0, p3, v4

    aput-object p5, p3, v5

    const-string p5, "\" FreeMarker configuration setting is a malformed date/time format descriptor: "

    aput-object p5, p3, v3

    :goto_5
    new-instance p5, Lk0d;

    invoke-direct {p5, p4}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p4, ". Reason given: "

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p3, p5, p4, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public i0(Ljava/util/TimeZone;)V
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->E()Ljava/util/TimeZone;

    move-result-object v0

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->i0(Ljava/util/TimeZone;)V

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    aput-object v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lfreemarker/core/Environment;->P:Lqrc;

    iput-object v0, p0, Lfreemarker/core/Environment;->R:Lbw4;

    iput-object v0, p0, Lfreemarker/core/Environment;->T:Lfreemarker/core/a1;

    iput-object v0, p0, Lfreemarker/core/Environment;->V:Ljava/lang/Boolean;

    :cond_1
    return-void
.end method

.method public i1(Ljava/lang/String;)Lfreemarker/template/Template;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lfreemarker/core/Environment;->j1(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/template/Template;

    move-result-object p0

    return-object p0
.end method

.method public j0(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfreemarker/core/Environment;->r0:Z

    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->j0(Ljava/lang/String;)V

    return-void
.end method

.method public j1(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/template/Template;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lfreemarker/core/Environment;->k1(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p0

    return-object p0
.end method

.method public k1(Ljava/lang/String;Ljava/lang/String;ZZ)Lfreemarker/template/Template;
    .locals 8

    invoke-virtual {p0}, Lfreemarker/core/Environment;->c1()Lfreemarker/template/Template;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lfreemarker/template/Template;->w0()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object p2

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Lxe1;->E0(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v5, p2

    invoke-virtual {v0}, Lfreemarker/template/Template;->u0()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v3

    move-object v2, p1

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lxe1;->O0(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p0

    return-object p0
.end method

.method public l1(Lfreemarker/core/t0;)Lpga;
    .locals 2

    invoke-virtual {p1, p0}, Lfreemarker/core/t0;->K(Lfreemarker/core/Environment;)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lpga;

    if-eqz v1, :cond_0

    check-cast v0, Lpga;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lfreemarker/core/x0;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object p0

    invoke-virtual {p1}, Lfreemarker/core/t1;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lxe1;->I0(Ljava/lang/String;)Lzfa;

    move-result-object p0

    instance-of p1, p0, Lpga;

    if-eqz p1, :cond_1

    move-object v0, p0

    check-cast v0, Lpga;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public m1(Ljava/lang/String;)Lzfa;
    .locals 1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->R0(Ljava/lang/String;)Lzfa;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, p1}, Lfreemarker/template/SimpleHash;->get(Ljava/lang/String;)Lzfa;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->K0(Ljava/lang/String;)Lzfa;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final n1(Lfreemarker/template/TemplateException;)V
    .locals 2

    iget-object v0, p0, Lfreemarker/core/Environment;->i0:Ljava/lang/Throwable;

    if-eq v0, p1, :cond_3

    iput-object p1, p0, Lfreemarker/core/Environment;->i0:Ljava/lang/Throwable;

    sget-object v0, Lfreemarker/core/Environment;->u0:Lpq5;

    invoke-virtual {v0}, Lpq5;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Environment;->x1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "Error executing FreeMarker template"

    invoke-virtual {v0, v1, p1}, Lpq5;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    instance-of v0, p1, Lfreemarker/core/StopException;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->B()Lnfa;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    invoke-interface {v0, p1, p0, v1}, Lnfa;->a(Lfreemarker/template/TemplateException;Lfreemarker/core/Environment;Ljava/io/Writer;)V

    return-void

    :cond_2
    throw p1

    :cond_3
    throw p1
.end method

.method public o1(Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;
    .locals 4

    iget-object v0, p0, Lfreemarker/core/Environment;->f0:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/core/Environment;->f0:Ljava/util/HashMap;

    :cond_0
    invoke-virtual {p1}, Lfreemarker/template/Template;->y0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/Environment;->f0:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/Environment$Namespace;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_3

    invoke-virtual {p0, p2, v1}, Lfreemarker/core/Environment;->T1(Ljava/lang/String;Lzfa;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lfreemarker/core/Environment$Namespace;

    invoke-direct {v1, p0, p1}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    if-eqz p2, :cond_2

    iget-object v2, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v2, p2, v1}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    iget-object v3, p0, Lfreemarker/core/Environment;->c0:Lfreemarker/core/Environment$Namespace;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lfreemarker/core/Environment;->e0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v2, p2, v1}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object p2, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    iput-object v1, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    iget-object v2, p0, Lfreemarker/core/Environment;->f0:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    sget-object v2, Lj37;->b:Lj37;

    iput-object v2, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->r1(Lfreemarker/template/Template;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    iput-object p2, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    :cond_3
    :goto_0
    iget-object p0, p0, Lfreemarker/core/Environment;->f0:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/core/Environment$Namespace;

    return-object p0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    iput-object p2, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    throw p1
.end method

.method public final p0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lfreemarker/core/Environment;->N:Ljava/util/Map;

    iput-object v0, p0, Lfreemarker/core/Environment;->M:Ljava/text/NumberFormat;

    iput-object v0, p0, Lfreemarker/core/Environment;->O:[Ldfa;

    iput-object v0, p0, Lfreemarker/core/Environment;->Q:Lqrc;

    iput-object v0, p0, Lfreemarker/core/Environment;->P:Lqrc;

    iput-object v0, p0, Lfreemarker/core/Environment;->S:Lbw4;

    iput-object v0, p0, Lfreemarker/core/Environment;->R:Lbw4;

    iput-object v0, p0, Lfreemarker/core/Environment;->U:Lfreemarker/core/a1;

    iput-object v0, p0, Lfreemarker/core/Environment;->T:Lfreemarker/core/a1;

    iput-object v0, p0, Lfreemarker/core/Environment;->Y:Ljava/text/Collator;

    iput-object v0, p0, Lfreemarker/core/Environment;->q0:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfreemarker/core/Environment;->r0:Z

    return-void
.end method

.method public p1(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;
    .locals 0

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->i1(Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Environment;->o1(Lfreemarker/template/Template;Ljava/lang/String;)Lfreemarker/core/Environment$Namespace;

    move-result-object p0

    return-object p0
.end method

.method public q0()V
    .locals 8

    iget-object v0, p0, Lfreemarker/core/Environment;->o0:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/Environment;->p0:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/Environment;->n0:I

    invoke-virtual {p0, v0, v1, v2}, Lfreemarker/core/Environment;->Y0(Ljava/lang/String;Ljava/lang/String;I)Lzfa;

    move-result-object v0

    instance-of v1, v0, Lfreemarker/core/e1;

    if-eqz v1, :cond_0

    move-object v3, v0

    check-cast v3, Lfreemarker/core/e1;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lfreemarker/core/Environment;->t1(Lfreemarker/core/e1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lifa;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lpga;

    if-eqz v1, :cond_1

    check-cast v0, Lpga;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lfreemarker/core/Environment;->Y1(Lifa;Lpga;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public q1(Lfreemarker/template/Template;)V
    .locals 1

    invoke-virtual {p1}, Lfreemarker/template/Template;->x0()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/e1;

    invoke-virtual {p0, v0}, Lfreemarker/core/Environment;->c2(Lfreemarker/core/e1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r0(Lffa;Lfreemarker/core/t0;)Ljava/lang/String;
    .locals 3

    invoke-static {p1, p2}, Lfreemarker/core/q0;->f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/core/Environment;->z1(Ljava/lang/Class;)Z

    move-result v0

    invoke-interface {p1}, Lffa;->j()I

    move-result v1

    invoke-virtual {p0, v0}, Lfreemarker/core/Environment;->V1(Z)Z

    move-result v2

    invoke-virtual {p0, v1, v0, v2, p2}, Lfreemarker/core/Environment;->g1(IZZLfreemarker/core/t0;)Ldfa;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldfa;->a(Lffa;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfreemarker/core/UnformattableDateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {p2, p0}, Lfreemarker/core/f1;->l(Lfreemarker/core/t0;Lfreemarker/core/UnformattableDateException;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p2, p0}, Lfreemarker/core/f1;->m(Lfreemarker/core/t0;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public r1(Lfreemarker/template/Template;)V
    .locals 2

    invoke-virtual {p0}, Lfreemarker/core/Environment;->w1()Z

    move-result v0

    invoke-virtual {p0}, Lfreemarker/core/Environment;->c1()Lfreemarker/template/Template;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->b0(Lfreemarker/core/Configurable;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lfreemarker/core/Environment;->g0:Lfreemarker/core/Configurable;

    :goto_0
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->q1(Lfreemarker/template/Template;)V

    :try_start_0
    invoke-virtual {p1}, Lfreemarker/template/Template;->C0()Lifa;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->X1(Lifa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lfreemarker/core/Configurable;->b0(Lfreemarker/core/Configurable;)V

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lfreemarker/core/Environment;->g0:Lfreemarker/core/Configurable;

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lfreemarker/core/Configurable;->b0(Lfreemarker/core/Configurable;)V

    goto :goto_2

    :cond_2
    iput-object v1, p0, Lfreemarker/core/Environment;->g0:Lfreemarker/core/Configurable;

    :goto_2
    throw p1
.end method

.method public s0(Lffa;Ljava/lang/String;Lfreemarker/core/t0;)Ljava/lang/String;
    .locals 7

    invoke-static {p1, p3}, Lfreemarker/core/q0;->f(Lffa;Lfreemarker/core/t0;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/core/Environment;->z1(Ljava/lang/Class;)Z

    move-result v3

    :try_start_0
    invoke-interface {p1}, Lffa;->j()I

    move-result v2

    invoke-virtual {p0, v3}, Lfreemarker/core/Environment;->V1(Z)Z

    move-result v4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lfreemarker/core/Environment;->h1(IZZLjava/lang/String;Ljava/lang/String;)Ldfa;

    move-result-object p0

    invoke-virtual {p0, p1}, Ldfa;->a(Lffa;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lfreemarker/core/UnformattableDateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-static {p3, p0}, Lfreemarker/core/f1;->l(Lfreemarker/core/t0;Lfreemarker/core/UnformattableDateException;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0

    :goto_1
    invoke-static {p3, p0}, Lfreemarker/core/f1;->m(Lfreemarker/core/t0;Lfreemarker/core/UnknownDateTypeFormattingUnsupportedException;)Lfreemarker/core/_TemplateModelException;

    move-result-object p0

    throw p0
.end method

.method public t0(Ljava/lang/Number;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment;->M:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Environment;->Z0(Ljava/lang/String;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->M:Ljava/text/NumberFormat;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Environment;->M:Ljava/text/NumberFormat;

    invoke-virtual {p0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public t1(Lfreemarker/core/e1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lifa;)V
    .locals 1

    sget-object v0, Lfreemarker/core/e1;->q:Lfreemarker/core/e1;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->G1(Lifa;)V

    :try_start_0
    new-instance v0, Lfreemarker/core/e1$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1, p0, p5, p4}, Lfreemarker/core/e1$a;-><init>(Lfreemarker/core/e1;Lfreemarker/core/Environment;Lifa;Ljava/util/List;)V

    invoke-virtual {p0, v0, p1, p2, p3}, Lfreemarker/core/Environment;->R1(Lfreemarker/core/e1$a;Lfreemarker/core/e1;Ljava/util/Map;Ljava/util/List;)V

    iget-object p2, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    iput-object v0, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    iget-object p3, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    const/4 p4, 0x0

    iput-object p4, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    iget-object p4, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    iget-object p5, p0, Lfreemarker/core/Environment;->k0:Ljava/util/HashMap;

    invoke-virtual {p5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/core/Environment$Namespace;

    iput-object p1, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p0}, Lfreemarker/core/e1$a;->e(Lfreemarker/core/Environment;)V
    :try_end_1
    .catch Lfreemarker/core/ReturnInstruction$Return; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lfreemarker/template/TemplateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-object p2, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    iput-object p3, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    :goto_0
    iput-object p4, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->n1(Lfreemarker/template/TemplateException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object p2, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    iput-object p3, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    goto :goto_0

    :goto_1
    iput-object p2, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    iput-object p3, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    iput-object p4, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    throw p1

    :catch_1
    iput-object p2, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    iput-object p3, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lfreemarker/core/Environment;->D1()V

    return-void

    :goto_3
    invoke-virtual {p0}, Lfreemarker/core/Environment;->D1()V

    throw p1
.end method

.method public u0()Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment;->W:Ljava/text/NumberFormat;

    if-nez v0, :cond_0

    sget-object v0, Lfreemarker/core/Environment;->x0:Ljava/text/DecimalFormat;

    invoke-virtual {v0}, Ljava/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DecimalFormat;

    iput-object v0, p0, Lfreemarker/core/Environment;->W:Ljava/text/NumberFormat;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Environment;->W:Ljava/text/NumberFormat;

    return-object p0
.end method

.method public u1(Lfreemarker/core/h$a;)V
    .locals 6

    invoke-virtual {p0}, Lfreemarker/core/Environment;->z0()Lfreemarker/core/e1$a;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    iget-object v2, v0, Lfreemarker/core/e1$a;->b:Lifa;

    if-eqz v2, :cond_6

    iget-object v3, v0, Lfreemarker/core/e1$a;->f:Lfreemarker/core/e1$a;

    iput-object v3, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    iget-object v3, v0, Lfreemarker/core/e1$a;->c:Lfreemarker/core/Environment$Namespace;

    iput-object v3, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->w1()Z

    move-result v3

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->w()Lfreemarker/core/Configurable;

    move-result-object v4

    if-eqz v3, :cond_0

    iget-object v5, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v5}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v5

    invoke-virtual {p0, v5}, Lfreemarker/core/Configurable;->b0(Lfreemarker/core/Configurable;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v5}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v5

    iput-object v5, p0, Lfreemarker/core/Environment;->g0:Lfreemarker/core/Configurable;

    :goto_0
    iget-object v5, v0, Lfreemarker/core/e1$a;->e:Ljava/util/ArrayList;

    iput-object v5, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    iget-object v5, v0, Lfreemarker/core/e1$a;->d:Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->H1(Lpn5;)V

    :cond_1
    :try_start_0
    invoke-virtual {p0, v2}, Lfreemarker/core/Environment;->X1(Lifa;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, v0, Lfreemarker/core/e1$a;->d:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/Environment;->E1()V

    :cond_2
    iput-object v0, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    invoke-virtual {v0}, Lfreemarker/core/e1$a;->d()Lfreemarker/core/e1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->S0(Lfreemarker/core/e1;)Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    if-eqz v3, :cond_3

    invoke-virtual {p0, v4}, Lfreemarker/core/Configurable;->b0(Lfreemarker/core/Configurable;)V

    goto :goto_1

    :cond_3
    iput-object v4, p0, Lfreemarker/core/Environment;->g0:Lfreemarker/core/Configurable;

    :goto_1
    iput-object v1, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    goto :goto_3

    :catchall_0
    move-exception p1

    iget-object v2, v0, Lfreemarker/core/e1$a;->d:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lfreemarker/core/Environment;->E1()V

    :cond_4
    iput-object v0, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    invoke-virtual {v0}, Lfreemarker/core/e1$a;->d()Lfreemarker/core/e1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Environment;->S0(Lfreemarker/core/e1;)Lfreemarker/core/Environment$Namespace;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v4}, Lfreemarker/core/Configurable;->b0(Lfreemarker/core/Configurable;)V

    goto :goto_2

    :cond_5
    iput-object v4, p0, Lfreemarker/core/Environment;->g0:Lfreemarker/core/Configurable;

    :goto_2
    iput-object v1, p0, Lfreemarker/core/Environment;->b0:Ljava/util/ArrayList;

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public final v0(IZZ)I
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    move p2, p0

    :goto_0
    add-int/2addr p1, p2

    if-eqz p3, :cond_1

    const/16 p0, 0x8

    :cond_1
    add-int/2addr p1, p0

    return p1
.end method

.method public v1(Lgga;Lnga;)V
    .locals 13

    iget-object v0, p0, Lfreemarker/core/Environment;->m0:Lnga;

    if-nez v0, :cond_0

    new-instance v0, Lfreemarker/template/SimpleSequence;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    iget-object v1, p0, Lfreemarker/core/Environment;->d0:Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v0, v1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    iput-object v0, p0, Lfreemarker/core/Environment;->m0:Lnga;

    :cond_0
    iget v0, p0, Lfreemarker/core/Environment;->n0:I

    iget-object v1, p0, Lfreemarker/core/Environment;->o0:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/core/Environment;->p0:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/Environment;->m0:Lnga;

    iget-object v4, p0, Lfreemarker/core/Environment;->l0:Lgga;

    iput-object p1, p0, Lfreemarker/core/Environment;->l0:Lgga;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lfreemarker/core/Environment;->m0:Lnga;

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lfreemarker/core/Environment;->W0(Lgga;)Lzfa;

    move-result-object v5

    instance-of v6, v5, Lfreemarker/core/e1;

    if-eqz v6, :cond_2

    move-object v8, v5

    check-cast v8, Lfreemarker/core/e1;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lfreemarker/core/Environment;->t1(Lfreemarker/core/e1;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lifa;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_2
    instance-of v6, v5, Lpga;

    if-eqz v6, :cond_3

    check-cast v5, Lpga;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v5, p1}, Lfreemarker/core/Environment;->Y1(Lifa;Lpga;Ljava/util/Map;)V

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lgga;->i()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    instance-of v6, p1, Lmga;

    if-eqz v6, :cond_4

    iget-object p2, p0, Lfreemarker/core/Environment;->Z:Ljava/io/Writer;

    check-cast p1, Lmga;

    invoke-interface {p1}, Lmga;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v6, "document"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Environment;->I1(Lgga;Lnga;)V

    goto :goto_0

    :cond_5
    const-string p2, "pi"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "comment"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "document_type"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    invoke-interface {p1}, Lgga;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6, v5}, Lfreemarker/core/Environment;->A1(Lgga;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    :goto_0
    iput-object v4, p0, Lfreemarker/core/Environment;->l0:Lgga;

    iput v0, p0, Lfreemarker/core/Environment;->n0:I

    iput-object v1, p0, Lfreemarker/core/Environment;->o0:Ljava/lang/String;

    iput-object v2, p0, Lfreemarker/core/Environment;->p0:Ljava/lang/String;

    iput-object v3, p0, Lfreemarker/core/Environment;->m0:Lnga;

    return-void

    :cond_8
    :try_start_1
    new-instance p2, Lfreemarker/core/_MiscTemplateException;

    invoke-interface {p1}, Lgga;->g()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {p0, p1, v5, v6}, Lfreemarker/core/Environment;->A1(Lgga;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-object v4, p0, Lfreemarker/core/Environment;->l0:Lgga;

    iput v0, p0, Lfreemarker/core/Environment;->n0:I

    iput-object v1, p0, Lfreemarker/core/Environment;->o0:Ljava/lang/String;

    iput-object v2, p0, Lfreemarker/core/Environment;->p0:Ljava/lang/String;

    iput-object v3, p0, Lfreemarker/core/Environment;->m0:Lnga;

    throw p1
.end method

.method public w0()Ljava/text/Collator;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Environment;->Y:Ljava/text/Collator;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->Y:Ljava/text/Collator;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Environment;->Y:Ljava/text/Collator;

    return-object p0
.end method

.method public final w1()Z
    .locals 1

    invoke-virtual {p0}, Lfreemarker/core/Environment;->x0()Lxe1;

    move-result-object p0

    invoke-virtual {p0}, Lxe1;->F0()Lfreemarker/template/Version;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v0, Ld1d;->e:I

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public x0()Lxe1;
    .locals 0

    invoke-virtual {p0}, Lfreemarker/core/Environment;->c1()Lfreemarker/template/Template;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Template;->t0()Lxe1;

    move-result-object p0

    return-object p0
.end method

.method public x1()Z
    .locals 0

    iget-boolean p0, p0, Lfreemarker/core/Environment;->h0:Z

    return p0
.end method

.method public y1()Z
    .locals 2

    iget-object v0, p0, Lfreemarker/core/Environment;->V:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->x()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->x()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->E()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Environment;->V:Ljava/lang/Boolean;

    :cond_2
    iget-object p0, p0, Lfreemarker/core/Environment;->V:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public z0()Lfreemarker/core/e1$a;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Environment;->a0:Lfreemarker/core/e1$a;

    return-object p0
.end method
