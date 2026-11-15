.class public interface abstract Llx7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Llx7;

.field public static final b:Llx7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljx7;

    invoke-direct {v0}, Ljx7;-><init>()V

    sput-object v0, Llx7;->a:Llx7;

    new-instance v0, Lkx7;

    invoke-direct {v0}, Lkx7;-><init>()V

    sput-object v0, Llx7;->b:Llx7;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Llx7;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lpp5;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ParsingErrorLogger"

    const-string v1, "An error occurred during parsing process"

    invoke-static {v0, v1, p0}, Lpp5;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static synthetic d(Ljava/lang/Exception;)V
    .locals 1

    invoke-static {}, Lxi;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lxi;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static synthetic f(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Llx7;->d(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public abstract c(Ljava/lang/Exception;)V
.end method

.method public e(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1}, Llx7;->c(Ljava/lang/Exception;)V

    return-void
.end method
