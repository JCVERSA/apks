.class public final Llt8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc74;

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc74;)V
    .locals 1

    const-string v0, "initializer"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llt8;->a:Lc74;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llt8;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Llt8;->a:Lc74;

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Llt8;->b:Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Llt8;->b:Ljava/lang/Object;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Set to null by another thread"

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Llt8;->b:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Llt8;->b:Ljava/lang/Object;

    return-void
.end method
