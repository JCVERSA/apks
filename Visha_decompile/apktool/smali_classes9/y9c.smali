.class public final synthetic Ly9c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly9c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    return-void
.end method


# virtual methods
.method public final onActivityResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ly9c;->a:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->p0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Landroidx/activity/result/ActivityResult;)V

    return-void
.end method
