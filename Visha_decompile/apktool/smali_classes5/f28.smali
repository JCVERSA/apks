.class public final synthetic Lf28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;

    iput-object p2, p0, Lf28;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;

    iget-object p0, p0, Lf28;->c:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->o(Lcom/transsion/dbdata/beans/media/PlayAudioListData$Md5Callback;Ljava/lang/String;)V

    return-void
.end method
