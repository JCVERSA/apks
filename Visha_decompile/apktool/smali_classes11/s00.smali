.class public final synthetic Ls00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/widgets/GestureUtil$ScorllToListener;


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;

.field public final synthetic b:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls00;->a:Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;

    iput-object p2, p0, Ls00;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final scrollTo(I)V
    .locals 1

    iget-object v0, p0, Ls00;->a:Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;

    iget-object p0, p0, Ls00;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {v0, p0, p1}, Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;->A(Lcom/transsion/playercommon/widgets/banner/AudioSlideAdapter;Lcom/transsion/dbdata/beans/media/AudioItem;I)V

    return-void
.end method
