.class public Lcom/pgl/ssdk/l0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pgl/ssdk/l0;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/pgl/ssdk/l0;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/pgl/ssdk/l0;->c:[Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget v0, p0, Lcom/pgl/ssdk/l0;->b:I

    .line 2
    .line 3
    const/16 v1, 0xde

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/pgl/ssdk/l0;->a:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/pgl/ssdk/h0;->a(Landroid/content/Context;)Lcom/pgl/ssdk/h0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/pgl/ssdk/h0;->a()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p0, Lcom/pgl/ssdk/l0;->b:I

    .line 17
    .line 18
    iget-object v1, p0, Lcom/pgl/ssdk/l0;->a:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/pgl/ssdk/l0;->c:[Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, [B

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    if-lez v1, :cond_1

    .line 32
    .line 33
    new-instance v1, Lcom/pgl/ssdk/m0;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/pgl/ssdk/l0;->a:Landroid/content/Context;

    .line 36
    .line 37
    iget v3, p0, Lcom/pgl/ssdk/l0;->b:I

    .line 38
    .line 39
    invoke-direct {v1, v2, v3}, Lcom/pgl/ssdk/m0;-><init>(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    const/4 v3, 0x2

    .line 44
    invoke-virtual {v1, v2, v3, v0}, Lcom/pgl/ssdk/j0;->a(II[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    :catchall_0
    :cond_1
    return-void
.end method
