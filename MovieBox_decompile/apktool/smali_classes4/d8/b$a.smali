.class Ld8/b$a;
.super Ld8/b;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lx7/a;

    .line 7
    .line 8
    invoke-direct {v1}, Lx7/a;-><init>()V

    .line 9
    .line 10
    .line 11
    const-class v2, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v1, Lx7/b;

    .line 17
    .line 18
    invoke-direct {v1}, Lx7/b;-><init>()V

    .line 19
    .line 20
    .line 21
    const-class v2, Landroid/content/Intent;

    .line 22
    .line 23
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Ld8/b$a;->b:Ljava/util/Map;

    .line 31
    .line 32
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld8/b;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Ld8/b$a;->b:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method b()Lg8/c;
    .locals 1

    .line 1
    new-instance v0, Lg8/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lg8/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "XLog"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
    const-string v0, "XLog"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method
