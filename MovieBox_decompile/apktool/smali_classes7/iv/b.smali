.class public final synthetic Liv/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Liv/c;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Liv/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Liv/b;->a:Liv/c;

    .line 5
    .line 6
    iput-boolean p2, p0, Liv/b;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Liv/b;->a:Liv/c;

    .line 2
    .line 3
    iget-boolean v1, p0, Liv/b;->b:Z

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Liv/c;->b(Liv/c;ZLandroid/view/View;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
