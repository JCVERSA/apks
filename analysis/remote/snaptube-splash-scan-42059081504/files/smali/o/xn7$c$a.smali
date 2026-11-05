.class public final Lo/xn7$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/xn7$c;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo/xn7$c;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lo/xn7$c;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lo/xn7$c$a;->a:Lo/xn7$c;

    iput-object p2, p0, Lo/xn7$c$a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Lo/co7;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/xn7$c$a;->a:Lo/xn7$c;

    invoke-static {p2}, Lo/do7;->a(Ljava/lang/Object;)Landroid/window/SplashScreenView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/xn7$c;->j(Landroid/window/SplashScreenView;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lo/xn7$c;->k(Z)V

    iget-object p1, p0, Lo/xn7$c$a;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
