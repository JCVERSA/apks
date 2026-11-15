.class public final synthetic La2c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-boolean p2, p0, La2c;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, La2c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-boolean p0, p0, La2c;->c:Z

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->G0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;ZLandroid/view/View;)V

    return-void
.end method
