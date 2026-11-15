.class public final Lpf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgo8;


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Le74;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lpf;->b:Le74;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Laf5;)Ljava/lang/Object;
    .locals 1

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lpf;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public b(Landroid/view/View;Laf5;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lpf;->b:Le74;

    if-eqz p2, :cond_1

    invoke-interface {p2, p3}, Le74;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p2

    :cond_1
    :goto_0
    iget-object p2, p0, Lpf;->a:Ljava/lang/Object;

    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p3, p0, Lpf;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lpf;->a(Landroid/view/View;Laf5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Laf5;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lpf;->b(Landroid/view/View;Laf5;Ljava/lang/Object;)V

    return-void
.end method
