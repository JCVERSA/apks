.class public final Lon9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lc74;


# direct methods
.method public constructor <init>(Landroid/view/View;Lc74;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lon9;->a:Lc74;

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lon9;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lon9;->a:Lc74;

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lon9;->a:Lc74;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc74;->invoke()Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lon9;->a:Lc74;

    return-void
.end method
