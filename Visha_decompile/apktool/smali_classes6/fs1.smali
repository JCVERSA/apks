.class public final synthetic Lfs1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lw74;

.field public final synthetic c:Lcom/transsion/dbdata/engine/base/scope/DataScope;

.field public final synthetic d:Lns1;

.field public final synthetic e:I

.field public final synthetic f:Lnu4;


# direct methods
.method public synthetic constructor <init>(Lw74;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;ILnu4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfs1;->b:Lw74;

    iput-object p2, p0, Lfs1;->c:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    iput-object p3, p0, Lfs1;->d:Lns1;

    iput p4, p0, Lfs1;->e:I

    iput-object p5, p0, Lfs1;->f:Lnu4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lfs1;->b:Lw74;

    iget-object v1, p0, Lfs1;->c:Lcom/transsion/dbdata/engine/base/scope/DataScope;

    iget-object v2, p0, Lfs1;->d:Lns1;

    iget v3, p0, Lfs1;->e:I

    iget-object p0, p0, Lfs1;->f:Lnu4;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/dbdata/engine/DataEngine;->f(Lw74;Lcom/transsion/dbdata/engine/base/scope/DataScope;Lns1;ILnu4;)V

    return-void
.end method
