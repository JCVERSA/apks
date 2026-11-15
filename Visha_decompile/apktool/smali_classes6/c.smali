.class public final Lc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lc;

.field public static b:Z

.field public static final c:Ljava/lang/String;

.field public static d:Le;

.field public static e:Lorg/acra/ErrorReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc;

    invoke-direct {v0}, Lc;-><init>()V

    sput-object v0, Lc;->a:Lc;

    const-class v0, Lc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACRA::class.java.simpleName"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lc;->c:Ljava/lang/String;

    new-instance v0, Lsb;

    invoke-direct {v0}, Lsb;-><init>()V

    sput-object v0, Lc;->d:Le;

    sget-object v0, Lo1a;->a:Lo1a;

    invoke-virtual {v0}, Lo1a;->b()Lorg/acra/ErrorReporter;

    move-result-object v0

    sput-object v0, Lc;->e:Lorg/acra/ErrorReporter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b()Z
    .locals 5

    sget-object v0, Lc;->a:Lc;

    invoke-virtual {v0}, Lc;->a()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lc;->b:Z

    if-eqz v1, :cond_0

    sget-object v1, Lc;->d:Le;

    sget-object v2, Lc;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACRA processName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, ":acra"

    invoke-static {v0, v4, v1, v2, v3}, Lg1a;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    :try_start_0
    new-instance p0, Lty9;

    const-string v0, "/proc/self/cmdline"

    invoke-direct {p0, v0}, Lty9;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lty9;->a()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-gt v3, v0, :cond_5

    if-nez v4, :cond_0

    move v5, v3

    goto :goto_1

    :cond_0
    move v5, v0

    :goto_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Ly45;->l(II)I

    move-result v5

    if-gtz v5, :cond_1

    move v5, v1

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-nez v4, :cond_3

    if-nez v5, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v0, v1

    invoke-interface {p0, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const/4 p0, 0x0

    :goto_4
    return-object p0
.end method
