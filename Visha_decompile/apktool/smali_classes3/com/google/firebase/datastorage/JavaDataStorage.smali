.class public final Lcom/google/firebase/datastorage/JavaDataStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:[Laf5;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/ThreadLocal;

.field public final d:Leo8;

.field public final e:Landroidx/datastore/core/DataStore;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference2Impl;

    const-string v1, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v2, 0x0

    const-class v3, Lcom/google/firebase/datastorage/JavaDataStorage;

    const-string v4, "dataStore"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference2Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->k(Lkotlin/jvm/internal/PropertyReference2;)Ldf5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/firebase/datastorage/JavaDataStorage;->f:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->c:Ljava/lang/ThreadLocal;

    new-instance v2, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    new-instance v0, Ld75;

    invoke-direct {v0, p0}, Ld75;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;)V

    invoke-direct {v2, v0}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Le74;)V

    new-instance v3, Le75;

    invoke-direct {v3, p0}, Le75;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;)V

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->preferencesDataStore$default(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Le74;Lnk1;ILjava/lang/Object;)Leo8;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->d:Leo8;

    invoke-virtual {p0, p1}, Lcom/google/firebase/datastorage/JavaDataStorage;->i(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->e:Landroidx/datastore/core/DataStore;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/datastorage/JavaDataStorage;Landroid/content/Context;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/datastorage/JavaDataStorage;->f(Lcom/google/firebase/datastorage/JavaDataStorage;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/core/CorruptionException;)Landroidx/datastore/preferences/core/Preferences;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/datastorage/JavaDataStorage;->e(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/core/CorruptionException;)Landroidx/datastore/preferences/core/Preferences;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/google/firebase/datastorage/JavaDataStorage;)Landroidx/datastore/core/DataStore;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->e:Landroidx/datastore/core/DataStore;

    return-object p0
.end method

.method public static final synthetic d(Lcom/google/firebase/datastorage/JavaDataStorage;)Ljava/lang/ThreadLocal;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->c:Ljava/lang/ThreadLocal;

    return-object p0
.end method

.method public static final e(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/core/CorruptionException;)Landroidx/datastore/preferences/core/Preferences;
    .locals 3

    const-string v0, "ex"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/google/firebase/datastorage/JavaDataStorage;

    invoke-static {v0}, Lxq8;->b(Ljava/lang/Class;)Lde5;

    move-result-object v0

    invoke-interface {v0}, Lde5;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CorruptionException in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " DataStore running in process "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroidx/datastore/preferences/core/PreferencesFactory;->createEmpty()Landroidx/datastore/preferences/core/Preferences;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Lcom/google/firebase/datastorage/JavaDataStorage;Landroid/content/Context;)Ljava/util/List;
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->b:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p1, p0, v0, v1, v0}, Landroidx/datastore/preferences/SharedPreferencesMigrationKt;->SharedPreferencesMigration$default(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;ILjava/lang/Object;)Landroidx/datastore/migrations/SharedPreferencesMigration;

    move-result-object p0

    invoke-static {p0}, Lx71;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final g(Le74;)Landroidx/datastore/preferences/core/Preferences;
    .locals 2

    const-string v0, "transform"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$editSync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/firebase/datastorage/JavaDataStorage$editSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Le74;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/core/Preferences;

    return-object p0
.end method

.method public final h()Ljava/util/Map;
    .locals 2

    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$getAllSync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/datastorage/JavaDataStorage$getAllSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final i(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 2

    iget-object p0, p0, Lcom/google/firebase/datastorage/JavaDataStorage;->d:Leo8;

    sget-object v0, Lcom/google/firebase/datastorage/JavaDataStorage;->f:[Laf5;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0, p1, v0}, Leo8;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/DataStore;

    return-object p0
.end method

.method public final j(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/firebase/datastorage/JavaDataStorage$getSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final k(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Landroidx/datastore/preferences/core/Preferences;
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/firebase/datastorage/JavaDataStorage$putSync$1;-><init>(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {v1, v0, p0, v1}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/core/Preferences;

    return-object p0
.end method
