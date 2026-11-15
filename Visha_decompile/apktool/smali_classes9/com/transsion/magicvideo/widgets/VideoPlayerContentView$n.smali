.class public Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/magicvideo/subtitle/widgets/AISubtitleVideoView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A4()V
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

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->N2(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Z)V

    return-void
.end method

.method public b()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->o3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView$n;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->A3(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
