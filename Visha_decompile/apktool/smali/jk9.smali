.class public final synthetic Ljk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/common/SimpleBasePlayer;

.field public final synthetic c:Lim5;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/SimpleBasePlayer;Lim5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljk9;->b:Landroidx/media3/common/SimpleBasePlayer;

    iput-object p2, p0, Ljk9;->c:Lim5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljk9;->b:Landroidx/media3/common/SimpleBasePlayer;

    iget-object p0, p0, Ljk9;->c:Lim5;

    invoke-static {v0, p0}, Landroidx/media3/common/SimpleBasePlayer;->p(Landroidx/media3/common/SimpleBasePlayer;Lim5;)V

    return-void
.end method
