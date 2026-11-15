.class public Ljcc;
.super Landroid/view/GestureDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljcc$a;
    }
.end annotation


# instance fields
.field public a:Ljcc$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Ljcc$a;

    invoke-direct {v0}, Ljcc$a;-><init>()V

    invoke-direct {p0, p1, v0}, Ljcc;-><init>(Landroid/content/Context;Ljcc$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljcc$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 3
    iput-object p2, p0, Ljcc;->a:Ljcc$a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    iget-object p0, p0, Ljcc;->a:Ljcc$a;

    invoke-virtual {p0}, Ljcc$a;->a()Z

    move-result p0

    return p0
.end method
