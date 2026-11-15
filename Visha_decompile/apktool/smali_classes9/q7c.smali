.class public final synthetic Lq7c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq7c;->b:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lq7c;->b:Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleSettingData;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;->i(Lcom/transsion/magicvideo/model/VideoSubtitleViewModel;Lcom/transsion/dbdata/beans/SubtitleSettingData;)V

    return-void
.end method
