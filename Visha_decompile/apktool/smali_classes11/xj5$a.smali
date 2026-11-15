.class public final Lxj5$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxj5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/transsion/dragdrop/DragStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/dragdrop/DragStateListener;

    invoke-direct {v0, p1, p2}, Lcom/transsion/dragdrop/DragStateListener;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lxj5$a;->a:Lcom/transsion/dragdrop/DragStateListener;

    return-void
.end method


# virtual methods
.method public a(Laec;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p0, p0, Lxj5$a;->a:Lcom/transsion/dragdrop/DragStateListener;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/dragdrop/DragStateListener;->setListener(Lcom/transsion/dragdrop/DragStateListener$DrawShadowListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lxj5$a;->a:Lcom/transsion/dragdrop/DragStateListener;

    new-instance v1, Lxj5$a$a;

    invoke-direct {v1, p0, p1}, Lxj5$a$a;-><init>(Lxj5$a;Laec;)V

    invoke-virtual {v0, v1}, Lcom/transsion/dragdrop/DragStateListener;->setListener(Lcom/transsion/dragdrop/DragStateListener$DrawShadowListener;)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object p0, p0, Lxj5$a;->a:Lcom/transsion/dragdrop/DragStateListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/dragdrop/DragStateListener;->setListener(Lcom/transsion/dragdrop/DragStateListener$DrawShadowListener;)V

    return-void
.end method
