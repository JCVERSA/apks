.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/mimedia/CloudMediaPlayInfoManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->x7(Lcom/transsion/dbdata/beans/mimedia/MIMediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestMIMediaVideoPlayInfo onSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerContentView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {v0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->j2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->z1(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Q2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V

    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->Q2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoPlayInfo;)V

    const v0, 0xea67

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$o0;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->showViolationNoticeDialog()V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestMIMediaVideoPlayInfo onFailed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VideoPlayerContentView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
