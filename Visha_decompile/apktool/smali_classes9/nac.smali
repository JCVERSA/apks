.class public final synthetic Lnac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideosFragment;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnac;->a:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iput-boolean p2, p0, Lnac;->b:Z

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lnac;->a:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-boolean p0, p0, Lnac;->b:Z

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->s2(Lcom/transsion/magicvideo/fragments/VideosFragment;ZLjava/util/List;)V

    return-void
.end method
