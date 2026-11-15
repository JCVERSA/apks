.class public final synthetic Lqt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

.field public final synthetic c:Lcom/transsion/dbdata/database/PlayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/transsion/dbdata/database/PlayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqt;->b:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    iput-object p2, p0, Lqt;->c:Lcom/transsion/dbdata/database/PlayList;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lqt;->b:Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    iget-object p0, p0, Lqt;->c:Lcom/transsion/dbdata/database/PlayList;

    check-cast p1, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;

    invoke-static {v0, p0, p1}, Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;->c(Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;Lcom/transsion/dbdata/database/PlayList;Lcom/transsion/audio/widgets/AudioPlayListAddBucketView;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
