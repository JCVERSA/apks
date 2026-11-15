.class public Ld8/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/b$a;
    }
.end annotation


# static fields
.field private static final a:Ld8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ld8/b;->d()Ld8/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Ld8/b;->a:Ld8/b;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static d()Ld8/b;
    .locals 1

    .line 1
    :try_start_0
    const-string v0, "android.os.Build"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ld8/b$a;

    .line 7
    .line 8
    invoke-direct {v0}, Ld8/b$a;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-object v0

    .line 12
    :catch_0
    new-instance v0, Ld8/b;

    .line 13
    .line 14
    invoke-direct {v0}, Ld8/b;-><init>()V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static e()Ld8/b;
    .locals 1

    .line 1
    sget-object v0, Ld8/b;->a:Ld8/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method b()Lg8/c;
    .locals 1

    .line 1
    new-instance v0, Lg8/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lg8/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
