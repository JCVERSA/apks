.class public final synthetic Ltkb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/g;

.field public final synthetic c:Ljava/lang/Runnable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/g;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltkb;->b:Lcom/google/common/util/concurrent/g;

    iput-object p2, p0, Ltkb;->c:Ljava/lang/Runnable;

    iput-object p3, p0, Ltkb;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltkb;->b:Lcom/google/common/util/concurrent/g;

    iget-object v1, p0, Ltkb;->c:Ljava/lang/Runnable;

    iget-object p0, p0, Ltkb;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Util;->a(Lcom/google/common/util/concurrent/g;Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method
