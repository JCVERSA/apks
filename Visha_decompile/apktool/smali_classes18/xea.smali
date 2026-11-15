.class public final Lxea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lafa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lfreemarker/core/Environment;Lfreemarker/template/Template;)Ljava/lang/Class;
    .locals 0

    sget-object p0, Lzea;->a:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "freemarker.template.utility.ObjectConstructor"

    invoke-static {p0}, Lzea;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lzea;->a:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lzea;->b:Ljava/lang/Class;

    if-nez p0, :cond_1

    const-string p0, "freemarker.template.utility.Execute"

    invoke-static {p0}, Lzea;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lzea;->b:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "freemarker.template.utility.JythonRuntime"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :try_start_0
    invoke-static {p1}, Lhx0;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {p1, p0, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    throw p1

    :cond_2
    invoke-static {p1, p2}, Lfreemarker/core/f1;->n(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0
.end method
