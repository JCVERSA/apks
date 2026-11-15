.class public final Lmu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lqe5;


# instance fields
.field public final b:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public constructor <init>(Landroidx/collection/SparseArrayCompat;)V
    .locals 1

    const-string v0, "array"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmu9;->b:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lnu9;

    iget-object p0, p0, Lmu9;->b:Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0, p0}, Lnu9;-><init>(Landroidx/collection/SparseArrayCompat;)V

    return-object v0
.end method
