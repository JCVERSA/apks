.class public final synthetic Lbv9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/transsion/magicmovie/activity/SplashActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicmovie/activity/SplashActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbv9;->a:Lcom/transsion/magicmovie/activity/SplashActivity;

    iput p2, p0, Lbv9;->b:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object v0, p0, Lbv9;->a:Lcom/transsion/magicmovie/activity/SplashActivity;

    iget p0, p0, Lbv9;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/magicmovie/activity/SplashActivity;->t(Lcom/transsion/magicmovie/activity/SplashActivity;ILandroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
