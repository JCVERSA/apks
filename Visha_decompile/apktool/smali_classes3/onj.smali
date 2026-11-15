.class public final synthetic Lonj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqfg;


# instance fields
.field public final synthetic a:Lrnj;

.field public final synthetic b:Lsmj;

.field public final synthetic c:Lxmj;

.field public final synthetic d:Ljava/io/IOException;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lrnj;Lsmj;Lxmj;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lonj;->a:Lrnj;

    iput-object p2, p0, Lonj;->b:Lsmj;

    iput-object p3, p0, Lonj;->c:Lxmj;

    iput-object p4, p0, Lonj;->d:Ljava/io/IOException;

    iput-boolean p5, p0, Lonj;->e:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lonj;->a:Lrnj;

    iget-object v3, v0, Lrnj;->b:Lbnj;

    iget-object v4, p0, Lonj;->b:Lsmj;

    iget-object v5, p0, Lonj;->c:Lxmj;

    iget-object v6, p0, Lonj;->d:Ljava/io/IOException;

    iget-boolean v7, p0, Lonj;->e:Z

    move-object v1, p1

    check-cast v1, Lsnj;

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v7}, Lsnj;->t(ILbnj;Lsmj;Lxmj;Ljava/io/IOException;Z)V

    return-void
.end method
