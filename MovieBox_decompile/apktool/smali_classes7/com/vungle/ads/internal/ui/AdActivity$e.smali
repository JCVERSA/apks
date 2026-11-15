.class public final Lcom/vungle/ads/internal/ui/AdActivity$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/vungle/ads/internal/ui/view/MRAIDAdWidget$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/internal/ui/AdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/internal/ui/AdActivity;


# direct methods
.method constructor <init>(Lcom/vungle/ads/internal/ui/AdActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/internal/ui/AdActivity$e;->this$0:Lcom/vungle/ads/internal/ui/AdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public setOrientation(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ui/AdActivity$e;->this$0:Lcom/vungle/ads/internal/ui/AdActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/ui/AdActivity;->setRequestedOrientation(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
