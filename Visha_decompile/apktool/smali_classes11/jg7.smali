.class public final synthetic Ljg7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg7;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Ljg7;->a:Lcom/transsion/onlinevideo/home/OnlineHomeFragment;

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/home/OnlineHomeFragment;->X(Lcom/transsion/onlinevideo/home/OnlineHomeFragment;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
