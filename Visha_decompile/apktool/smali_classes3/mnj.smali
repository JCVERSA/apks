.class public final synthetic Lmnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqfg;


# instance fields
.field public final synthetic a:Lrnj;

.field public final synthetic b:Lsmj;

.field public final synthetic c:Lxmj;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lrnj;Lsmj;Lxmj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmnj;->a:Lrnj;

    iput-object p2, p0, Lmnj;->b:Lsmj;

    iput-object p3, p0, Lmnj;->c:Lxmj;

    iput p4, p0, Lmnj;->d:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lmnj;->a:Lrnj;

    iget-object v3, v0, Lrnj;->b:Lbnj;

    iget-object v4, p0, Lmnj;->b:Lsmj;

    iget-object v5, p0, Lmnj;->c:Lxmj;

    iget v6, p0, Lmnj;->d:I

    move-object v1, p1

    check-cast v1, Lsnj;

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v6}, Lsnj;->G(ILbnj;Lsmj;Lxmj;I)V

    return-void
.end method
