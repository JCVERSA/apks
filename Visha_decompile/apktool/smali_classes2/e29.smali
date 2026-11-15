.class public final synthetic Le29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field public final synthetic b:Lf29;


# direct methods
.method public synthetic constructor <init>(Lf29;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le29;->b:Lf29;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Le29;->b:Lf29;

    invoke-static {p0, p1}, Lf29;->b(Lf29;Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
