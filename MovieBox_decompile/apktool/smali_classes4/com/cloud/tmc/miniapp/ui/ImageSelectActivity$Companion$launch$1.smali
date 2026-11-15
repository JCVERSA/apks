.class public final Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;


# direct methods
.method public constructor <init>(Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-nez p2, :cond_1

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    const-string v0, "imageList"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-eqz p2, :cond_6

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "list.iterator()"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    new-instance v1, Ljava/io/File;

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 v0, -0x1

    .line 64
    if-ne p1, v0, :cond_5

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 73
    .line 74
    invoke-interface {p1, p2}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 79
    .line 80
    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImageSelectActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 85
    .line 86
    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    .line 87
    .line 88
    .line 89
    return-void
.end method
