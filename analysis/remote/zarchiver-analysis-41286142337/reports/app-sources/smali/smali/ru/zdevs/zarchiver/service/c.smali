.class public interface abstract Lru/zdevs/zarchiver/service/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/zdevs/zarchiver/service/c$b;,
        Lru/zdevs/zarchiver/service/c$a;
    }
.end annotation


# virtual methods
.method public abstract ArchiveAddFiles(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V
.end method

.method public abstract ArchiveAddFilesMulti(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh0/h;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract ArchiveCompress(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/util/List;Lh0/h;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh0/h;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lh0/h;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract ArchiveCompressMulti(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lh0/h;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lh0/h;",
            "I)V"
        }
    .end annotation
.end method

.method public abstract ArchiveCreateFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract ArchiveDelFiles(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract ArchiveExtract(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Lh0/h;I)V
.end method

.method public abstract ArchiveExtractMulti(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract ArchiveOpenFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract ArchiveRenFile(Ljava/lang/String;Lh0/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract ArchiveTest(Ljava/lang/String;Lh0/h;Ljava/lang/String;)V
.end method

.method public abstract ArchiveTestMulti(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract Copy(Lh0/h;Lh0/h;Ljava/util/List;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/h;",
            "Lh0/h;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation
.end method

.method public abstract CopyList(Ljava/util/List;Lh0/h;ZI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;",
            "Lh0/h;",
            "ZI)V"
        }
    .end annotation
.end method

.method public abstract GUIStatus(Z)V
.end method

.method public abstract GetProgPercent(I)I
.end method

.method public abstract GetProgText(I)Ljava/lang/String;
.end method

.method public abstract GetStatusTask(I)I
.end method

.method public abstract HideNotification(I)V
.end method

.method public abstract IsLock(Lh0/h;I)Z
.end method

.method public abstract PluginOpenFile(Lh0/h;I)V
.end method

.method public abstract Remove(Lh0/h;Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/h;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract RemoveList(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/h;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract SetOverwrite(II)V
.end method

.method public abstract SetPassword(ILjava/lang/String;)V
.end method

.method public abstract SetSettings(IILjava/lang/String;)V
.end method

.method public abstract SetStatusTask(II)V
.end method
