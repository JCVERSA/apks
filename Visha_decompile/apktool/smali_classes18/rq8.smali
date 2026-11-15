.class public final Lrq8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvg5;


# instance fields
.field public final a:Ljava/lang/ClassLoader;

.field public final b:Lpn0;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrq8;->a:Ljava/lang/ClassLoader;

    new-instance p1, Lpn0;

    invoke-direct {p1}, Lpn0;-><init>()V

    iput-object p1, p0, Lrq8;->b:Lpn0;

    return-void
.end method


# virtual methods
.method public a(Lo54;)Ljava/io/InputStream;
    .locals 1

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/e;->u:Lby6;

    invoke-virtual {p1, v0}, Lo54;->i(Lby6;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lrq8;->b:Lpn0;

    sget-object v0, Lnl0;->r:Lnl0;

    invoke-virtual {v0, p1}, Lnl0;->r(Lo54;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lpn0;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public b(Ls65;Ljd5;)Lvg5$a;
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmMetadataVersion"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls65;->d()Lo54;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lo54;->b()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lrq8;->d(Ljava/lang/String;)Lvg5$a;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Lxw0;Ljd5;)Lvg5$a;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jvmMetadataVersion"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lsq8;->a(Lxw0;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrq8;->d(Ljava/lang/String;)Lvg5$a;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lvg5$a;
    .locals 2

    iget-object p0, p0, Lrq8;->a:Ljava/lang/ClassLoader;

    invoke-static {p0, p1}, Lxp8;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Lqq8;->c:Lqq8$a;

    invoke-virtual {v0, p0}, Lqq8$a;->a(Ljava/lang/Class;)Lqq8;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lvg5$a$a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1, p1}, Lvg5$a$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/c;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    return-object p1
.end method
