.class public La62$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/Spatializer$OnSpatializerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La62$f;->b(La62;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La62;


# direct methods
.method public constructor <init>(La62$f;La62;)V
    .locals 0

    iput-object p2, p0, La62$f$a;->a:La62;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpatializerAvailableChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p0, p0, La62$f$a;->a:La62;

    invoke-static {p0}, La62;->x(La62;)V

    return-void
.end method

.method public onSpatializerEnabledChanged(Landroid/media/Spatializer;Z)V
    .locals 0

    iget-object p0, p0, La62$f$a;->a:La62;

    invoke-static {p0}, La62;->x(La62;)V

    return-void
.end method
