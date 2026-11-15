.class public abstract Lkl/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl/c$d;,
        Lkl/c$b;,
        Lkl/c$c;,
        Lkl/c$a;
    }
.end annotation


# static fields
.field private static final a:Lkl/c$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkl/c$e;

    .line 2
    .line 3
    invoke-direct {v0}, Lkl/c$e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkl/c;->a:Lkl/c$c;

    .line 7
    .line 8
    return-void
.end method

.method private static a(Lkl/f;Lkl/c$a;)Lkl/f;
    .locals 1

    .line 1
    sget-object v0, Lkl/c;->a:Lkl/c$c;

    .line 2
    .line 3
    invoke-static {p0, p1, v0}, Lkl/c;->b(Lkl/f;Lkl/c$a;Lkl/c$c;)Lkl/f;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static b(Lkl/f;Lkl/c$a;Lkl/c$c;)Lkl/f;
    .locals 1

    .line 1
    new-instance v0, Lkl/c$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lkl/c$d;-><init>(Lkl/f;Lkl/c$a;Lkl/c$c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(ILkl/c$a;)Lkl/f;
    .locals 1

    .line 1
    new-instance v0, Lkl/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkl/h;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0, p1}, Lkl/c;->a(Lkl/f;Lkl/c$a;)Lkl/f;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
