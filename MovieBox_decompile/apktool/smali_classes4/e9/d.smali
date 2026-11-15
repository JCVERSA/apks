.class public final Le9/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lw8/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le9/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Le9/d;
    .locals 1

    .line 1
    invoke-static {}, Le9/d$a;->a()Le9/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static c()Le9/a;
    .locals 1

    .line 1
    invoke-static {}, Le9/b;->b()Le9/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lw8/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Le9/a;

    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public b()Le9/a;
    .locals 1

    .line 1
    invoke-static {}, Le9/d;->c()Le9/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le9/d;->b()Le9/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
