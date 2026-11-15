.class public final synthetic Lyv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;ILcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;

    iput p2, p0, Lyv;->c:I

    iput-object p3, p0, Lyv;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lyv;->b:Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;

    iget v1, p0, Lyv;->c:I

    iget-object p0, p0, Lyv;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, v1, p0}, Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;->c(Lcom/transsion/audio/fragments/AudioPlayerFragmentNew$g;ILcom/transsion/dbdata/beans/media/AudioItem;)V

    return-void
.end method
