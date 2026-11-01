.class public final Lru/zdevs/zarchiver/ZImageViewer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/zdevs/zarchiver/ZImageViewer;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lru/zdevs/zarchiver/ZImageViewer;


# direct methods
.method public constructor <init>(Lru/zdevs/zarchiver/ZImageViewer;)V
    .locals 0

    iput-object p1, p0, Lru/zdevs/zarchiver/ZImageViewer$a;->a:Lru/zdevs/zarchiver/ZImageViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/zdevs/zarchiver/ZImageViewer$a;->a:Lru/zdevs/zarchiver/ZImageViewer;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/app/ActionBar;->isShowing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Lru/zdevs/zarchiver/ZImageViewer;->a(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
