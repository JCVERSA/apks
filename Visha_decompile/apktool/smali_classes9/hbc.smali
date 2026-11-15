.class public final synthetic Lhbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhbc;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iput-boolean p2, p0, Lhbc;->c:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lhbc;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-boolean p0, p0, Lhbc;->c:Z

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->n2(Lcom/transsion/magicvideo/fragments/VideosFragment;ZLandroid/util/Pair;)V

    return-void
.end method
