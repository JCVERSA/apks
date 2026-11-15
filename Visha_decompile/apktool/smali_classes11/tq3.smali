.class public final synthetic Ltq3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltq3;->b:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iput-object p2, p0, Ltq3;->c:Landroid/view/View;

    iput-object p3, p0, Ltq3;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ltq3;->b:Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;

    iget-object v1, p0, Ltq3;->c:Landroid/view/View;

    iget-object p0, p0, Ltq3;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, v1, p0}, Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;->b(Lcom/transsion/playercommon/adapter/FileOperateMenuAdapter;Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method
