.class public final synthetic Lnvb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/database/PlayListFolderItem;

    invoke-static {p1}, Lcom/transsion/playercommon/videomodel/VideoPlayListModel;->c(Lcom/transsion/dbdata/database/PlayListFolderItem;)Lcom/transsion/dbdata/database/VideoPlayList;

    move-result-object p0

    return-object p0
.end method
