.class public Lcom/transsion/playercommon/videomodel/PlayListModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/videomodel/PlayListModel;->c(ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/playercommon/videomodel/PlayListModel;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/videomodel/PlayListModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/videomodel/PlayListModel$a;->b:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/transsion/dbdata/beans/LyricData;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/videomodel/PlayListModel$a;->b:Lcom/transsion/playercommon/videomodel/PlayListModel;

    invoke-static {p0}, Lcom/transsion/playercommon/videomodel/PlayListModel;->b(Lcom/transsion/playercommon/videomodel/PlayListModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/LyricData;

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/videomodel/PlayListModel$a;->a(Lcom/transsion/dbdata/beans/LyricData;)V

    return-void
.end method
