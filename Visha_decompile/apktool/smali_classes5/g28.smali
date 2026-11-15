.class public final synthetic Lg28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lg28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    invoke-static {p0}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->m(Lcom/transsion/dbdata/beans/media/PlayAudioListData;)V

    return-void
.end method
