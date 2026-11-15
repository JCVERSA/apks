.class public abstract synthetic Lkb0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;
    .locals 0

    invoke-static {p0, p1}, Landroid/provider/MediaStore;->createWriteRequest(Landroid/content/ContentResolver;Ljava/util/Collection;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
