.class public final synthetic Landroidx/media3/transformer/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/media3/transformer/CompositionPlayerInternal;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Exception;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/transformer/CompositionPlayerInternal;Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/transformer/v;->b:Landroidx/media3/transformer/CompositionPlayerInternal;

    iput-object p2, p0, Landroidx/media3/transformer/v;->c:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/transformer/v;->d:Ljava/lang/Exception;

    iput p4, p0, Landroidx/media3/transformer/v;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/transformer/v;->b:Landroidx/media3/transformer/CompositionPlayerInternal;

    iget-object v1, p0, Landroidx/media3/transformer/v;->c:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/transformer/v;->d:Ljava/lang/Exception;

    iget p0, p0, Landroidx/media3/transformer/v;->e:I

    invoke-static {v0, v1, v2, p0}, Landroidx/media3/transformer/CompositionPlayerInternal;->a(Landroidx/media3/transformer/CompositionPlayerInternal;Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method
