.class public final synthetic Lgbc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgbc;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iput-boolean p2, p0, Lgbc;->c:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lgbc;->b:Lcom/transsion/magicvideo/fragments/VideosFragment;

    iget-boolean p0, p0, Lgbc;->c:Z

    check-cast p1, Lcom/transsion/magicvideo/fragments/VideosFragment;

    invoke-static {v0, p0, p1}, Lcom/transsion/magicvideo/fragments/VideosFragment;->c2(Lcom/transsion/magicvideo/fragments/VideosFragment;ZLcom/transsion/magicvideo/fragments/VideosFragment;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
