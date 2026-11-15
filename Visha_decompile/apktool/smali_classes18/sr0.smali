.class public final Lsr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhcb;


# instance fields
.field public final b:Lhcb;

.field public final c:Lxt1;

.field public final d:I


# direct methods
.method public constructor <init>(Lhcb;Lxt1;I)V
    .locals 1

    const-string v0, "originalDescriptor"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declarationDescriptor"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsr0;->b:Lhcb;

    iput-object p2, p0, Lsr0;->c:Lxt1;

    iput p3, p0, Lsr0;->d:I

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a()Lhcb;
    .locals 1

    .line 3
    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lhcb;->a()Lhcb;

    move-result-object p0

    const-string v0, "originalDescriptor.original"

    invoke-static {p0, v0}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic a()Lpx0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsr0;->a()Lhcb;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Lxt1;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lsr0;->a()Lhcb;

    move-result-object p0

    return-object p0
.end method

.method public a0()Lvx9;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lhcb;->a0()Lvx9;

    move-result-object p0

    return-object p0
.end method

.method public b()Lxt1;
    .locals 0

    iget-object p0, p0, Lsr0;->c:Lxt1;

    return-object p0
.end method

.method public getAnnotations()Lmd;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Ldd;->getAnnotations()Lmd;

    move-result-object p0

    return-object p0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lsr0;->d:I

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lhcb;->getIndex()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getName()Lby6;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lgy6;->getName()Lby6;

    move-result-object p0

    return-object p0
.end method

.method public getSource()Lyt9;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Ldu1;->getSource()Lyt9;

    move-result-object p0

    return-object p0
.end method

.method public getUpperBounds()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lhcb;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public h()Lkotlin/reflect/jvm/internal/impl/types/Variance;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lhcb;->h()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    return-object p0
.end method

.method public m()Lsbb;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lhcb;->m()Lsbb;

    move-result-object p0

    return-object p0
.end method

.method public q()Lsm9;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lpx0;->q()Lsm9;

    move-result-object p0

    return-object p0
.end method

.method public q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0, p1, p2}, Lxt1;->q0(Lbu1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "[inner-copy]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 0

    iget-object p0, p0, Lsr0;->b:Lhcb;

    invoke-interface {p0}, Lhcb;->u()Z

    move-result p0

    return p0
.end method
