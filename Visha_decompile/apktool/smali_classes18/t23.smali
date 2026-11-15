.class public final Lt23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyu4;


# instance fields
.field public a:Lyu4;


# direct methods
.method public constructor <init>(Lrz4;)V
    .locals 1

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lt23;->b(Lrz4;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lt23;->a:Lyu4;

    if-nez p0, :cond_0

    const-string v0, "mIDrawer"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, p1}, Lyu4;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final b(Lrz4;)V
    .locals 1

    sget-object v0, Lr23;->a:Lr23;

    invoke-virtual {v0, p1}, Lr23;->a(Lrz4;)Lyu4;

    move-result-object p1

    iput-object p1, p0, Lt23;->a:Lyu4;

    return-void
.end method

.method public c(ZIIII)V
    .locals 0

    return-void
.end method

.method public final d(Lrz4;)V
    .locals 1

    const-string v0, "indicatorOptions"

    invoke-static {p1, v0}, Ly45;->k(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lt23;->b(Lrz4;)V

    return-void
.end method

.method public onMeasure(II)Lda0$b;
    .locals 1

    iget-object p0, p0, Lt23;->a:Lyu4;

    if-nez p0, :cond_0

    const-string v0, "mIDrawer"

    invoke-static {v0}, Ly45;->B(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0, p1, p2}, Lyu4;->onMeasure(II)Lda0$b;

    move-result-object p0

    return-object p0
.end method
