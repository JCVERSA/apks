.class public final synthetic Liu3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/media/MediaItem;

    invoke-static {p1}, Lmu3;->e(Lcom/transsion/dbdata/beans/media/MediaItem;)Lcom/transsion/tools/filetrans/activities/FileTransSheetDialogActivity$Companion$FileTransItem;

    move-result-object p0

    return-object p0
.end method
