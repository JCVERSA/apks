.class public final synthetic Lszb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lszb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lszb;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->a0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/cloud_drive/base/api/model/FileVideoPlayInfoResult;)V

    return-void
.end method
