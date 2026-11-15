.class public final synthetic Lsu/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic a:Lcom/transsion/upgradesdk/page/f;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/upgradesdk/page/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lsu/a;->a:Lcom/transsion/upgradesdk/page/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsu/a;->a:Lcom/transsion/upgradesdk/page/f;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3}, Lcom/transsion/upgradesdk/page/f;->b0(Lcom/transsion/upgradesdk/page/f;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
