.class Lcom/pgl/ssdk/j0$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgl/ssdk/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pgl/ssdk/j0;


# direct methods
.method constructor <init>(Lcom/pgl/ssdk/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pgl/ssdk/j0;->a(Lcom/pgl/ssdk/j0;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/pgl/ssdk/j0;->b(Lcom/pgl/ssdk/j0;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/pgl/ssdk/j0;->d(Lcom/pgl/ssdk/j0;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ge v0, v1, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/pgl/ssdk/j0$a;->a:Lcom/pgl/ssdk/j0;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/pgl/ssdk/j0;->c(Lcom/pgl/ssdk/j0;)I

    .line 26
    .line 27
    .line 28
    invoke-static {p0}, Lcom/pgl/ssdk/o0;->a(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method
