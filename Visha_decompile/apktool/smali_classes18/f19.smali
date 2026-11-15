.class public final Lf19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le19;


# instance fields
.field public final a:Ljava/lang/Iterable;

.field public final b:Lbq0;


# direct methods
.method public constructor <init>(Lvx9;Ljava/lang/Iterable;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samWithReceiverResolvers"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lf19;->a:Ljava/lang/Iterable;

    invoke-interface {p1}, Lvx9;->f()Lbq0;

    move-result-object p1

    iput-object p1, p0, Lf19;->b:Lbq0;

    return-void
.end method
