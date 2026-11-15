.class public final synthetic Lh54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/SimpleBasePlayer$PositionSupplier;


# instance fields
.field public final synthetic a:Landroidx/media3/common/Player;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Player;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh54;->a:Landroidx/media3/common/Player;

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 2

    iget-object p0, p0, Lh54;->a:Landroidx/media3/common/Player;

    invoke-interface {p0}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method
