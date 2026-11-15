.class public final synthetic Lqvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iput-boolean p2, p0, Lqvb;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iget-boolean p0, p0, Lqvb;->c:Z

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->F1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;ZLcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
