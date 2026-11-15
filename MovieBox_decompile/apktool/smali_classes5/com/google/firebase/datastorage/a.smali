.class public final synthetic Lcom/google/firebase/datastorage/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/google/firebase/datastorage/JavaDataStorage;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/datastorage/JavaDataStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/datastorage/a;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/datastorage/a;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    .line 2
    .line 3
    check-cast p1, Landroidx/datastore/core/CorruptionException;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/firebase/datastorage/JavaDataStorage;->b(Lcom/google/firebase/datastorage/JavaDataStorage;Landroidx/datastore/core/CorruptionException;)Landroidx/datastore/preferences/core/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
