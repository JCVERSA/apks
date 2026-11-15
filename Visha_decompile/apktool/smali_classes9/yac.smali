.class public final synthetic Lyac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideosFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyac;->a:Lcom/transsion/magicvideo/fragments/VideosFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lyac;->a:Lcom/transsion/magicvideo/fragments/VideosFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->V1(Lcom/transsion/magicvideo/fragments/VideosFragment;Ljava/util/List;)V

    return-void
.end method
