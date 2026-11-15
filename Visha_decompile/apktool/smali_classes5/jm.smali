.class public final synthetic Ljm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioBaseFragment;

.field public final synthetic c:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/AudioItem;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljm;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    iput-object p2, p0, Ljm;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-object p3, p0, Ljm;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    iput-boolean p4, p0, Ljm;->e:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Ljm;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Ljm;->c:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-object v2, p0, Ljm;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    iget-boolean p0, p0, Ljm;->e:Z

    check-cast p1, Landroid/util/Pair;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->r0(Lcom/transsion/audio/fragments/AudioBaseFragment;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;ZLandroid/util/Pair;)V

    return-void
.end method
