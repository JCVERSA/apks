.class public Lcom/mgadplus/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/d/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/d/a;->e(Ljava/util/concurrent/Executor;Lw5d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Executor;

.field public final synthetic b:Lcom/mgadplus/d/a;


# direct methods
.method public constructor <init>(Lcom/mgadplus/d/a;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/d/a$a;->b:Lcom/mgadplus/d/a;

    iput-object p2, p0, Lcom/mgadplus/d/a$a;->a:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/mgadplus/d/a$a;->b:Lcom/mgadplus/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mgadplus/d/a;->b(Lcom/mgadplus/d/a;Lcom/mgadplus/d/c;)Lcom/mgadplus/d/c;

    iget-object v0, p0, Lcom/mgadplus/d/a$a;->b:Lcom/mgadplus/d/a;

    invoke-static {v0}, Lcom/mgadplus/d/a;->a(Lcom/mgadplus/d/a;)Lw5d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mgadplus/d/a$a;->b:Lcom/mgadplus/d/a;

    iget-object p0, p0, Lcom/mgadplus/d/a$a;->a:Ljava/util/concurrent/Executor;

    invoke-static {v1, p0, v0}, Lcom/mgadplus/d/a;->d(Lcom/mgadplus/d/a;Ljava/util/concurrent/Executor;Lw5d;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgadplus/d/a$a;->b:Lcom/mgadplus/d/a;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mgadplus/d/a;->f(Lcom/mgadplus/d/a;Z)Z

    :goto_0
    return-void
.end method
