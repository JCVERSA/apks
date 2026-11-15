.class public final synthetic Lmac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmac;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmac;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->q2(Lcom/transsion/magicvideo/fragments/VideosFragment;Lcom/transsion/magicvideo/fragments/VideosFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
