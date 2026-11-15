.class public final Lb15$h;
.super Lb15;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Lcom/transsion/dbdata/beans/SubtitleSettingData;


# direct methods
.method public constructor <init>(Lcom/transsion/dbdata/beans/SubtitleSettingData;)V
    .locals 1

    const-string v0, "subtitleSetting"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lb15;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lb15$h;->a:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    return-void
.end method


# virtual methods
.method public final a()Lcom/transsion/dbdata/beans/SubtitleSettingData;
    .locals 0

    iget-object p0, p0, Lb15$h;->a:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lb15$h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lb15$h;

    iget-object p0, p0, Lb15$h;->a:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    iget-object p1, p1, Lb15$h;->a:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lb15$h;->a:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lb15$h;->a:Lcom/transsion/dbdata/beans/SubtitleSettingData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubtitleSetting(subtitleSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
