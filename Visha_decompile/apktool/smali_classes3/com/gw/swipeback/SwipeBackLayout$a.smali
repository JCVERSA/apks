.class public Lcom/gw/swipeback/SwipeBackLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gw/swipeback/SwipeBackLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gw/swipeback/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gw/swipeback/SwipeBackLayout;


# direct methods
.method public constructor <init>(Lcom/gw/swipeback/SwipeBackLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/gw/swipeback/SwipeBackLayout$a;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FF)V
    .locals 0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$a;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public b(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/gw/swipeback/SwipeBackLayout$a;->a:Lcom/gw/swipeback/SwipeBackLayout;

    invoke-virtual {p0}, Lcom/gw/swipeback/SwipeBackLayout;->finish()V

    :cond_0
    return-void
.end method
