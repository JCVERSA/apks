.class public abstract Lopj;
.super Ljmj;
.source "SourceFile"


# instance fields
.field public final k:Lknj;


# direct methods
.method public constructor <init>(Lknj;)V
    .locals 0

    invoke-direct {p0}, Ljmj;-><init>()V

    iput-object p1, p0, Lopj;->k:Lknj;

    return-void
.end method


# virtual methods
.method public final synthetic A(Ljava/lang/Object;JLbnj;)J
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-wide p2
.end method

.method public final synthetic B(Ljava/lang/Object;Lbnj;)Lbnj;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p2}, Lopj;->C(Lbnj;)Lbnj;

    move-result-object p0

    return-object p0
.end method

.method public abstract C(Lbnj;)Lbnj;
.end method

.method public abstract D(Lw4f;)V
.end method

.method public abstract E()V
.end method

.method public abstract h(Lzmj;)V
.end method

.method public final t(Lixi;)V
    .locals 0

    invoke-super {p0, p1}, Ljmj;->t(Lixi;)V

    invoke-virtual {p0}, Lopj;->E()V

    return-void
.end method

.method public final synthetic x(Ljava/lang/Object;Lknj;Lw4f;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p3}, Lopj;->D(Lw4f;)V

    return-void
.end method

.method public final bridge synthetic z(Ljava/lang/Object;I)I
    .locals 0

    check-cast p1, Ljava/lang/Void;

    const/4 p0, 0x0

    return p0
.end method

.method public final zzJ()Lcme;
    .locals 0

    iget-object p0, p0, Lopj;->k:Lknj;

    invoke-interface {p0}, Lknj;->zzJ()Lcme;

    move-result-object p0

    return-object p0
.end method

.method public final zzM()Lw4f;
    .locals 0

    iget-object p0, p0, Lopj;->k:Lknj;

    invoke-interface {p0}, Lknj;->zzM()Lw4f;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzv()Z
    .locals 0

    iget-object p0, p0, Lopj;->k:Lknj;

    invoke-interface {p0}, Lknj;->zzv()Z

    const/4 p0, 0x1

    return p0
.end method
