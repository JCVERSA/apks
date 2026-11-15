.class public Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljwb$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$b;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/transsion/dbdata/database/VideoPlayList;)V
    .locals 2

    iget-object p0, p0, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment$b;->a:Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;->N1(Lcom/transsion/magicvideo/fragments/VideoPlayListFoldersFragment;Lcom/transsion/dbdata/database/VideoPlayList;)V

    const-string p0, "vd_add_playlist_s"

    const-wide/16 v0, 0x246c

    const/4 p1, 0x0

    invoke-static {p1, p0, v0, v1}, Lp06;->f0(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
