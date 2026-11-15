.class public abstract Lfreemarker/core/Configurable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/Configurable$b;,
        Lfreemarker/core/Configurable$a;,
        Lfreemarker/core/Configurable$SettingValueAssignmentException;,
        Lfreemarker/core/Configurable$UnknownSettingException;
    }
.end annotation


# static fields
.field public static final C:[Ljava/lang/String;

.field public static final D:[Ljava/lang/String;

.field public static synthetic E:Ljava/lang/Class;

.field public static synthetic F:Ljava/lang/Class;

.field public static synthetic G:Ljava/lang/Class;

.field public static synthetic H:Ljava/lang/Class;

.field public static synthetic I:Ljava/lang/Class;


# instance fields
.field public A:Ljava/lang/Boolean;

.field public B:Ljava/lang/Boolean;

.field public b:Lfreemarker/core/Configurable;

.field public c:Ljava/util/Properties;

.field public d:Ljava/util/HashMap;

.field public e:Ljava/util/Locale;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/TimeZone;

.field public k:Ljava/util/TimeZone;

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/Integer;

.field public q:Lnfa;

.field public r:Lfreemarker/core/c;

.field public s:Lgc7;

.field public t:Ljava/lang/String;

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Z

.field public x:Ljava/lang/Boolean;

.field public y:Lafa;

.field public z:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v18, "time_zone"

    const-string v19, "url_escaping_charset"

    const-string v0, "api_builtin_enabled"

    const-string v1, "arithmetic_engine"

    const-string v2, "auto_flush"

    const-string v3, "boolean_format"

    const-string v4, "classic_compatible"

    const-string v5, "date_format"

    const-string v6, "datetime_format"

    const-string v7, "locale"

    const-string v8, "log_template_exceptions"

    const-string v9, "new_builtin_class_resolver"

    const-string v10, "number_format"

    const-string v11, "object_wrapper"

    const-string v12, "output_encoding"

    const-string v13, "show_error_tips"

    const-string v14, "sql_date_and_time_time_zone"

    const-string v15, "strict_bean_models"

    const-string v16, "template_exception_handler"

    const-string v17, "time_format"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Configurable;->C:[Ljava/lang/String;

    const-string v19, "timeZone"

    const-string v20, "urlEscapingCharset"

    const-string v1, "apiBuiltinEnabled"

    const-string v2, "arithmeticEngine"

    const-string v3, "autoFlush"

    const-string v4, "booleanFormat"

    const-string v5, "classicCompatible"

    const-string v6, "dateFormat"

    const-string v7, "datetimeFormat"

    const-string v8, "locale"

    const-string v9, "logTemplateExceptions"

    const-string v10, "newBuiltinClassResolver"

    const-string v11, "numberFormat"

    const-string v12, "objectWrapper"

    const-string v13, "outputEncoding"

    const-string v14, "showErrorTips"

    const-string v15, "sqlDateAndTimeTimeZone"

    const-string v16, "strictBeanModels"

    const-string v17, "templateExceptionHandler"

    const-string v18, "timeFormat"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Configurable;->D:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lfreemarker/core/Configurable;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lfreemarker/core/Configurable;->e:Ljava/util/Locale;

    .line 42
    iput-object v0, p0, Lfreemarker/core/Configurable;->f:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lfreemarker/core/Configurable;->p:Ljava/lang/Integer;

    .line 44
    iput-object v0, p0, Lfreemarker/core/Configurable;->q:Lnfa;

    .line 45
    new-instance v0, Ljava/util/Properties;

    iget-object p1, p1, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ld1d;->a(Lfreemarker/template/Version;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    .line 4
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->e:Ljava/util/Locale;

    .line 6
    iget-object v2, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v3, "locale"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->j:Ljava/util/TimeZone;

    .line 8
    iget-object v2, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v3, "time_zone"

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object v0, p0, Lfreemarker/core/Configurable;->k:Ljava/util/TimeZone;

    .line 10
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sql_date_and_time_time_zone"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    const-string v0, "number"

    iput-object v0, p0, Lfreemarker/core/Configurable;->f:Ljava/lang/String;

    .line 12
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "number_format"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lfreemarker/core/Configurable;->g:Ljava/lang/String;

    .line 14
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "time_format"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lfreemarker/core/Configurable;->h:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "date_format"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lfreemarker/core/Configurable;->i:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "datetime_format"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/Configurable;->p:Ljava/lang/Integer;

    .line 20
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "classic_compatible"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    invoke-static {p1}, Ld1d;->d(Lfreemarker/template/Version;)Lnfa;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->q:Lnfa;

    .line 22
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "template_exception_handler"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lfreemarker/core/c;->d:Lfreemarker/core/c$a;

    iput-object v0, p0, Lfreemarker/core/Configurable;->r:Lfreemarker/core/c;

    .line 24
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "arithmetic_engine"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    invoke-static {p1}, Lxe1;->w0(Lfreemarker/template/Version;)Lgc7;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->s:Lgc7;

    .line 26
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lfreemarker/core/Configurable;->x:Ljava/lang/Boolean;

    .line 27
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "auto_flush"

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lafa;->a:Lafa;

    iput-object v1, p0, Lfreemarker/core/Configurable;->y:Lafa;

    .line 29
    iget-object v2, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "new_builtin_class_resolver"

    invoke-virtual {v2, v3, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lfreemarker/core/Configurable;->z:Ljava/lang/Boolean;

    .line 31
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "show_error_tips"

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lfreemarker/core/Configurable;->A:Ljava/lang/Boolean;

    .line 33
    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "api_builtin_enabled"

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    invoke-static {p1}, Ld1d;->c(Lfreemarker/template/Version;)Z

    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->B:Ljava/lang/Boolean;

    .line 36
    iget-object v0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v1, "log_template_exceptions"

    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    const-string p1, "true,false"

    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->P(Ljava/lang/String;)V

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->A()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public B()Lnfa;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->q:Lnfa;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->B()Lnfa;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->C()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public E()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->j:Ljava/util/TimeZone;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->E()Ljava/util/TimeZone;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/Configurable;->n:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->F()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public G()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lfreemarker/core/Configurable;->w:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/Configurable;->v:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->G()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public H(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;
    .locals 3

    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->n()Lfreemarker/core/Environment;

    move-result-object p0

    new-instance v1, Lk0d;

    invoke-direct {v1, p1}, Lk0d;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lk0d;

    invoke-direct {p1, p2}, Lk0d;-><init>(Ljava/lang/Object;)V

    const-string p2, "Invalid value for setting "

    const-string v2, ": "

    filled-new-array {p2, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->I()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public J()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->J()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public K(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    new-instance p0, Lfreemarker/core/Configurable$b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/Configurable$b;-><init>(Ljava/lang/String;Lve1;)V

    invoke-virtual {p0}, Lfreemarker/core/Configurable$b;->c()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final L(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 0

    const-string p0, "JVM default"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public M(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->A:Ljava/lang/Boolean;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "api_builtin_enabled"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public N(Lfreemarker/core/c;)V
    .locals 1

    const-string v0, "arithmeticEngine"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->r:Lfreemarker/core/c;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "arithmetic_engine"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public O(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->x:Ljava/lang/Boolean;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "auto_flush"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 3

    const-string v0, "booleanFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iput-object p1, p0, Lfreemarker/core/Configurable;->m:Ljava/lang/String;

    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v2, "boolean_format"

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "true,false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lfreemarker/core/Configurable;->n:Ljava/lang/String;

    iput-object p1, p0, Lfreemarker/core/Configurable;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/core/Configurable;->n:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Configurable;->o:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Setting value must be string that contains two comma-separated values for true and false, respectively."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public Q(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/Configurable;->p:Ljava/lang/Integer;

    iget-object p1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v1, "classic_compatible"

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->c(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public R(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/Configurable;->p:Ljava/lang/Integer;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Unsupported \"classicCompatibility\": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public S(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public T(Ljava/lang/String;)V
    .locals 1

    const-string v0, "dateFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->h:Ljava/lang/String;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "date_format"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 1

    const-string v0, "dateTimeFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->i:Ljava/lang/String;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "datetime_format"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public V(Ljava/util/Locale;)V
    .locals 1

    const-string v0, "locale"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->e:Ljava/util/Locale;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public W(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->B:Ljava/lang/Boolean;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "log_template_exceptions"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public X(Lafa;)V
    .locals 1

    const-string v0, "newBuiltinClassResolver"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->y:Lafa;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "new_builtin_class_resolver"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "numberFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->f:Ljava/lang/String;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "number_format"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public Z(Lgc7;)V
    .locals 1

    const-string v0, "objectWrapper"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->s:Lgc7;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "object_wrapper"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public a0(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lfreemarker/core/Configurable;->t:Ljava/lang/String;

    const-string v0, "output_encoding"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lfreemarker/core/Configurable;->u:Z

    return-void
.end method

.method public final b0(Lfreemarker/core/Configurable;)V
    .locals 0

    iput-object p1, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    return-void
.end method

.method public final c(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "false"

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "true"

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c0(Ljava/util/TimeZone;)V
    .locals 1

    iput-object p1, p0, Lfreemarker/core/Configurable;->k:Ljava/util/TimeZone;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfreemarker/core/Configurable;->l:Z

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    const-string v0, "sql_date_and_time_time_zone"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/Configurable;

    new-instance v1, Ljava/util/Properties;

    iget-object v2, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-direct {v1, v2}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    iput-object v1, v0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    iget-object p0, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    iput-object p0, v0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method public d(Lfreemarker/core/Environment;)V
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->d(Lfreemarker/core/Environment;)V

    :cond_0
    return-void
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "trusted_templates"

    const-string v1, "allowed_classes"

    :try_start_0
    const-string v2, "locale"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Ln0a;->r(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->V(Ljava/util/Locale;)V

    goto/16 :goto_1a

    :catch_0
    move-exception v0

    goto/16 :goto_1b

    :cond_0
    const-string v2, "number_format"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    const-string v2, "numberFormat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_19

    :cond_1
    const-string v2, "time_format"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string v2, "timeFormat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_18

    :cond_2
    const-string v2, "date_format"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "dateFormat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_17

    :cond_3
    const-string v2, "datetime_format"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    const-string v2, "datetimeFormat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_16

    :cond_4
    const-string v2, "time_zone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v2, "timeZone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_15

    :cond_5
    const-string v2, "sql_date_and_time_time_zone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_42

    const-string v2, "sqlDateAndTimeTimeZone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto/16 :goto_13

    :cond_6
    const-string v2, "classic_compatible"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3d

    const-string v2, "classicCompatible"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_10

    :cond_7
    const-string v2, "template_exception_handler"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "default"

    const/16 v6, 0x2e

    const/4 v7, -0x1

    if-nez v2, :cond_34

    :try_start_1
    const-string v2, "templateExceptionHandler"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_e

    :cond_8
    const-string v2, "arithmetic_engine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "arithmeticEngine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_d

    :cond_9
    const-string v2, "object_wrapper"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "objectWrapper"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_c

    :cond_a
    const-string v2, "boolean_format"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "booleanFormat"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_b

    :cond_b
    const-string v2, "output_encoding"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "outputEncoding"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto/16 :goto_a

    :cond_c
    const-string v2, "url_escaping_charset"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "urlEscapingCharset"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto/16 :goto_9

    :cond_d
    const-string v2, "strict_bean_models"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    const-string v2, "strictBeanModels"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_8

    :cond_e
    const-string v2, "auto_flush"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "autoFlush"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    goto/16 :goto_7

    :cond_f
    const-string v2, "show_error_tips"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "showErrorTips"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_6

    :cond_10
    const-string v2, "api_builtin_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "apiBuiltinEnabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_5

    :cond_11
    const-string v2, "new_builtin_class_resolver"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string v2, "newBuiltinClassResolver"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_1

    :cond_12
    const-string v0, "log_template_exceptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "logTemplateExceptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_13

    goto :goto_0

    :cond_13
    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->l0(Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0

    :cond_14
    :goto_0
    :try_start_2
    invoke-static {p2}, Ln0a;->u(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->W(Z)V

    goto/16 :goto_1a

    :cond_15
    :goto_1
    const-string v2, "unrestricted"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v0, Lafa;->a:Lafa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->X(Lafa;)V

    goto/16 :goto_1a

    :cond_16
    const-string v2, "safer"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v0, Lafa;->b:Lafa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->X(Lafa;)V

    goto/16 :goto_1a

    :cond_17
    const-string v2, "allows_nothing"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string v2, "allowsNothing"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_4

    :cond_18
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v7, :cond_1c

    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->K(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object v5, v3

    move v6, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1b

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/Configurable$a;

    invoke-virtual {v7}, Lfreemarker/core/Configurable$a;->a()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Lfreemarker/core/Configurable$a;->b()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_19
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object v5, v7

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1a
    new-instance v2, Lfreemarker/core/ParseException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unrecognized list segment key: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v8}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, ". Supported keys are: \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\", \""

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v4, v4}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;II)V

    throw v2

    :cond_1b
    new-instance v0, Ljs7;

    invoke-direct {v0, v3, v5}, Ljs7;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->X(Lafa;)V

    goto/16 :goto_1a

    :cond_1c
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v7, :cond_1e

    sget-object v0, Lfreemarker/core/Configurable;->H:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "freemarker.core.TemplateClassResolver"

    invoke-static {v0}, Lfreemarker/core/Configurable;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Configurable;->H:Ljava/lang/Class;

    :cond_1d
    invoke-static {}, Lb1d;->a()Lb1d;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lz0d;->g(Ljava/lang/String;Ljava/lang/Class;Lb1d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->X(Lafa;)V

    goto/16 :goto_1a

    :cond_1e
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Configurable;->H(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    :cond_1f
    :goto_4
    sget-object v0, Lafa;->c:Lafa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->X(Lafa;)V

    goto/16 :goto_1a

    :cond_20
    :goto_5
    invoke-static {p2}, Ln0a;->u(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->M(Z)V

    goto/16 :goto_1a

    :cond_21
    :goto_6
    invoke-static {p2}, Ln0a;->u(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->e0(Z)V

    goto/16 :goto_1a

    :cond_22
    :goto_7
    invoke-static {p2}, Ln0a;->u(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->O(Z)V

    goto/16 :goto_1a

    :cond_23
    :goto_8
    invoke-static {p2}, Ln0a;->u(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->f0(Z)V

    goto/16 :goto_1a

    :cond_24
    :goto_9
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->j0(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_25
    :goto_a
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->a0(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_26
    :goto_b
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->P(Ljava/lang/String;)V

    goto/16 :goto_1a

    :cond_27
    :goto_c
    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    instance-of v0, p0, Lxe1;

    if-eqz v0, :cond_28

    move-object v0, p0

    check-cast v0, Lxe1;

    invoke-virtual {v0}, Lxe1;->d1()V

    goto/16 :goto_1a

    :cond_28
    sget-object v0, Lxe1;->e0:Lfreemarker/template/Version;

    invoke-static {v0}, Lxe1;->w0(Lfreemarker/template/Version;)Lgc7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->Z(Lgc7;)V

    goto/16 :goto_1a

    :cond_29
    const-string v0, "default_2_3_0"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object v0, Lxe1;->e0:Lfreemarker/template/Version;

    invoke-static {v0}, Lxe1;->w0(Lfreemarker/template/Version;)Lgc7;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->Z(Lgc7;)V

    goto/16 :goto_1a

    :cond_2a
    const-string v0, "simple"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Lgc7;->c:Lgc7;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->Z(Lgc7;)V

    goto/16 :goto_1a

    :cond_2b
    const-string v0, "beans"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lgc7;->a:Lgc7;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->Z(Lgc7;)V

    goto/16 :goto_1a

    :cond_2c
    const-string v0, "jython"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-class v0, Lxd5;

    sget-object v1, Lxd5;->g:Ljava/lang/Class;

    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgc7;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->Z(Lgc7;)V

    goto/16 :goto_1a

    :cond_2d
    sget-object v0, Lfreemarker/core/Configurable;->G:Ljava/lang/Class;

    if-nez v0, :cond_2e

    const-string v0, "freemarker.template.ObjectWrapper"

    invoke-static {v0}, Lfreemarker/core/Configurable;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Configurable;->G:Ljava/lang/Class;

    :cond_2e
    invoke-static {}, Lb1d;->a()Lb1d;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lz0d;->g(Ljava/lang/String;Ljava/lang/Class;Lb1d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgc7;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->Z(Lgc7;)V

    goto/16 :goto_1a

    :cond_2f
    :goto_d
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_32

    const-string v0, "bigdecimal"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lfreemarker/core/c;->d:Lfreemarker/core/c$a;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->N(Lfreemarker/core/c;)V

    goto/16 :goto_1a

    :cond_30
    const-string v0, "conservative"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lfreemarker/core/c;->e:Lfreemarker/core/c$b;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->N(Lfreemarker/core/c;)V

    goto/16 :goto_1a

    :cond_31
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Configurable;->H(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    :cond_32
    sget-object v0, Lfreemarker/core/Configurable;->F:Ljava/lang/Class;

    if-nez v0, :cond_33

    const-string v0, "freemarker.core.ArithmeticEngine"

    invoke-static {v0}, Lfreemarker/core/Configurable;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Configurable;->F:Ljava/lang/Class;

    :cond_33
    invoke-static {}, Lb1d;->a()Lb1d;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lz0d;->g(Ljava/lang/String;Ljava/lang/Class;Lb1d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/c;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->N(Lfreemarker/core/c;)V

    goto/16 :goto_1a

    :cond_34
    :goto_e
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v7, :cond_3b

    const-string v0, "debug"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object v0, Lnfa;->c:Lnfa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->g0(Lnfa;)V

    goto/16 :goto_1a

    :cond_35
    const-string v0, "html_debug"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "htmlDebug"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_f

    :cond_36
    const-string v0, "ignore"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget-object v0, Lnfa;->a:Lnfa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->g0(Lnfa;)V

    goto/16 :goto_1a

    :cond_37
    const-string v0, "rethrow"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    sget-object v0, Lnfa;->b:Lnfa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->g0(Lnfa;)V

    goto/16 :goto_1a

    :cond_38
    invoke-virtual {v5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    instance-of v0, p0, Lxe1;

    if-eqz v0, :cond_39

    move-object v0, p0

    check-cast v0, Lxe1;

    invoke-virtual {v0}, Lxe1;->e1()V

    goto/16 :goto_1a

    :cond_39
    invoke-virtual {p0, p1, p2}, Lfreemarker/core/Configurable;->H(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    :cond_3a
    :goto_f
    sget-object v0, Lnfa;->d:Lnfa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->g0(Lnfa;)V

    goto/16 :goto_1a

    :cond_3b
    sget-object v0, Lfreemarker/core/Configurable;->E:Ljava/lang/Class;

    if-nez v0, :cond_3c

    const-string v0, "freemarker.template.TemplateExceptionHandler"

    invoke-static {v0}, Lfreemarker/core/Configurable;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Configurable;->E:Ljava/lang/Class;

    :cond_3c
    invoke-static {}, Lb1d;->a()Lb1d;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lz0d;->g(Ljava/lang/String;Ljava/lang/Class;Lb1d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnfa;

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->g0(Lnfa;)V

    goto :goto_1a

    :cond_3d
    :goto_10
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3e

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_11

    :cond_3e
    move v0, v4

    :goto_11
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_41

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_41

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3f

    goto :goto_12

    :cond_3f
    if-eqz p2, :cond_40

    invoke-static {p2}, Ln0a;->u(Ljava/lang/String;)Z

    move-result v4

    :cond_40
    invoke-virtual {p0, v4}, Lfreemarker/core/Configurable;->Q(Z)V

    goto :goto_1a

    :cond_41
    :goto_12
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->R(I)V

    goto :goto_1a

    :cond_42
    :goto_13
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_14

    :cond_43
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->L(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    :goto_14
    invoke-virtual {p0, v3}, Lfreemarker/core/Configurable;->c0(Ljava/util/TimeZone;)V

    goto :goto_1a

    :cond_44
    :goto_15
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->L(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Configurable;->i0(Ljava/util/TimeZone;)V

    goto :goto_1a

    :cond_45
    :goto_16
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->U(Ljava/lang/String;)V

    goto :goto_1a

    :cond_46
    :goto_17
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->T(Ljava/lang/String;)V

    goto :goto_1a

    :cond_47
    :goto_18
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->h0(Ljava/lang/String;)V

    goto :goto_1a

    :cond_48
    :goto_19
    invoke-virtual {p0, p2}, Lfreemarker/core/Configurable;->Y(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1a
    return-void

    :goto_1b
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/core/Configurable;->k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lfreemarker/template/TemplateException;

    move-result-object p0

    throw p0
.end method

.method public e(ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->F()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "true"

    return-object p0

    :cond_0
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->s()Lq0d;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lq0d;)V

    throw p1

    :cond_1
    return-object p1

    :cond_2
    invoke-virtual {p0}, Lfreemarker/core/Configurable;->o()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    const-string p0, "false"

    return-object p0

    :cond_3
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->s()Lq0d;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lq0d;)V

    throw p1

    :cond_4
    return-object p1
.end method

.method public e0(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/core/Configurable;->z:Ljava/lang/Boolean;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "show_error_tips"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public f()Lfreemarker/core/c;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->r:Lfreemarker/core/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->f()Lfreemarker/core/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f0(Z)V
    .locals 1

    iget-object p0, p0, Lfreemarker/core/Configurable;->s:Lgc7;

    instance-of v0, p0, Lfreemarker/ext/beans/b;

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "The value of the object_wrapper setting isn\'t a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lfreemarker/core/Configurable;->I:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "freemarker.ext.beans.BeansWrapper"

    invoke-static {v0}, Lfreemarker/core/Configurable;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/Configurable;->I:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    check-cast p0, Lfreemarker/ext/beans/b;

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/b;->I(Z)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->x:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->g()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public g0(Lnfa;)V
    .locals 1

    const-string v0, "templateExceptionHandler"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->q:Lnfa;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "template_exception_handler"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public h0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "timeFormat"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->g:Ljava/lang/String;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "time_format"

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->p:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->i()I

    move-result p0

    :goto_0
    return p0
.end method

.method public i0(Ljava/util/TimeZone;)V
    .locals 1

    const-string v0, "timeZone"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lfreemarker/core/Configurable;->j:Ljava/util/TimeZone;

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    const-string v0, "time_zone"

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public j0(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lfreemarker/core/Configurable;->v:Ljava/lang/String;

    const-string v0, "url_escaping_charset"

    if-eqz p1, :cond_0

    iget-object v1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lfreemarker/core/Configurable;->w:Z

    return-void
.end method

.method public k(Ljava/lang/Object;Lzm1;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lzm1;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lfreemarker/core/Configurable;->d:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public k0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lfreemarker/template/TemplateException;
    .locals 7

    new-instance v6, Lfreemarker/core/Configurable$SettingValueAssignmentException;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->n()Lfreemarker/core/Environment;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/Configurable$SettingValueAssignmentException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lve1;)V

    return-object v6
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->l()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public l0(Ljava/lang/String;)Lfreemarker/template/TemplateException;
    .locals 3

    new-instance v0, Lfreemarker/core/Configurable$UnknownSettingException;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->n()Lfreemarker/core/Environment;

    move-result-object v1

    invoke-virtual {p0, p1}, Lfreemarker/core/Configurable;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lfreemarker/core/Configurable$UnknownSettingException;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;Ljava/lang/String;Lve1;)V

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->m()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n()Lfreemarker/core/Environment;
    .locals 1

    instance-of v0, p0, Lfreemarker/core/Environment;

    if-eqz v0, :cond_0

    check-cast p0, Lfreemarker/core/Environment;

    goto :goto_0

    :cond_0
    invoke-static {}, Lfreemarker/core/Environment;->y0()Lfreemarker/core/Environment;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/Configurable;->o:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->o()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public p()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->e:Ljava/util/Locale;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->p()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->q()Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public r()Lafa;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->y:Lafa;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->r()Lafa;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final s()Lq0d;
    .locals 5

    new-instance v0, Lq0d;

    new-instance v1, Lk0d;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lk0d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->h()Ljava/lang/String;

    move-result-object p0

    const-string v2, "true,false"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ", which is the legacy default computer-language format, and hence isn\'t accepted."

    goto :goto_0

    :cond_0
    const-string p0, "."

    :goto_0
    const-string v2, "Can\'t convert boolean to string automatically, because the \""

    const-string v3, "boolean_format"

    const-string v4, "\" setting was "

    filled-new-array {v2, v3, v4, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lq0d;-><init>([Ljava/lang/Object;)V

    const-string p0, "If you need the same two values on most places, the programmers should set the \""

    const-string v1, "\" setting to something like \"yes,no\"."

    filled-new-array {p0, v3, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "If you just want \"true\"/\"false\" result as you are generting computer-language output, use \"?c\", like ${myBool?c}."

    const-string v2, "You can write myBool?string(\'yes\', \'no\') and like to specify boolean formatting in place."

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lq0d;->j([Ljava/lang/Object;)Lq0d;

    move-result-object p0

    return-object p0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->t()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public u()Lgc7;
    .locals 1

    iget-object v0, p0, Lfreemarker/core/Configurable;->s:Lgc7;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->u()Lgc7;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lfreemarker/core/Configurable;->u:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/Configurable;->t:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->v()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final w()Lfreemarker/core/Configurable;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    return-object p0
.end method

.method public x()Ljava/util/TimeZone;
    .locals 1

    iget-boolean v0, p0, Lfreemarker/core/Configurable;->l:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfreemarker/core/Configurable;->k:Ljava/util/TimeZone;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfreemarker/core/Configurable;->b:Lfreemarker/core/Configurable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfreemarker/core/Configurable;->x()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public y(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Configurable;->c:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method z(Z)Ljava/util/Set;
    .locals 0

    new-instance p0, Lc1d;

    if-eqz p1, :cond_0

    sget-object p1, Lfreemarker/core/Configurable;->D:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lfreemarker/core/Configurable;->C:[Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1}, Lc1d;-><init>([Ljava/lang/Object;)V

    return-object p0
.end method
