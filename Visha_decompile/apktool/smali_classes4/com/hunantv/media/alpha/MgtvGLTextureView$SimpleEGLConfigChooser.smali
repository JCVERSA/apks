.class Lcom/hunantv/media/alpha/MgtvGLTextureView$SimpleEGLConfigChooser;
.super Lcom/hunantv/media/alpha/MgtvGLTextureView$ComponentSizeChooser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/alpha/MgtvGLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleEGLConfigChooser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hunantv/media/alpha/MgtvGLTextureView;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/alpha/MgtvGLTextureView;Z)V
    .locals 8

    iput-object p1, p0, Lcom/hunantv/media/alpha/MgtvGLTextureView$SimpleEGLConfigChooser;->this$0:Lcom/hunantv/media/alpha/MgtvGLTextureView;

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    :goto_0
    move v6, p2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/hunantv/media/alpha/MgtvGLTextureView$ComponentSizeChooser;-><init>(Lcom/hunantv/media/alpha/MgtvGLTextureView;IIIIII)V

    return-void
.end method
