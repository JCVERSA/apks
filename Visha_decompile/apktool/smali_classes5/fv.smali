.class public final synthetic Lfv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p2, p0, Lfv;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lfv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object p0, p0, Lfv;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->o0(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
