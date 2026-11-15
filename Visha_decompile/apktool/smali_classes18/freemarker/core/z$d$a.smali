.class public Lfreemarker/core/z$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lffa;
.implements Lxfa;
.implements Lofa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/z$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lfreemarker/core/Environment;

.field public final d:Ldfa;

.field public e:Ljava/util/Date;

.field public final synthetic f:Lfreemarker/core/z$d;


# direct methods
.method public constructor <init>(Lfreemarker/core/z$d;Ljava/lang/String;Lfreemarker/core/Environment;)V
    .locals 1

    iput-object p1, p0, Lfreemarker/core/z$d$a;->f:Lfreemarker/core/z$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/z$d$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lfreemarker/core/z$d$a;->c:Lfreemarker/core/Environment;

    invoke-static {p1}, Lfreemarker/core/z$d;->h0(Lfreemarker/core/z$d;)I

    move-result p2

    sget-object v0, Lfreemarker/core/z;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.Date"

    invoke-static {v0}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/z;->c:Ljava/lang/Class;

    :cond_0
    iget-object p1, p1, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {p3, p2, v0, p1}, Lfreemarker/core/Environment;->e1(ILjava/lang/Class;Lfreemarker/core/t0;)Ldfa;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/z$d$a;->d:Ldfa;

    return-void
.end method


# virtual methods
.method public final b(Ldfa;)Ljava/util/Date;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lfreemarker/core/z$d$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ldfa;->d(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lfreemarker/core/_TemplateModelException;

    new-instance v3, Lk0d;

    iget-object p0, p0, Lfreemarker/core/z$d$a;->b:Ljava/lang/String;

    invoke-direct {v3, p0}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lk0d;

    invoke-virtual {p1}, Ldfa;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v6, p0}, Lk0d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    if-eqz p0, :cond_0

    const-string p0, "\nThe nested reason given follows:\n"

    move-object v8, p0

    goto :goto_0

    :cond_0
    move-object v8, p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    move-object v9, p0

    goto :goto_1

    :cond_1
    move-object v9, p1

    :goto_1
    const-string v2, "The string doesn\'t match the expected date/time/date-time format. The string to parse was: "

    const-string v4, ". "

    const-string v5, "The expected format was: "

    const-string v7, "."

    filled-new-array/range {v2 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/z$d$a;->f:Lfreemarker/core/z$d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->Z(Ljava/util/List;I)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lfreemarker/core/z$d$a;->get(Ljava/lang/String;)Lzfa;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/z$d$a;->e:Ljava/util/Date;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfreemarker/core/z$d$a;->d:Ldfa;

    invoke-virtual {p0, v0}, Lfreemarker/core/z$d$a;->b(Ldfa;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/z$d$a;->e:Ljava/util/Date;

    :cond_0
    iget-object p0, p0, Lfreemarker/core/z$d$a;->e:Ljava/util/Date;

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 5

    new-instance v0, Lam9;

    iget-object v1, p0, Lfreemarker/core/z$d$a;->c:Lfreemarker/core/Environment;

    iget-object v2, p0, Lfreemarker/core/z$d$a;->f:Lfreemarker/core/z$d;

    invoke-static {v2}, Lfreemarker/core/z$d;->h0(Lfreemarker/core/z$d;)I

    move-result v2

    sget-object v3, Lfreemarker/core/z;->c:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.util.Date"

    invoke-static {v3}, Lfreemarker/core/z;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/core/z;->c:Ljava/lang/Class;

    :cond_0
    iget-object v4, p0, Lfreemarker/core/z$d$a;->f:Lfreemarker/core/z$d;

    iget-object v4, v4, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, v2, v3, p1, v4}, Lfreemarker/core/Environment;->f1(ILjava/lang/Class;Ljava/lang/String;Lfreemarker/core/t0;)Ldfa;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/core/z$d$a;->b(Ldfa;)Ljava/util/Date;

    move-result-object p1

    iget-object p0, p0, Lfreemarker/core/z$d$a;->f:Lfreemarker/core/z$d;

    invoke-static {p0}, Lfreemarker/core/z$d;->h0(Lfreemarker/core/z$d;)I

    move-result p0

    invoke-direct {v0, p1, p0}, Lam9;-><init>(Ljava/util/Date;I)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, Lfreemarker/core/z$d$a;->f:Lfreemarker/core/z$d;

    invoke-static {p0}, Lfreemarker/core/z$d;->h0(Lfreemarker/core/z$d;)I

    move-result p0

    return p0
.end method
