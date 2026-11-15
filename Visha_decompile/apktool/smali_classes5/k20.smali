.class public final synthetic Lk20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/fragments/AudiosFragment;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk20;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    iput-object p2, p0, Lk20;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lk20;->b:Lcom/transsion/audio/fragments/AudiosFragment;

    iget-object p0, p0, Lk20;->c:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/transsion/audio/fragments/AudiosFragment;->p2(Lcom/transsion/audio/fragments/AudiosFragment;Ljava/util/ArrayList;)V

    return-void
.end method
