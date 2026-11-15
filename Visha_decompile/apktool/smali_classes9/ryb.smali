.class public final synthetic Lryb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lryb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 0

    iget-object p0, p0, Lryb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->j(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;I)V

    return-void
.end method
