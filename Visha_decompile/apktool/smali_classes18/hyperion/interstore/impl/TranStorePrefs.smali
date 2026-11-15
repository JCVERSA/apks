.class public final Lhyperion/interstore/impl/TranStorePrefs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpw4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhyperion/interstore/impl/TranStorePrefs$Companion;
    }
.end annotation


# static fields
.field public static final synthetic f:[Laf5;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroidx/databinding/ObservableArrayList;

.field public final d:Leo8;

.field public e:Landroidx/datastore/core/DataStore;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference2Impl;

    const-string v1, "getStringDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v2, 0x0

    const-class v3, Lhyperion/interstore/impl/TranStorePrefs;

    const-string v4, "stringDataStore"

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlin/jvm/internal/PropertyReference2Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lxq8;->k(Lkotlin/jvm/internal/PropertyReference2;)Ldf5;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Laf5;

    aput-object v0, v1, v2

    sput-object v1, Lhyperion/interstore/impl/TranStorePrefs;->f:[Laf5;

    new-instance v0, Lhyperion/interstore/impl/TranStorePrefs$Companion;

    invoke-direct {v0}, Lhyperion/interstore/impl/TranStorePrefs$Companion;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context_"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "namespace"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "StorePrefs"

    iput-object v0, p0, Lhyperion/interstore/impl/TranStorePrefs;->a:Ljava/lang/String;

    const-string v0, "1c1de458-c44b-11eb-8529-0242ac130003"

    iput-object v0, p0, Lhyperion/interstore/impl/TranStorePrefs;->b:Ljava/lang/String;

    new-instance v0, Landroidx/databinding/ObservableArrayList;

    invoke-direct {v0}, Landroidx/databinding/ObservableArrayList;-><init>()V

    iput-object v0, p0, Lhyperion/interstore/impl/TranStorePrefs;->c:Landroidx/databinding/ObservableArrayList;

    new-instance v2, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    new-instance v1, Lhyperion/interstore/impl/TranStorePrefs$stringDataStore$2;

    invoke-direct {v1, p0}, Lhyperion/interstore/impl/TranStorePrefs$stringDataStore$2;-><init>(Lhyperion/interstore/impl/TranStorePrefs;)V

    invoke-direct {v2, v1}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Le74;)V

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->preferencesDataStore$default(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Le74;Lnk1;ILjava/lang/Object;)Leo8;

    move-result-object p2

    iput-object p2, p0, Lhyperion/interstore/impl/TranStorePrefs;->d:Leo8;

    invoke-virtual {p0, p1}, Lhyperion/interstore/impl/TranStorePrefs;->g(Landroid/content/Context;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    iput-object p1, p0, Lhyperion/interstore/impl/TranStorePrefs;->e:Landroidx/datastore/core/DataStore;

    new-instance p1, Lhyperion/interstore/impl/TranStorePrefs$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lhyperion/interstore/impl/TranStorePrefs$1;-><init>(Lhyperion/interstore/impl/TranStorePrefs;Lwh1;)V

    const/4 v1, 0x1

    invoke-static {p2, p1, v1, p2}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lhyperion/interstore/impl/TranStorePrefs$2;

    invoke-direct {p1, p0}, Lhyperion/interstore/impl/TranStorePrefs$2;-><init>(Lhyperion/interstore/impl/TranStorePrefs;)V

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableArrayList;->addOnListChangedCallback(Landroidx/databinding/ObservableList$OnListChangedCallback;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 1

    invoke-static {p1}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object p1

    iget-object p0, p0, Lhyperion/interstore/impl/TranStorePrefs;->e:Landroidx/datastore/core/DataStore;

    invoke-interface {p0}, Landroidx/datastore/core/DataStore;->getData()Lnz3;

    move-result-object p0

    new-instance v0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1;

    invoke-direct {v0, p0, p1}, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1;-><init>(Lnz3;Landroidx/datastore/preferences/core/Preferences$Key;)V

    invoke-static {v0, p2}, Lsz3;->q(Lnz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lwh1;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lhyperion/interstore/impl/TranStorePrefs;->c:Landroidx/databinding/ObservableArrayList;

    invoke-static {p0}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;

    iget v1, v0, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;

    invoke-direct {v0, p0, p2}, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;-><init>(Lhyperion/interstore/impl/TranStorePrefs;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iput v3, v0, Lhyperion/interstore/impl/TranStorePrefs$loadBytes$1;->label:I

    invoke-virtual {p0, p1, v0}, Lhyperion/interstore/impl/TranStorePrefs;->a(Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {p0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a()Ljava/nio/charset/Charset;

    move-result-object p0

    const-string p1, "ISO88591"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string p1, "this as java.lang.String).getBytes(charset)"

    invoke-static {p0, p1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public final d(Ljava/lang/String;[BLwh1;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "ISO88591"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, p1, v1, p3}, Lhyperion/interstore/impl/TranStorePrefs;->f(Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final declared-synchronized e(Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 6

    monitor-enter p0

    :try_start_0
    instance-of v0, p2, Lhyperion/interstore/impl/TranStorePrefs$remove$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;

    iget v1, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->label:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;

    invoke-direct {v0, p0, p2}, Lhyperion/interstore/impl/TranStorePrefs$remove$1;-><init>(Lhyperion/interstore/impl/TranStorePrefs;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lhyperion/interstore/impl/TranStorePrefs;

    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/c;->b(Ljava/lang/Object;)V

    invoke-static {p1}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object p2

    iget-object v2, p0, Lhyperion/interstore/impl/TranStorePrefs;->e:Landroidx/datastore/core/DataStore;

    new-instance v4, Lhyperion/interstore/impl/TranStorePrefs$remove$2;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Lhyperion/interstore/impl/TranStorePrefs$remove$2;-><init>(Landroidx/datastore/preferences/core/Preferences$Key;Lwh1;)V

    iput-object p0, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lhyperion/interstore/impl/TranStorePrefs$remove$1;->label:I

    invoke-static {v2, v4, v0}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v1, :cond_3

    monitor-exit p0

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    :try_start_1
    iget-object p2, v0, Lhyperion/interstore/impl/TranStorePrefs;->c:Landroidx/databinding/ObservableArrayList;

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableArrayList;->remove(Ljava/lang/Object;)Z

    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized f(Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    instance-of v0, p3, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;

    iget v1, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->label:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;

    invoke-direct {v0, p0, p3}, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;-><init>(Lhyperion/interstore/impl/TranStorePrefs;Lwh1;)V

    :goto_0
    iget-object p3, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lhyperion/interstore/impl/TranStorePrefs;

    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/c;->b(Ljava/lang/Object;)V

    iput-object p0, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lhyperion/interstore/impl/TranStorePrefs$saveString$1;->label:I

    invoke-virtual {p0, p1, p2, v0}, Lhyperion/interstore/impl/TranStorePrefs;->h(Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v1, :cond_3

    monitor-exit p0

    return-object v1

    :cond_3
    move-object p2, p0

    :goto_1
    :try_start_1
    iget-object p3, p2, Lhyperion/interstore/impl/TranStorePrefs;->c:Landroidx/databinding/ObservableArrayList;

    invoke-virtual {p3, p1}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_4

    iget-object p2, p2, Lhyperion/interstore/impl/TranStorePrefs;->c:Landroidx/databinding/ObservableArrayList;

    invoke-virtual {p2, p1}, Landroidx/databinding/ObservableArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object p1, Lzfb;->a:Lzfb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final g(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 2

    iget-object p0, p0, Lhyperion/interstore/impl/TranStorePrefs;->d:Leo8;

    sget-object v0, Lhyperion/interstore/impl/TranStorePrefs;->f:[Laf5;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {p0, p1, v0}, Leo8;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/DataStore;

    return-object p0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Landroidx/datastore/preferences/core/PreferencesKeys;->stringKey(Ljava/lang/String;)Landroidx/datastore/preferences/core/Preferences$Key;

    move-result-object p1

    iget-object p0, p0, Lhyperion/interstore/impl/TranStorePrefs;->e:Landroidx/datastore/core/DataStore;

    new-instance v0, Lhyperion/interstore/impl/TranStorePrefs$saveStringInner$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lhyperion/interstore/impl/TranStorePrefs$saveStringInner$2;-><init>(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/String;Lwh1;)V

    invoke-static {p0, v0, p3}, Landroidx/datastore/preferences/core/PreferencesKt;->edit(Landroidx/datastore/core/DataStore;Ls74;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final i(Ljava/lang/String;[BLwh1;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a:Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;

    invoke-virtual {v0}, Lcom/transsion/security/aosp/hap/base/TranConstantsTmp;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "ISO88591"

    invoke-static {v0, v1}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {p0, p1, v1, p3}, Lhyperion/interstore/impl/TranStorePrefs;->h(Ljava/lang/String;Ljava/lang/String;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
