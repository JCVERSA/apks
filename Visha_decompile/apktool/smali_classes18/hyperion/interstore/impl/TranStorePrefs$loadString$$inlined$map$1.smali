.class public final Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhyperion/interstore/impl/TranStorePrefs;->a(Ljava/lang/String;Lwh1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lnz3;

.field public final synthetic c:Landroidx/datastore/preferences/core/Preferences$Key;


# direct methods
.method public constructor <init>(Lnz3;Landroidx/datastore/preferences/core/Preferences$Key;)V
    .locals 0

    iput-object p1, p0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1;->b:Lnz3;

    iput-object p2, p0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(Loz3;Lwh1;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1;->b:Lnz3;

    new-instance v1, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2;

    iget-object p0, p0, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-direct {v1, p1, p0}, Lhyperion/interstore/impl/TranStorePrefs$loadString$$inlined$map$1$2;-><init>(Loz3;Landroidx/datastore/preferences/core/Preferences$Key;)V

    invoke-interface {v0, v1, p2}, Lnz3;->collect(Loz3;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
