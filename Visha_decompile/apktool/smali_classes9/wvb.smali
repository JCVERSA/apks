.class public final synthetic Lwvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iput-object p2, p0, Lwvb;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lwvb;->b:Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;

    iget-object p0, p0, Lwvb;->c:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;->M1(Lcom/transsion/magicvideo/fragments/VideoPlayListOperateFragment;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
