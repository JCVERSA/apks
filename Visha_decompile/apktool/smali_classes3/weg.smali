.class public final synthetic Lweg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3f;


# instance fields
.field public final synthetic a:Lbfg;

.field public final synthetic b:Landroid/view/WindowManager;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lbfg;Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lweg;->a:Lbfg;

    iput-object p2, p0, Lweg;->b:Landroid/view/WindowManager;

    iput-object p3, p0, Lweg;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lweg;->a:Lbfg;

    iget-object v1, p0, Lweg;->b:Landroid/view/WindowManager;

    iget-object p0, p0, Lweg;->c:Landroid/view/View;

    check-cast p1, Lejf;

    invoke-static {v0, v1, p0, p1, p2}, Lbfg;->b(Lbfg;Landroid/view/WindowManager;Landroid/view/View;Lejf;Ljava/util/Map;)V

    return-void
.end method
