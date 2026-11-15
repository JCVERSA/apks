.class public final Lhyperion/interstore/impl/TranStorePrefs$2;
.super Landroidx/databinding/ObservableList$OnListChangedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhyperion/interstore/impl/TranStorePrefs;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/ObservableList$OnListChangedCallback<",
        "Landroidx/databinding/ObservableList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lhyperion/interstore/impl/TranStorePrefs;


# direct methods
.method public constructor <init>(Lhyperion/interstore/impl/TranStorePrefs;)V
    .locals 0

    iput-object p1, p0, Lhyperion/interstore/impl/TranStorePrefs$2;->a:Lhyperion/interstore/impl/TranStorePrefs;

    invoke-direct {p0}, Landroidx/databinding/ObservableList$OnListChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroidx/databinding/ObservableList;)V
    .locals 0

    return-void
.end method

.method public final onItemRangeChanged(Landroidx/databinding/ObservableList;II)V
    .locals 0

    return-void
.end method

.method public final onItemRangeInserted(Landroidx/databinding/ObservableList;II)V
    .locals 0

    new-instance p2, Lhyperion/interstore/impl/TranStorePrefs$2$onItemRangeInserted$1;

    iget-object p0, p0, Lhyperion/interstore/impl/TranStorePrefs$2;->a:Lhyperion/interstore/impl/TranStorePrefs;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lhyperion/interstore/impl/TranStorePrefs$2$onItemRangeInserted$1;-><init>(Landroidx/databinding/ObservableList;Lhyperion/interstore/impl/TranStorePrefs;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {p3, p2, p0, p3}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onItemRangeMoved(Landroidx/databinding/ObservableList;III)V
    .locals 0

    return-void
.end method

.method public final onItemRangeRemoved(Landroidx/databinding/ObservableList;II)V
    .locals 0

    new-instance p2, Lhyperion/interstore/impl/TranStorePrefs$2$onItemRangeRemoved$1;

    iget-object p0, p0, Lhyperion/interstore/impl/TranStorePrefs$2;->a:Lhyperion/interstore/impl/TranStorePrefs;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p0, p3}, Lhyperion/interstore/impl/TranStorePrefs$2$onItemRangeRemoved$1;-><init>(Landroidx/databinding/ObservableList;Lhyperion/interstore/impl/TranStorePrefs;Lwh1;)V

    const/4 p0, 0x1

    invoke-static {p3, p2, p0, p3}, Lcl0;->f(Lkotlin/coroutines/d;Ls74;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
