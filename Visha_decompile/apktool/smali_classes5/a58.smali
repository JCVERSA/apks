.class public final synthetic La58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La58;->a:Lcom/transsion/audio/fragments/PlayListFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La58;->a:Lcom/transsion/audio/fragments/PlayListFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFragment;->n2(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/util/List;)V

    return-void
.end method
