.class public final synthetic Lh7/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lh7/d;

.field public final synthetic b:Lh7/e;


# direct methods
.method public synthetic constructor <init>(Lh7/d;Lh7/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lh7/c;->a:Lh7/d;

    .line 5
    .line 6
    iput-object p2, p0, Lh7/c;->b:Lh7/e;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh7/c;->a:Lh7/d;

    .line 2
    .line 3
    iget-object v1, p0, Lh7/c;->b:Lh7/e;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lh7/d;->b(Lh7/d;Lh7/e;Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
