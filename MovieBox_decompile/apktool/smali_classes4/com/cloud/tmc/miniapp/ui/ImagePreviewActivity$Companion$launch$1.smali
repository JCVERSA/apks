.class public final Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/miniapp/base/BaseActivity$OnActivityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion;->launch(Lcom/cloud/tmc/miniapp/base/BaseActivity;ILjava/util/List;ILjava/util/ArrayList;Ljava/util/ArrayList;Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;)V
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
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

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
    const-string v0, "imageSelectList"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "imageBackPressed"

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const-string v2, "imageSelectPositionList"

    .line 26
    .line 27
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    if-eqz v0, :cond_6

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "list.iterator()"

    .line 45
    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    new-instance v3, Ljava/io/File;

    .line 56
    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_3

    .line 71
    .line 72
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    const/4 v2, -0x1

    .line 77
    if-ne p1, v2, :cond_5

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 86
    .line 87
    xor-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    invoke-interface {p1, v0, p2, v1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onSelected(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 94
    .line 95
    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ui/ImagePreviewActivity$Companion$launch$1;->$listener:Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;

    .line 100
    .line 101
    invoke-interface {p1}, Lcom/cloud/tmc/integration/callback/OnPhotoSelectListener;->onCancel()V

    .line 102
    .line 103
    .line 104
    return-void
.end method
