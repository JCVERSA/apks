.class public final Lnz4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lqe5;


# instance fields
.field public final b:Lc74;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 1

    const-string v0, "iteratorFactory"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnz4;->b:Lc74;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Loz4;

    iget-object p0, p0, Lnz4;->b:Lc74;

    invoke-interface {p0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0}, Loz4;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
