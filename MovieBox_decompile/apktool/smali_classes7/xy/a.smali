.class public abstract Lxy/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/database/DataSetObservable;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lxy/a;->a:Landroid/database/DataSetObservable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Landroid/content/Context;)Lxy/c;
.end method

.method public abstract c(Landroid/content/Context;I)Lxy/d;
.end method

.method public d(Landroid/content/Context;I)F
    .locals 0

    .line 1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    .line 3
    return p1
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lxy/a;->a:Landroid/database/DataSetObservable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final f(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxy/a;->a:Landroid/database/DataSetObservable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxy/a;->a:Landroid/database/DataSetObservable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
