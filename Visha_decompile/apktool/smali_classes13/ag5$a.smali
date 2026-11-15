.class public Lag5$a;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lag5;->i(Landroid/app/Activity;Lag5$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Lag5$e;


# direct methods
.method public constructor <init>(ILandroid/app/Activity;Lag5$e;)V
    .locals 0

    iput-object p2, p0, Lag5$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lag5$a;->b:Lag5$e;

    invoke-direct {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 2

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p2

    invoke-static {p1, p2}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v0

    invoke-static {p1, v0}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    invoke-static {p1, v1}, Lfoc;->a(Landroid/view/WindowInsets;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v1

    invoke-static {p1, v1}, Ldoc;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    :cond_0
    iget-object v1, p0, Lag5$a;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/transsion/utils/a;->s(Landroid/content/Context;)Z

    move-result v1

    iget-object p0, p0, Lag5$a;->b:Lag5$e;

    if-nez v1, :cond_1

    sub-int/2addr p2, v0

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_1
    invoke-interface {p0, p2}, Lag5$e;->k(I)V

    return-object p1
.end method
