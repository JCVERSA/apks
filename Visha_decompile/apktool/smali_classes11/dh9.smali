.class public final synthetic Ldh9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# instance fields
.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldh9;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Ldh9;->b:Landroid/view/View;

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/mangotv/shorts/ShortPlayerDetailActivity;->w0(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
