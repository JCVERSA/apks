.class public final synthetic Lnnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqfg;


# instance fields
.field public final synthetic a:Lrnj;

.field public final synthetic b:Lsmj;

.field public final synthetic c:Lxmj;


# direct methods
.method public synthetic constructor <init>(Lrnj;Lsmj;Lxmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnnj;->a:Lrnj;

    iput-object p2, p0, Lnnj;->b:Lsmj;

    iput-object p3, p0, Lnnj;->c:Lxmj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lnnj;->a:Lrnj;

    iget-object v0, v0, Lrnj;->b:Lbnj;

    iget-object v1, p0, Lnnj;->b:Lsmj;

    iget-object p0, p0, Lnnj;->c:Lxmj;

    check-cast p1, Lsnj;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1, p0}, Lsnj;->L(ILbnj;Lsmj;Lxmj;)V

    return-void
.end method
