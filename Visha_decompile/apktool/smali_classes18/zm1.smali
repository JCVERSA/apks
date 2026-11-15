.class public Lzm1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzm1;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iput p1, p0, Lzm1;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lzm1;->c()Lfreemarker/core/Environment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzm1;->d(Lfreemarker/core/Environment;)Lfreemarker/core/Configurable;

    move-result-object v0

    iget-object v1, p0, Lzm1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lfreemarker/core/Configurable;->k(Ljava/lang/Object;Lzm1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lfreemarker/core/Environment;
    .locals 1

    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No current environment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lfreemarker/core/Environment;)Lfreemarker/core/Configurable;
    .locals 1

    iget p0, p0, Lzm1;->b:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->w()Lfreemarker/core/Configurable;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->w()Lfreemarker/core/Configurable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lfreemarker/core/BugException;

    invoke-direct {p0}, Lfreemarker/core/BugException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p1}, Lfreemarker/core/Configurable;->w()Lfreemarker/core/Configurable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method
