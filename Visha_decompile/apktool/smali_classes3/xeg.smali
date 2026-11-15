.class public final synthetic Lxeg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:Lbfg;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/WindowManager;


# direct methods
.method public synthetic constructor <init>(Lbfg;Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxeg;->a:Lbfg;

    iput-object p2, p0, Lxeg;->b:Landroid/view/View;

    iput-object p3, p0, Lxeg;->c:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lxeg;->a:Lbfg;

    iget-object v1, p0, Lxeg;->b:Landroid/view/View;

    iget-object p0, p0, Lxeg;->c:Landroid/view/WindowManager;

    check-cast p1, Lejf;

    invoke-static {v0, v1, p0, p1, p2}, Lbfg;->c(Lbfg;Landroid/view/View;Landroid/view/WindowManager;Lejf;Ljava/util/Map;)V

    return-void
.end method
