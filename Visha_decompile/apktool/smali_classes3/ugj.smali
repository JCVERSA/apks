.class public final Lugj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic e(Lugj;)Z
    .locals 0

    iget-boolean p0, p0, Lugj;->a:Z

    return p0
.end method

.method public static bridge synthetic f(Lugj;)Z
    .locals 0

    iget-boolean p0, p0, Lugj;->b:Z

    return p0
.end method

.method public static bridge synthetic g(Lugj;)Z
    .locals 0

    iget-boolean p0, p0, Lugj;->c:Z

    return p0
.end method


# virtual methods
.method public final a(Z)Lugj;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lugj;->a:Z

    return-object p0
.end method

.method public final b(Z)Lugj;
    .locals 0

    iput-boolean p1, p0, Lugj;->b:Z

    return-object p0
.end method

.method public final c(Z)Lugj;
    .locals 0

    iput-boolean p1, p0, Lugj;->c:Z

    return-object p0
.end method

.method public final d()Lygj;
    .locals 2

    iget-boolean v0, p0, Lugj;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lugj;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lugj;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Secondary offload attribute fields are true but primary isFormatSupported is false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Lygj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lygj;-><init>(Lugj;Lwgj;)V

    return-object v0
.end method
