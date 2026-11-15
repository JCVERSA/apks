.class public Lfreemarker/core/n$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/n$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/util/Date;

.field public final c:I

.field public final d:Lfreemarker/core/Environment;

.field public final synthetic e:Lfreemarker/core/n$c;


# direct methods
.method public constructor <init>(Lfreemarker/core/n$c;Ljava/util/Date;ILfreemarker/core/Environment;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/n$c$a;->e:Lfreemarker/core/n$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfreemarker/core/n$c$a;->b:Ljava/util/Date;

    iput p3, p0, Lfreemarker/core/n$c$a;->c:I

    iput-object p4, p0, Lfreemarker/core/n$c$a;->d:Lfreemarker/core/Environment;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lfreemarker/core/n$c$a;->e:Lfreemarker/core/n$c;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lfreemarker/core/j;->Z(Ljava/util/List;I)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzfa;

    instance-of v2, p1, Lc8;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lc8;

    sget-object v3, Lfreemarker/core/n;->a:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "java.util.TimeZone"

    invoke-static {v3}, Lfreemarker/core/n;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lfreemarker/core/n;->a:Ljava/lang/Class;

    :cond_0
    invoke-interface {v2, v3}, Lc8;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/util/TimeZone;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/util/TimeZone;

    :goto_0
    move-object v8, v2

    goto :goto_1

    :cond_1
    instance-of v2, p1, Lmga;

    if-eqz v2, :cond_4

    check-cast p1, Lmga;

    const/4 v2, 0x0

    invoke-static {p1, v2, v2}, Lfreemarker/core/q0;->h(Lmga;Lfreemarker/core/t0;Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lfreemarker/template/utility/DateUtil;->e(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2
    :try_end_0
    .catch Lfreemarker/template/utility/UnrecognizedTimeZoneException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    new-instance p1, Lfreemarker/template/SimpleScalar;

    iget-object v3, p0, Lfreemarker/core/n$c$a;->b:Ljava/util/Date;

    iget v2, p0, Lfreemarker/core/n$c$a;->c:I

    if-eq v2, v1, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    move v5, v1

    goto :goto_3

    :cond_3
    move v5, v0

    :goto_3
    iget-object v0, p0, Lfreemarker/core/n$c$a;->e:Lfreemarker/core/n$c;

    iget-object v1, p0, Lfreemarker/core/n$c$a;->d:Lfreemarker/core/Environment;

    invoke-virtual {v0, v3, v2, v1}, Lfreemarker/core/n$a;->k0(Ljava/util/Date;ILfreemarker/core/Environment;)Z

    move-result v6

    iget-object v0, p0, Lfreemarker/core/n$c$a;->e:Lfreemarker/core/n$c;

    iget v7, v0, Lfreemarker/core/n$a;->l:I

    iget-object p0, p0, Lfreemarker/core/n$c$a;->d:Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment;->M0()Lfreemarker/template/utility/DateUtil$b;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lfreemarker/template/utility/DateUtil;->b(Ljava/util/Date;ZZZILjava/util/TimeZone;Lfreemarker/template/utility/DateUtil$b;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    :catch_0
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    iget-object p0, p0, Lfreemarker/core/n$c$a;->e:Lfreemarker/core/n$c;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p1, "The time zone string specified for ?"

    const-string v2, "(...) is not recognized as a valid time zone name: "

    filled-new-array {p1, p0, v2, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lfreemarker/core/n$c$a;->e:Lfreemarker/core/n$c;

    iget-object p0, p0, Lfreemarker/core/j;->i:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "string or java.util.TimeZone"

    invoke-static {p0, v0, v1, p1}, Lfreemarker/core/f1;->r(Ljava/lang/String;ILjava/lang/String;Lzfa;)Lfreemarker/template/TemplateModelException;

    move-result-object p0

    throw p0
.end method
