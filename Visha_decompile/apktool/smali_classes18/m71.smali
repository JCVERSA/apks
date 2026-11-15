.class public Lm71;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Laga;


# instance fields
.field public final b:Lfreemarker/ext/beans/b;

.field public final c:Lbfa;


# direct methods
.method public constructor <init>(Lbfa;Lfreemarker/ext/beans/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lm71;->c:Lbfa;

    iput-object p2, p0, Lm71;->b:Lfreemarker/ext/beans/b;

    return-void
.end method

.method public static synthetic c(Lm71;)Lbfa;
    .locals 0

    iget-object p0, p0, Lm71;->c:Lbfa;

    return-object p0
.end method

.method public static synthetic f(Lm71;)Lfreemarker/ext/beans/b;
    .locals 0

    iget-object p0, p0, Lm71;->b:Lfreemarker/ext/beans/b;

    return-object p0
.end method


# virtual methods
.method public b()Lzfa;
    .locals 0

    iget-object p0, p0, Lm71;->c:Lbfa;

    return-object p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    :try_start_0
    new-instance v0, Ll71;

    invoke-direct {v0, p0}, Ll71;-><init>(Lm71;)V
    :try_end_0
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lfreemarker/template/utility/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Lfreemarker/template/utility/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public size()I
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
