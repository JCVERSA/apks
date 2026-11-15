.class public Lfreemarker/core/i1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/i1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Class;

.field public final c:Lfreemarker/core/Environment;

.field public final synthetic d:Lfreemarker/core/i1;


# direct methods
.method public constructor <init>(Lfreemarker/core/i1;Ljava/lang/String;Lfreemarker/core/Environment;Lfreemarker/template/Template;)V
    .locals 1

    iput-object p1, p0, Lfreemarker/core/i1$a;->d:Lfreemarker/core/i1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lfreemarker/core/i1$a;->c:Lfreemarker/core/Environment;

    invoke-virtual {p3}, Lfreemarker/core/Configurable;->r()Lafa;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Lafa;->a(Ljava/lang/String;Lfreemarker/core/Environment;Lfreemarker/template/Template;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/i1$a;->b:Ljava/lang/Class;

    sget-object p0, Lfreemarker/core/i1;->n:Ljava/lang/Class;

    if-nez p0, :cond_0

    const-string p0, "freemarker.template.TemplateModel"

    invoke-static {p0}, Lfreemarker/core/i1;->h0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    sput-object p0, Lfreemarker/core/i1;->n:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lfreemarker/core/i1;->k:Ljava/lang/Class;

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const-string p4, " built-in"

    if-nez p0, :cond_3

    sget-object p0, Lfreemarker/core/i1;->l:Ljava/lang/Class;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    iget-object p2, p1, Lfreemarker/core/j;->i:Ljava/lang/String;

    const-string v0, "Jython Models cannot be instantiated using the ?"

    filled-new-array {v0, p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    iget-object p2, p1, Lfreemarker/core/j;->i:Ljava/lang/String;

    const-string v0, "Bean Models cannot be instantiated using the ?"

    filled-new-array {v0, p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p0

    :cond_4
    new-instance p0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p4, " does not implement freemarker.template.TemplateModel"

    const-string v0, "Class "

    filled-new-array {v0, p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/t0;Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lfreemarker/core/i1$a;->c:Lfreemarker/core/Environment;

    invoke-virtual {v0}, Lfreemarker/core/Configurable;->u()Lgc7;

    move-result-object v0

    instance-of v1, v0, Lfreemarker/ext/beans/b;

    if-eqz v1, :cond_0

    check-cast v0, Lfreemarker/ext/beans/b;

    goto :goto_0

    :cond_0
    invoke-static {}, Lfreemarker/ext/beans/b;->s()Lfreemarker/ext/beans/b;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lfreemarker/core/i1$a;->b:Ljava/lang/Class;

    invoke-virtual {v0, p0, p1}, Lfreemarker/ext/beans/b;->F(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
