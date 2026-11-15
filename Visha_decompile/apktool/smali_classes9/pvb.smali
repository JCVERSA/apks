.class public final synthetic Lpvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iput-object p2, p0, Lpvb;->c:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lpvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iget-object p0, p0, Lpvb;->c:Lcom/transsion/widgetslib/dialog/d;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->I1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Lcom/transsion/widgetslib/dialog/d;Ljava/util/List;)V

    return-void
.end method
