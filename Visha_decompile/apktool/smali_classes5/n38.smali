.class public final synthetic Ln38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln38;->b:Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln38;->b:Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    check-cast p1, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;->L1(Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;Lcom/transsion/audio/fragments/PlayListAddRemoveFragment;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
