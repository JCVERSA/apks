.class public Lbp1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbp1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lzb1;

.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lzb1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbp1$b;->b:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lbp1$b;->c:Ljava/util/Set;

    iput-object p1, p0, Lbp1$b;->a:Lzb1;

    return-void
.end method


# virtual methods
.method public a(Lbp1$b;)V
    .locals 0

    iget-object p0, p0, Lbp1$b;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lbp1$b;)V
    .locals 0

    iget-object p0, p0, Lbp1$b;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lzb1;
    .locals 0

    iget-object p0, p0, Lbp1$b;->a:Lzb1;

    return-object p0
.end method

.method public d()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lbp1$b;->b:Ljava/util/Set;

    return-object p0
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lbp1$b;->b:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 0

    iget-object p0, p0, Lbp1$b;->c:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public g(Lbp1$b;)V
    .locals 0

    iget-object p0, p0, Lbp1$b;->c:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
