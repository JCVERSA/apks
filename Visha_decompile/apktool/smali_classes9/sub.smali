.class public final synthetic Lsub;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsub;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lsub;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->K1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Ljava/lang/Boolean;)V

    return-void
.end method
