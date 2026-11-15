.class public final Lnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmd;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lo54;)Lgd;
    .locals 0

    invoke-static {p0, p1}, Lmd$b;->a(Lmd;Lo54;)Lgd;

    move-result-object p0

    return-object p0
.end method

.method public h(Lo54;)Z
    .locals 0

    invoke-static {p0, p1}, Lmd$b;->b(Lmd;Lo54;)Z

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnd;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lnd;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnd;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
