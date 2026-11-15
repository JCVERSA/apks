.class public final Landroidx/datastore/preferences/core/PreferenceDataStore;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/datastore/core/g;


# instance fields
.field private final a:Landroidx/datastore/core/g;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/g;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/datastore/preferences/core/PreferenceDataStore;->a:Landroidx/datastore/core/g;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/core/PreferenceDataStore;->a:Landroidx/datastore/core/g;

    .line 2
    .line 3
    new-instance v1, Landroidx/datastore/preferences/core/PreferenceDataStore$updateData$2;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Landroidx/datastore/preferences/core/PreferenceDataStore$updateData$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, p2}, Landroidx/datastore/core/g;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getData()Lkotlinx/coroutines/flow/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/core/PreferenceDataStore;->a:Landroidx/datastore/core/g;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/datastore/core/g;->getData()Lkotlinx/coroutines/flow/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
