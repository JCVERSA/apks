.class public abstract Lzqj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lyqj;

.field public b:Lmrj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Lz9j;
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lzqj;->a:Lyqj;

    iput-object v0, p0, Lzqj;->b:Lmrj;

    return-void
.end method

.method public abstract d(Lhvg;)V
.end method

.method public abstract e()Z
.end method

.method public abstract f([Laaj;Lnpj;Lbnj;Lw4f;)Larj;
.end method

.method public abstract g(Ljava/lang/Object;)V
.end method

.method public final h()Lmrj;
    .locals 0

    iget-object p0, p0, Lzqj;->b:Lmrj;

    invoke-static {p0}, Ln7g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final i(Lyqj;Lmrj;)V
    .locals 0

    iput-object p1, p0, Lzqj;->a:Lyqj;

    iput-object p2, p0, Lzqj;->b:Lmrj;

    return-void
.end method

.method public final j()V
    .locals 0

    iget-object p0, p0, Lzqj;->a:Lyqj;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lyqj;->zzm()V

    :cond_0
    return-void
.end method
