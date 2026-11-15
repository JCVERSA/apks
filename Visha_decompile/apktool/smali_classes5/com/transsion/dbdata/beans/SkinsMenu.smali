.class public Lcom/transsion/dbdata/beans/SkinsMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG_BACKGROUND:Ljava/lang/String; = "background"

.field public static final TAG_BASICCOLOR:Ljava/lang/String; = "basicColor"

.field public static final TAG_DARK_MODE:Ljava/lang/String; = "dark_mode"

.field public static final TAG_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final TAG_DETAILPATH:Ljava/lang/String; = "detailPath"

.field public static final TAG_IMAGE_MENU:Ljava/lang/String; = "image_menu"

.field public static final TAG_IMAGE_PREVIEW:Ljava/lang/String; = "image_preview"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_THUNMNAILPATH:Ljava/lang/String; = "thumbnailPath"

.field public static final TAG_WINDOW_BACKGROUND:Ljava/lang/String; = "window_background"

.field private static final serialVersionUID:J = 0xa924c504bdb3423L


# instance fields
.field public background:I

.field public backgroundType:I

.field public basicColor:I

.field public darkMode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skin_mode"
    .end annotation
.end field

.field public description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "color"
    .end annotation
.end field

.field public detailPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "original_icon"
    .end annotation
.end field

.field public imageMenu:I

.field public imagePreview:I

.field public isSelected:Z

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public showName:Ljava/lang/String;

.field public sort:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sort"
    .end annotation
.end field

.field public thumbPath:Ljava/lang/String;

.field public thumbType:I

.field public thumbnailPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "abbreviation_icon"
    .end annotation
.end field

.field public windowBackground:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbType:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->basicColor:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>(IILjava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;III)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbType:I

    .line 11
    iput p1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->imageMenu:I

    .line 12
    iput p2, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->imagePreview:I

    .line 13
    iput-object p3, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    .line 14
    iput p4, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->windowBackground:I

    .line 15
    iput p5, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->basicColor:I

    .line 16
    iput p6, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->darkMode:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbType:I

    .line 19
    iput p1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->imageMenu:I

    .line 20
    iput p2, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->imagePreview:I

    .line 21
    iput-object p3, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->showName:Ljava/lang/String;

    const/4 p1, -0x1

    .line 23
    iput p1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->basicColor:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbType:I

    .line 6
    iput-object p1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->basicColor:I

    return-void
.end method

.method public static restore(Landroid/content/Intent;)Lcom/transsion/dbdata/beans/SkinsMenu;
    .locals 4

    new-instance v0, Lcom/transsion/dbdata/beans/SkinsMenu;

    invoke-direct {v0}, Lcom/transsion/dbdata/beans/SkinsMenu;-><init>()V

    const-string v1, "image_menu"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->imageMenu:I

    const-string v1, "image_preview"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->imagePreview:I

    const-string v1, "name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    const-string v1, "background"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->background:I

    const-string v1, "description"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    const-string v1, "thumbnailPath"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    const-string v1, "detailPath"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->detailPath:Ljava/lang/String;

    const-string v1, "basicColor"

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->basicColor:I

    const-string v1, "window_background"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->windowBackground:I

    const-string v1, "dark_mode"

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/transsion/dbdata/beans/SkinsMenu;->darkMode:I

    return-object v0
.end method


# virtual methods
.method public isDarkTheme()Z
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->darkMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLocalTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    if-nez v0, :cond_0

    iget p0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->backgroundType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    return p0
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->isSelected:Z

    return-void
.end method

.method public toIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "image_menu"

    iget v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->imageMenu:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "image_preview"

    iget v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->imagePreview:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "name"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "background"

    iget v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->background:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "description"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "thumbnailPath"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "detailPath"

    iget-object v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->detailPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "basicColor"

    iget p0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->basicColor:I

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skinsMenu{imageMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->imageMenu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imagePreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->imagePreview:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", background=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->background:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", thumbnailPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detailPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->detailPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", windowBackground=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->windowBackground:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", darkmode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->darkMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', backgroundType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/dbdata/beans/SkinsMenu;->backgroundType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
