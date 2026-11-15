.class public final synthetic Lhac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhac;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lhac;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->M0()V

    return-void
.end method
