.class public final Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1;->collect(Loz3;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Loz3;

.field public final synthetic c:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method public constructor <init>(Loz3;Landroidx/datastore/preferences/core/Preferences$Key;)V
    .locals 0

    iput-object p1, p0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2;->b:Loz3;

    iput-object p2, p0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;

    iget v1, v0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;-><init>(Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2;Lwh1;)V

    :goto_0
    iget-object p2, v0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;->label:I

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

    iget-object p2, p0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2;->b:Loz3;

    check-cast p1, Landroidx/datastore/preferences/core/Preferences;

    iget-object p0, p0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/core/Preferences;->get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object p0

    iput v3, v0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, p0, v0}, Loz3;->emit(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
