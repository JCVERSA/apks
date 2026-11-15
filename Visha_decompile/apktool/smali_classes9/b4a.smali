.class public final synthetic Lb4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb4a;->a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lb4a;->a:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    check-cast p1, Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->i0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/SubtitleLanguage;)V

    return-void
.end method
