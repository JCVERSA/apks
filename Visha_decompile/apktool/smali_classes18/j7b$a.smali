.class public final Lj7b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lqe5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj7b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;

.field public final synthetic c:Lj7b;


# direct methods
.method public constructor <init>(Lj7b;)V
    .locals 0

    iput-object p1, p0, Lj7b$a;->c:Lj7b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lj7b;->b(Lj7b;)Lpc9;

    move-result-object p1

    invoke-interface {p1}, Lpc9;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lj7b$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lj7b$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj7b$a;->c:Lj7b;

    invoke-static {v0}, Lj7b;->c(Lj7b;)Le74;

    move-result-object v0

    iget-object p0, p0, Lj7b$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
