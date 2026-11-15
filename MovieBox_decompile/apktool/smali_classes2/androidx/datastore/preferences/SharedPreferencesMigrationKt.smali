.class public abstract Landroidx/datastore/preferences/SharedPreferencesMigrationKt;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a:Ljava/util/Set;

    .line 7
    .line 8
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Landroidx/datastore/migrations/SharedPreferencesMigration;
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sharedPreferencesName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "keysToMigrate"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a:Ljava/util/Set;

    .line 17
    .line 18
    if-ne p2, v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Landroidx/datastore/migrations/SharedPreferencesMigration;

    .line 21
    .line 22
    invoke-static {p2}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->e(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-static {}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->d()Lkotlin/jvm/functions/Function3;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    const/4 v7, 0x4

    .line 31
    const/4 v8, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    move-object v1, v0

    .line 34
    move-object v2, p0

    .line 35
    move-object v3, p1

    .line 36
    move-object v4, v9

    .line 37
    invoke-direct/range {v1 .. v8}, Landroidx/datastore/migrations/SharedPreferencesMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v6, Landroidx/datastore/migrations/SharedPreferencesMigration;

    .line 42
    .line 43
    invoke-static {p2}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->e(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-static {}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->d()Lkotlin/jvm/functions/Function3;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    move-object v0, v6

    .line 52
    move-object v1, p0

    .line 53
    move-object v2, p1

    .line 54
    move-object v3, p2

    .line 55
    move-object v4, v5

    .line 56
    move-object v5, v7

    .line 57
    invoke-direct/range {v0 .. v5}, Landroidx/datastore/migrations/SharedPreferencesMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-object v0
.end method

.method public static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Landroidx/datastore/migrations/SharedPreferencesMigration;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a:Ljava/util/Set;

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Landroidx/datastore/migrations/SharedPreferencesMigration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static final c()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->a:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final d()Lkotlin/jvm/functions/Function3;
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getMigrationFunction$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method private static final e(Ljava/util/Set;)Lkotlin/jvm/functions/Function2;
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getShouldRunMigration$1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt$getShouldRunMigration$1;-><init>(Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
