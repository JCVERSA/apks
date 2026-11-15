.class public final Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->a:Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroidx/datastore/core/w;Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;)Landroidx/datastore/core/g;
    .locals 2

    .line 1
    const-string v0, "storage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "migrations"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scope"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/datastore/preferences/core/PreferenceDataStore;

    .line 17
    .line 18
    sget-object v1, Landroidx/datastore/core/h;->a:Landroidx/datastore/core/h;

    .line 19
    .line 20
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/datastore/core/h;->a(Landroidx/datastore/core/w;Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;)Landroidx/datastore/core/g;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v0, p1}, Landroidx/datastore/preferences/core/PreferenceDataStore;-><init>(Landroidx/datastore/core/g;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public final b(Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/g;
    .locals 7

    .line 1
    const-string v0, "migrations"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "produceFile"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/datastore/core/FileStorage;

    .line 17
    .line 18
    sget-object v2, Landroidx/datastore/preferences/core/e;->a:Landroidx/datastore/preferences/core/e;

    .line 19
    .line 20
    new-instance v4, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory$create$delegate$1;

    .line 21
    .line 22
    invoke-direct {v4, p4}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory$create$delegate$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v6}, Landroidx/datastore/core/FileStorage;-><init>(Landroidx/datastore/core/t;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->a(Landroidx/datastore/core/w;Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;)Landroidx/datastore/core/g;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Landroidx/datastore/preferences/core/PreferenceDataStore;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Landroidx/datastore/preferences/core/PreferenceDataStore;-><init>(Landroidx/datastore/core/g;)V

    .line 39
    .line 40
    .line 41
    return-object p2
.end method
