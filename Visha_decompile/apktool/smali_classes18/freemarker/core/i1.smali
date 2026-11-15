.class public Lfreemarker/core/i1;
.super Lfreemarker/core/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/i1$a;
    }
.end annotation


# static fields
.field public static final k:Ljava/lang/Class;

.field public static l:Ljava/lang/Class;

.field public static synthetic m:Ljava/lang/Class;

.field public static synthetic n:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lfreemarker/core/i1;->m:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "freemarker.ext.beans.BeanModel"

    invoke-static {v0}, Lfreemarker/core/i1;->h0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lfreemarker/core/i1;->m:Ljava/lang/Class;

    :cond_0
    sput-object v0, Lfreemarker/core/i1;->k:Ljava/lang/Class;

    :try_start_0
    const-class v0, Lud5;

    sget-object v1, Lud5;->d:Lfq6;

    sput-object v0, Lfreemarker/core/i1;->l:Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    sput-object v0, Lfreemarker/core/i1;->l:Ljava/lang/Class;

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/j;-><init>()V

    return-void
.end method

.method public static synthetic h0(Ljava/lang/String;)Ljava/lang/Class;
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
.method public F(Lfreemarker/core/Environment;)Lzfa;
    .locals 3

    new-instance v0, Lfreemarker/core/i1$a;

    iget-object v1, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v1, p1}, Lfreemarker/core/t0;->L(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/j;->h:Lfreemarker/core/t0;

    invoke-virtual {v2}, Lfreemarker/core/t1;->y()Lfreemarker/template/Template;

    move-result-object v2

    invoke-direct {v0, p0, v1, p1, v2}, Lfreemarker/core/i1$a;-><init>(Lfreemarker/core/i1;Ljava/lang/String;Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    return-object v0
.end method
