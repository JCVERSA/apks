.class public final synthetic La4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/SubtitleHistory;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4a;->b:Lcom/transsion/dbdata/beans/SubtitleHistory;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La4a;->b:Lcom/transsion/dbdata/beans/SubtitleHistory;

    check-cast p1, Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->d0(Lcom/transsion/dbdata/beans/SubtitleHistory;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V

    return-void
.end method
