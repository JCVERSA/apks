.class public final synthetic Lqv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iput-object p2, p0, Lqv;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p3, p0, Lqv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lqv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;

    iget-object v1, p0, Lqv;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object p0, p0, Lqv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;->R(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew;Lcom/transsion/dbdata/beans/media/AudioItem;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/transsion/dbdata/beans/media/AudioItem;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
