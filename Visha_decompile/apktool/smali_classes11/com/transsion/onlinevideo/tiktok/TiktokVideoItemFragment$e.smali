.class public final Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->B2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$e;->a:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;IFZ)V
    .locals 0

    return-void
.end method

.method public b(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$e;->a:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->P0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;I)V

    iget-object p0, p0, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment$e;->a:Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->getProgress()I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->u0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->A0(Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;I)V

    return-void
.end method
