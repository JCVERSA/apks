.class public Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;->b(Lorg/proninyaroslav/libretorrent/core/model/data/TorrentInfo;Ljava/util/HashSet;ZILcom/transsion/btdownload/ui/TorrentItemAdapter$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$d;->d:Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$d;->b:Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;

    iput p3, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$d;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$d;->b:Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/transsion/btdownload/ui/TorrentItemAdapter$ItemViewHolder$d;->c:I

    invoke-interface {v0, p1, p0}, Lcom/transsion/btdownload/ui/TorrentItemAdapter$b;->c(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
