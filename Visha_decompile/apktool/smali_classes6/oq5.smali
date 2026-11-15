.class public final Loq5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Loq5;

.field public static b:Z

.field public static c:Lwp5;

.field public static d:I

.field public static e:Ljava/lang/String;

.field public static final f:Luq5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Loq5;

    invoke-direct {v0}, Loq5;-><init>()V

    sput-object v0, Loq5;->a:Loq5;

    const/4 v0, 0x1

    sput-boolean v0, Loq5;->b:Z

    new-instance v0, Lh22;

    invoke-direct {v0}, Lh22;-><init>()V

    sput-object v0, Loq5;->c:Lwp5;

    const/4 v0, 0x3

    sput v0, Loq5;->d:I

    const-string v0, ""

    sput-object v0, Loq5;->e:Ljava/lang/String;

    new-instance v0, Luq5;

    invoke-direct {v0}, Luq5;-><init>()V

    sput-object v0, Loq5;->f:Luq5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Loq5;->d:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Loq5;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Loq5;->d:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Loq5;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)V
    .locals 2

    const-string v0, "contents"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Loq5;->d:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "CloudDriveSdk"

    invoke-virtual {p0, v1, v0, p1}, Loq5;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Loq5;->d:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Loq5;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final e(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "CloudDriveSdk"

    :goto_0
    invoke-virtual {p0, p3}, Loq5;->h([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Loq5;->f(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Loq5;->e:Ljava/lang/String;

    invoke-static {v0}, Lj1a;->o0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p2, Loq5;->e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v1, v0, 0x44c

    if-lez v1, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "substring(...)"

    if-ge v2, v1, :cond_1

    add-int/lit16 v5, v3, 0x44c

    invoke-virtual {p3, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v3}, Loq5;->g(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    if-eq v3, v0, :cond_3

    invoke-virtual {p3, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v4}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Loq5;->g(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Loq5;->g(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final g(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    const/4 p0, 0x4

    if-eq p1, p0, :cond_2

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Loq5;->c:Lwp5;

    invoke-static {p3}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lwp5;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object p0, Loq5;->c:Lwp5;

    invoke-static {p3}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lwp5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object p0, Loq5;->c:Lwp5;

    invoke-static {p3}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lwp5;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object p0, Loq5;->c:Lwp5;

    invoke-static {p3}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lwp5;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object p0, Loq5;->c:Lwp5;

    invoke-static {p3}, Lj1a;->i1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lwp5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final h([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    array-length p0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    sget-object p0, Loq5;->f:Luq5;

    aget-object p1, p1, v1

    invoke-virtual {p0, p1}, Luq5;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    sget-object v3, Loq5;->f:Luq5;

    invoke-virtual {v3, v2}, Luq5;->e(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(Lrp5;)V
    .locals 0

    const-string p0, "config"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lrp5;->c()Z

    move-result p0

    sput-boolean p0, Loq5;->b:Z

    invoke-virtual {p1}, Lrp5;->b()Lwp5;

    move-result-object p0

    sput-object p0, Loq5;->c:Lwp5;

    invoke-virtual {p1}, Lrp5;->d()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Loq5;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lrp5;->a()I

    move-result p0

    sput p0, Loq5;->d:I

    return-void
.end method

.method public final varargs j(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contents"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Loq5;->d:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Loq5;->e(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
