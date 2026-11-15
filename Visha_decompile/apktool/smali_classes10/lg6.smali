.class public final synthetic Llg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llg6;->b:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Llg6;->b:Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;->R(Lcom/transsion/mimedia/fragment/MediaLibraryListFragment;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method
