.class public final synthetic Lrkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lim5;

.field public final synthetic c:Lcom/google/common/util/concurrent/g;

.field public final synthetic d:Lgj;


# direct methods
.method public synthetic constructor <init>(Lim5;Lcom/google/common/util/concurrent/g;Lgj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrkb;->b:Lim5;

    iput-object p2, p0, Lrkb;->c:Lcom/google/common/util/concurrent/g;

    iput-object p3, p0, Lrkb;->d:Lgj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lrkb;->b:Lim5;

    iget-object v1, p0, Lrkb;->c:Lcom/google/common/util/concurrent/g;

    iget-object p0, p0, Lrkb;->d:Lgj;

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Util;->c(Lim5;Lcom/google/common/util/concurrent/g;Lgj;)V

    return-void
.end method
