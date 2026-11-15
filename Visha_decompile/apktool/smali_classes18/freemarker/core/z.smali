.class public abstract Lfreemarker/core/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/z$a;,
        Lfreemarker/core/z$y;,
        Lfreemarker/core/z$x;,
        Lfreemarker/core/z$w;,
        Lfreemarker/core/z$v;,
        Lfreemarker/core/z$u;,
        Lfreemarker/core/z$t;,
        Lfreemarker/core/z$s;,
        Lfreemarker/core/z$r;,
        Lfreemarker/core/z$q;,
        Lfreemarker/core/z$p;,
        Lfreemarker/core/z$o;,
        Lfreemarker/core/z$m;,
        Lfreemarker/core/z$n;,
        Lfreemarker/core/z$l;,
        Lfreemarker/core/z$k;,
        Lfreemarker/core/z$j;,
        Lfreemarker/core/z$i;,
        Lfreemarker/core/z$h;,
        Lfreemarker/core/z$g;,
        Lfreemarker/core/z$f;,
        Lfreemarker/core/z$e;,
        Lfreemarker/core/z$b;,
        Lfreemarker/core/z$d;,
        Lfreemarker/core/z$c;
    }
.end annotation


# static fields
.field public static synthetic a:Ljava/lang/Class;

.field public static synthetic b:Ljava/lang/Class;

.field public static synthetic c:Ljava/lang/Class;

.field public static synthetic d:Ljava/lang/Class;

.field public static synthetic e:Ljava/lang/Class;

.field public static synthetic f:Ljava/lang/Class;

.field public static synthetic g:Ljava/lang/Class;

.field public static synthetic h:Ljava/lang/Class;

.field public static synthetic i:Ljava/lang/Class;


# direct methods
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
