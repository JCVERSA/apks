.class Lcom/mgadplus/d/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/d/a;->e(Ljava/util/concurrent/Executor;Lw5d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Executor;

.field final synthetic b:Lw5d;

.field final synthetic c:Lcom/mgadplus/d/a;


# direct methods
.method public constructor <init>(Lcom/mgadplus/d/a;Ljava/util/concurrent/Executor;Lw5d;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/d/a$2;->c:Lcom/mgadplus/d/a;

    iput-object p2, p0, Lcom/mgadplus/d/a$2;->a:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/mgadplus/d/a$2;->b:Lw5d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/d/a$2;->c:Lcom/mgadplus/d/a;

    iget-object v1, p0, Lcom/mgadplus/d/a$2;->a:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/mgadplus/d/a$2;->b:Lw5d;

    invoke-static {v0, v1, p0}, Lcom/mgadplus/d/a;->d(Lcom/mgadplus/d/a;Ljava/util/concurrent/Executor;Lw5d;)V

    return-void
.end method
