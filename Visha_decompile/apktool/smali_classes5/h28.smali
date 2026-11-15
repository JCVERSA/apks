.class public final synthetic Lh28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iput-object p2, p0, Lh28;->c:Ljava/lang/String;

    iput-object p3, p0, Lh28;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lh28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object v1, p0, Lh28;->c:Ljava/lang/String;

    iget-object p0, p0, Lh28;->d:Ljava/lang/String;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->n(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
