.class public final synthetic Lrv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic e:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p2, p0, Lrv;->c:Ljava/lang/String;

    iput-object p3, p0, Lrv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lrv;->e:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lrv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v1, p0, Lrv;->c:Ljava/lang/String;

    iget-object v2, p0, Lrv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lrv;->e:Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->T(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;Landroid/util/Pair;)V

    return-void
.end method
