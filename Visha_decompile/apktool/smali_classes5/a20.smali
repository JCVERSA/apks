.class public final synthetic La20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudiosFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La20;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La20;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    check-cast p1, Lcom/transsion/audio/fragments/AudiosFragment;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/AudiosFragment;->l2(Lcom/transsion/audio/fragments/AudiosFragment;Lcom/transsion/audio/fragments/AudiosFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
