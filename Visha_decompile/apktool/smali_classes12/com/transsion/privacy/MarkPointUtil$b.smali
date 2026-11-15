.class public Lcom/transsion/privacy/MarkPointUtil$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/privacy/MarkPointUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lid4;


# direct methods
.method public constructor <init>(Lid4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/privacy/MarkPointUtil$b;->a:Lid4;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/privacy/MarkPointUtil$b;->a:Lid4;

    invoke-interface {p0, p1}, Lid4;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/privacy/MarkPointUtil$b;->a:Lid4;

    invoke-interface {p0, p1}, Lid4;->b(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object v0

    invoke-virtual {v0}, Lu06;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/privacy/MarkPointUtil;->n(Landroid/content/Context;)V

    invoke-static {}, Lu06;->c()Lu06;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu06;->h(Z)V

    iget-object p0, p0, Lcom/transsion/privacy/MarkPointUtil$b;->a:Lid4;

    invoke-interface {p0, p1}, Lid4;->c(Landroid/app/Activity;)V

    invoke-static {}, Lcom/transsion/privacy/MarkPointUtil;->a()V

    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/privacy/MarkPointUtil$b;->a:Lid4;

    invoke-interface {p0, p1}, Lid4;->e(Landroid/app/Activity;)V

    return-void
.end method
