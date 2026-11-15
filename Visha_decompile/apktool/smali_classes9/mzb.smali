.class public final synthetic Lmzb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:I

.field public final synthetic d:Landroid/content/Intent;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ILandroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmzb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput p2, p0, Lmzb;->c:I

    iput-object p3, p0, Lmzb;->d:Landroid/content/Intent;

    iput-boolean p4, p0, Lmzb;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lmzb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget v1, p0, Lmzb;->c:I

    iget-object v2, p0, Lmzb;->d:Landroid/content/Intent;

    iget-boolean p0, p0, Lmzb;->e:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->r(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ILandroid/content/Intent;Z)V

    return-void
.end method
