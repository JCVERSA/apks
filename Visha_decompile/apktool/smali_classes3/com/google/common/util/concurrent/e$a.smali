.class public abstract Lcom/google/common/util/concurrent/e$a;
.super Lcom/google/common/util/concurrent/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public final b:Lim5;


# direct methods
.method public constructor <init>(Lim5;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/e;-><init>()V

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lim5;

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$a;->b:Lim5;

    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/e$a;->k()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic f()Ljava/util/concurrent/Future;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/e$a;->k()Lim5;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lim5;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/e$a;->b:Lim5;

    return-object p0
.end method
