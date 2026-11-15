.class public final Lkqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# instance fields
.field public final synthetic a:Lrqj;


# direct methods
.method public constructor <init>(Llqj;Lrqj;)V
    .locals 0

    iput-object p2, p0, Lkqj;->a:Lrqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p0, p0, Lkqj;->a:Lrqj;

    invoke-static {p0}, Lrqj;->q(Lrqj;)V

    return-void
.end method

.method public final onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p0, p0, Lkqj;->a:Lrqj;

    invoke-static {p0}, Lrqj;->q(Lrqj;)V

    return-void
.end method
