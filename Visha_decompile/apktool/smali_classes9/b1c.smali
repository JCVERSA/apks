.class public final synthetic Lb1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lb1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/content/DialogInterface;)V

    return-void
.end method
