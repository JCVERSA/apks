.class public final synthetic Lftb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lftb;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lftb;->b:Lcom/transsion/magicvideo/fragments/VideoMainFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoMainFragment;->t0(Lcom/transsion/magicvideo/fragments/VideoMainFragment;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
