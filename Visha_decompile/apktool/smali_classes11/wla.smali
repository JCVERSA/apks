.class public final synthetic Lwla;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwla;->b:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lwla;->b:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/transsion/onlinevideo/tiktok/TiktokVideoItemFragment;->S(Landroid/widget/ImageView;)V

    return-void
.end method
