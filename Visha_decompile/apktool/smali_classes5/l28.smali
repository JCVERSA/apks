.class public final synthetic Ll28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

.field public final synthetic c:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iput-object p2, p0, Ll28;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ll28;->b:Lcom/transsion/dbdata/beans/media/PlayAudioListData;

    iget-object p0, p0, Ll28;->c:Ljava/util/Set;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Lcom/transsion/dbdata/beans/media/PlayAudioListData;->h(Lcom/transsion/dbdata/beans/media/PlayAudioListData;Ljava/util/Set;Ljava/util/ArrayList;)V

    return-void
.end method
