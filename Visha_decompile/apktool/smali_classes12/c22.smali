.class public final synthetic Lc22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# instance fields
.field public final synthetic a:Ltd8$c;


# direct methods
.method public synthetic constructor <init>(Ltd8$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc22;->a:Ltd8$c;

    return-void
.end method


# virtual methods
.method public final onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    iget-object p0, p0, Lc22;->a:Ltd8$c;

    invoke-static {p0, p1, p2, p3}, Ld22;->c(Ltd8$c;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method
