.class public Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljwb$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->H4(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$b;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$b;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    iget-object p1, p1, Lcom/transsion/dbdata/database/VideoPlayList;->name:Ljava/lang/String;

    iput-object p1, v0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;->s4(Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFragment$b;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFragment;

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideosBaseFragment;->B:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
