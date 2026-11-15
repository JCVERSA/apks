.class public final synthetic Lli;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/adapter/ArtistListAdapter;

.field public final synthetic c:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/adapter/ArtistListAdapter;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli;->b:Lcom/transsion/audio/adapter/ArtistListAdapter;

    iput-object p2, p0, Lli;->c:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lli;->b:Lcom/transsion/audio/adapter/ArtistListAdapter;

    iget-object p0, p0, Lli;->c:Landroid/widget/ImageView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/adapter/ArtistListAdapter;->g(Lcom/transsion/audio/adapter/ArtistListAdapter;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method
