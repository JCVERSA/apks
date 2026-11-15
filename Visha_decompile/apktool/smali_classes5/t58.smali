.class public final synthetic Lt58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt58;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lt58;->b:Lcom/transsion/audio/fragments/PlayListFragment;

    check-cast p1, Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->L2(Lcom/transsion/audio/fragments/PlayListFragment;Lcom/transsion/audio/fragments/PlayListFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
