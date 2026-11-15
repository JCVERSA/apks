.class public final synthetic Lyu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/adapter/PlayListAdapter$a;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/widgets/MusicPlayListView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/MusicPlayListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyu6;->a:Lcom/transsion/audio/widgets/MusicPlayListView;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    iget-object p0, p0, Lyu6;->a:Lcom/transsion/audio/widgets/MusicPlayListView;

    invoke-static {p0, p1}, Lcom/transsion/audio/widgets/MusicPlayListView;->d(Lcom/transsion/audio/widgets/MusicPlayListView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method
