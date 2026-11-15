.class Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;->this$0:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;->this$0:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {v0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->h(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout$2;->this$0:Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;->h(Lcom/transsion/magicvideo/widgets/MusicModelMainLayout;)Lcom/transsion/widgetslib/view/indicator/PageIndicatorWrapper;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
