.class public final synthetic Lhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudioBaseFragment;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhm;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    iput-object p2, p0, Lhm;->c:Ljava/lang/String;

    iput-object p3, p0, Lhm;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lhm;->b:Lcom/transsion/audio/fragments/AudioBaseFragment;

    iget-object v1, p0, Lhm;->c:Ljava/lang/String;

    iget-object p0, p0, Lhm;->d:Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Lcom/transsion/audio/fragments/AudioBaseFragment;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->B0(Lcom/transsion/audio/fragments/AudioBaseFragment;Ljava/lang/String;Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/audio/fragments/AudioBaseFragment;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
