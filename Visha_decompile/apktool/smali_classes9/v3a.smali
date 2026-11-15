.class public final synthetic Lv3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lv3a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->l0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;)V

    return-void
.end method
