.class public final synthetic Lx0c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx0c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-boolean p2, p0, Lx0c;->c:Z

    iput-boolean p3, p0, Lx0c;->d:Z

    iput-boolean p4, p0, Lx0c;->e:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lx0c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean v1, p0, Lx0c;->c:Z

    iget-boolean v2, p0, Lx0c;->d:Z

    iget-boolean v3, p0, Lx0c;->e:Z

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->M0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZZZLandroid/content/DialogInterface;I)V

    return-void
.end method
