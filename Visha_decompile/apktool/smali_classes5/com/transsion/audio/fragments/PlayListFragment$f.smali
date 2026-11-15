.class public Lcom/transsion/audio/fragments/PlayListFragment$f;
.super Lhf7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragments/PlayListFragment;->inflateOperationBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/transsion/audio/fragments/PlayListFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/fragments/PlayListFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragments/PlayListFragment$f;->e:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-direct {p0, p2}, Lhf7;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v0}, Lhf7;->b(I)V

    iget-object p0, p0, Lcom/transsion/audio/fragments/PlayListFragment$f;->e:Lcom/transsion/audio/fragments/PlayListFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/fragments/AudioBaseFragment;->onItemClick(I)V

    return-void
.end method
