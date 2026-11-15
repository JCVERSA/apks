.class public final synthetic Ldh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldh6;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldh6;->b:Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;

    check-cast p1, Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectAdd;

    invoke-static {p0, p1}, Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;->c0(Lcom/transsion/mimedia/fragment/MediaLibraryVideoFragment;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryCollectAdd;)Lzfb;

    move-result-object p0

    return-object p0
.end method
