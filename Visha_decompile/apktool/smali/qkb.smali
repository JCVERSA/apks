.class public final synthetic Lqkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/g;

.field public final synthetic c:Lim5;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/g;Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqkb;->b:Lcom/google/common/util/concurrent/g;

    iput-object p2, p0, Lqkb;->c:Lim5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lqkb;->b:Lcom/google/common/util/concurrent/g;

    iget-object p0, p0, Lqkb;->c:Lim5;

    invoke-static {v0, p0}, Landroidx/media3/common/util/Util;->b(Lcom/google/common/util/concurrent/g;Lim5;)V

    return-void
.end method
