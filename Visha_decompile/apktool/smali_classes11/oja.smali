.class public final synthetic Loja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loja;->a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Loja;->a:Lcom/transsion/onlinevideo/tiktok/TiktokFragment;

    invoke-static {p0, p1, p2}, Lcom/transsion/onlinevideo/tiktok/TiktokFragment;->S(Lcom/transsion/onlinevideo/tiktok/TiktokFragment;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
