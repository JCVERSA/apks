.class public final synthetic Ln28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->synDelete(Ljava/util/List;)V

    return-void
.end method
