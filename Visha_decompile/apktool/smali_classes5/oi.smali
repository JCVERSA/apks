.class public final synthetic Loi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/adapter/ArtistListAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/adapter/ArtistListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi;->b:Lcom/transsion/audio/adapter/ArtistListAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Loi;->b:Lcom/transsion/audio/adapter/ArtistListAdapter;

    check-cast p1, Landroid/util/Pair;

    invoke-static {p0, p1}, Lcom/transsion/audio/adapter/ArtistListAdapter;->c(Lcom/transsion/audio/adapter/ArtistListAdapter;Landroid/util/Pair;)V

    return-void
.end method
