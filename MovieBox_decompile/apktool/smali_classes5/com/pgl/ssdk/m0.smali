.class public Lcom/pgl/ssdk/m0;
.super Lcom/pgl/ssdk/j0;
.source "source.java"


# instance fields
.field private n:Landroid/content/Context;

.field private final o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/pgl/ssdk/j0;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pgl/ssdk/m0;->n:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/pgl/ssdk/m0;->o:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/pgl/ssdk/m0;->o:I

    const/16 v1, 0xde

    const-string v2, "&did="

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ssdk/v2/r?os=0&ver=7.1.0.0.overseas-rc.6&mode=1&app_ver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pgl/ssdk/m0;->n:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/pgl/ssdk/z;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcom/pgl/ssdk/b0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&aid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12d

    if-ne v0, v1, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/ssdk/sd/token?os=android&app_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Lcom/pgl/ssdk/ces/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&app_ver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pgl/ssdk/m0;->n:Landroid/content/Context;

    .line 10
    invoke-static {v1}, Lcom/pgl/ssdk/z;->g(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&platform=android&ver=7.1.0.0.overseas-rc.6&mode=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(I[B)V
    .locals 2

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2

    .line 11
    :try_start_0
    iget p1, p0, Lcom/pgl/ssdk/m0;->o:I

    const/16 v1, 0xde

    if-ne p1, v1, :cond_0

    const/16 p1, 0xdf

    const/4 v0, 0x0

    .line 12
    invoke-static {p1, v0, p2}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return-void

    :cond_0
    const/16 v1, 0x12d

    if-ne p1, v1, :cond_3

    .line 13
    invoke-static {p2}, Lcom/pgl/ssdk/c1;->a([B)Ljava/lang/Object;

    move-result-object p1

    .line 14
    const-string p2, "write token result = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/pgl/ssdk/r0;->b(Ljava/lang/String;)V

    .line 15
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "write token succ"

    .line 16
    invoke-static {p1}, Lcom/pgl/ssdk/r0;->b(Ljava/lang/String;)V

    .line 17
    sput v0, Lcom/pgl/ssdk/c1;->a:I

    return-void

    .line 18
    :cond_1
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 19
    check-cast p1, Ljava/lang/String;

    sput-object p1, Lcom/pgl/ssdk/c1;->c:Ljava/lang/String;

    .line 20
    sput v0, Lcom/pgl/ssdk/c1;->a:I

    return-void

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/pgl/ssdk/m0;->n:Landroid/content/Context;

    invoke-static {p1}, Lcom/pgl/ssdk/k0;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method
