.class public final synthetic Llnj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqfg;


# instance fields
.field public final synthetic a:Lrnj;

.field public final synthetic b:Lxmj;


# direct methods
.method public synthetic constructor <init>(Lrnj;Lxmj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llnj;->a:Lrnj;

    iput-object p2, p0, Llnj;->b:Lxmj;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Llnj;->a:Lrnj;

    iget-object v0, v0, Lrnj;->b:Lbnj;

    iget-object p0, p0, Llnj;->b:Lxmj;

    check-cast p1, Lsnj;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0, p0}, Lsnj;->O(ILbnj;Lxmj;)V

    return-void
.end method
