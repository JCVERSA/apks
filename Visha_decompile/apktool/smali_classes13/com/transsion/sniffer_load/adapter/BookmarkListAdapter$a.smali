.class public Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$a;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;->b(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/sniff/Bookmark;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$a;->c:Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter;

    iput-object p2, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$a;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/transition/Transition;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/sniffer_load/adapter/BookmarkListAdapter$a;->b(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/transition/Transition;)V

    return-void
.end method
