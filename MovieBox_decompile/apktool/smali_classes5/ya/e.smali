.class public final synthetic Lya/e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lya/b;


# direct methods
.method public synthetic constructor <init>(Lya/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lya/e;->a:Lya/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lya/e;->a:Lya/b;

    .line 2
    .line 3
    invoke-interface {v0}, Lya/b;->handleBackInvoked()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
