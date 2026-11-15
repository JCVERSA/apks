.class public final synthetic Ly0c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly0c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-boolean p2, p0, Ly0c;->c:Z

    iput-boolean p3, p0, Ly0c;->d:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Ly0c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v1, p0, Ly0c;->c:Z

    iget-boolean p0, p0, Ly0c;->d:Z

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->a(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZLandroid/content/DialogInterface;I)V

    return-void
.end method
