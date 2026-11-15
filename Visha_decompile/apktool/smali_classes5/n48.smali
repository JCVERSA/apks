.class public final synthetic Ln48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/audio/fragments/PlayListFoldersFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/fragments/PlayListFoldersFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln48;->a:Lcom/transsion/audio/fragments/PlayListFoldersFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln48;->a:Lcom/transsion/audio/fragments/PlayListFoldersFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/audio/fragments/PlayListFoldersFragment;->H1(Lcom/transsion/audio/fragments/PlayListFoldersFragment;Ljava/util/List;)V

    return-void
.end method
