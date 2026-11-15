.class public final synthetic Lt9c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

.field public final synthetic c:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9c;->b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iput-object p2, p0, Lt9c;->c:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lt9c;->b:Lcom/transsion/magicvideo/fragments/VideosBaseFragment;

    iget-object p0, p0, Lt9c;->c:Landroid/os/Parcelable;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->h0(Lcom/transsion/magicvideo/fragments/VideosBaseFragment;Landroid/os/Parcelable;)V

    return-void
.end method
