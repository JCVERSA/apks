.class public abstract Landroidx/datastore/preferences/core/c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/core/c$a;,
        Landroidx/datastore/preferences/core/c$b;
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


# virtual methods
.method public abstract a()Ljava/util/Map;
.end method

.method public abstract b(Landroidx/datastore/preferences/core/c$a;)Ljava/lang/Object;
.end method

.method public final c()Landroidx/datastore/preferences/core/MutablePreferences;
    .locals 3

    .line 1
    new-instance v0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/c;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v0, v1, v2}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/Map;Z)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final d()Landroidx/datastore/preferences/core/c;
    .locals 3

    .line 1
    new-instance v0, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/c;->a()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lkotlin/collections/MapsKt;->w(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v0, v1, v2}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/Map;Z)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
