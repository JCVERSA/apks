.class public final Ld7j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lfy0;

.field public b:J


# direct methods
.method public constructor <init>(Lfy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lwd8;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Ld7j;->a:Lfy0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ld7j;->a:Lfy0;

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Ld7j;->b:J

    return-void
.end method
