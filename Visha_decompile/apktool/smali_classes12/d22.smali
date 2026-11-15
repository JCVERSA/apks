.class public Ld22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd8$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld22$a;
    }
.end annotation


# instance fields
.field public a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

.field public b:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Le22;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ld22;-><init>()V

    return-void
.end method

.method public static synthetic c(Ltd8$c;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld22;->e(Ltd8$c;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public static d()Ld22;
    .locals 1

    sget-object v0, Ld22$a;->a:Ld22;

    return-object v0
.end method

.method public static synthetic e(Ltd8$c;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2, p1}, Ltd8$c;->a(ILandroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILtd8$c;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget-object v2, p0, Ld22;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ld22;->b:Landroid/content/res/Resources$Theme;

    if-eq v2, v1, :cond_1

    :cond_0
    new-instance v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    new-instance v3, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    invoke-direct {v2, v3}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ld22;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    iput-object v1, p0, Ld22;->b:Landroid/content/res/Resources$Theme;

    :cond_1
    iget-object p0, p0, Ld22;->a:Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    new-instance v0, Lc22;

    invoke-direct {v0, p3}, Lc22;-><init>(Ltd8$c;)V

    invoke-virtual {p0, p2, p1, v0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method public b(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0

    invoke-static {p1, p2}, Luz4;->a(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
